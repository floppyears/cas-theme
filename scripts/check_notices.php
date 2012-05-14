<?php
/** check_feeds.php v. 0.1
 * @author Kenneth Lett
 * @author Andy Morgan
 *
 * Checks various feeds for new content, writes out a <ul> of items to
 * a file
 */

if ( (! isset($_SERVER['argc'])) or ($_SERVER['argc'] < 2) ) {
	print "Usage: " . $_SERVER['argv'][0] . " <output-filename>\n";
	print "  Fetches the Alerts and Outages RSS feeds and outputs\n";
	print "  an HTML formatted version for CAS to include.\n";
	exit;
}

$filename = $_SERVER['argv'][1];
$image_path = "images";

// an array of feeds to check, they will be rendered in the order in which they
// appear in this array
$feeds_to_check = 
  array(
    'alerts' => array(
        'display_title' => "Alerts",
        // dev URL for testing
        //'url' => 'http://w0.cws.oregonstate.edu/osuhomepage/data/alertsRSS-1.xml',
        'url' => 'http://oregonstate.edu/osuhomepage/data/alertsRSS-1.xml',
        'max_to_show' => 5, // show up to this many items
        'display_empty' => false, // whether to show the block at all if there are no items
        'read_more_link' => 'http://alert.oregonstate.edu'),
    'outages' => array(
        'display_title' => "What's Up, What's Down?", 
        'url' => 'http://intranet.net.oregonstate.edu/blog/feed',
        'max_to_show' => 5,
        'display_empty' => true,
        'empty_message' => "There are no current outages", // message to display when feed is empty
        'read_more_link' => 'http://intranet.net.oregonstate.edu/blog/archives/category/enterprise-network/outage-announcements')
  );


$output = '<div id="notices-block">' . "\n";

// for each feed, fetch the data and construct a div and ul to hold it
foreach ($feeds_to_check as $title => $feed) {
  $data = get_feed_data($feed);
  $output .= '<div id="' . $title . '" class="notices">' . "\n";

  if (!$data) {
    if ($feed['display_empty']) {
      $output .= '<h2>' . $feed['display_title'] . '</h2>' . "\n";
      $output .= '<div class="notices-body">' . "\n";
      $output .= $feed['empty_message'] . "\n";
      $output .= '</div>' . "\n";
    }
    $output .=  '</div>' . "\n";
  } else {
    $output .=  '<h2>' . $feed['display_title'] . '</h2>' . "\n";
    $output .=  '<div class="notices-body">' . "\n";
    $output .=    '<a href="' . $feed['url'] . '">' ;
    $output .=      '<img src="' . $image_path . '/rss_icon.png" class="notices-rss-icon" alt="';
    $output .=          $feed['display_title'] . ' rss feed">';
    $output .=    '</a>' . "\n";
    $output .=    '<ul class="notice-list">' . "\n";
    $items = 0;
    foreach ($data as $item) {
      // exit loop when we reach our maximum number of items to show
      if ($items == $feed['max_to_show']) { break; }
      $items++;

      $output .=    '<li>';
      $output .=      '<a href="' . $item['link'] . '">';
      $output .=        $item['title'];
      $output .=      '</a>';
      $output .=    '</li>' . "\n";
    }
    $output .=  '</ul>' . "\n";
    if (isset($feed['read_more_link'])) {
      $output .= '<a href="' . $feed['read_more_link'] . '" class="view-more">view more</a>';
    }
    $output .= '</div>' . "\n";
    $output .= '</div>' . "\n";
  }
}

$output .= '</div>' . "\n";

if(!save_file($output, $filename)) {
  print "Failed to save file!" . $filename;  
}


/** 
 * get_feed_data - fetch the rss data
 * @param array $feed - an array describing the feed, needs to include the url
 * of the feed
 */ 
function get_feed_data($feed) {
    $data = array();
    $items = 0;
    $xml_source = file_get_contents($feed['url']);
    if (!$xml_source) {
      die("Could not fetch RSS data from " . $feed['url'] . ", possible network error or missing feed");
    }
    $feed_contents = simplexml_load_string($xml_source);

    if(!$feed_contents) {
      die("Could not interpret RSS data from " . $feed['url'] . "Please check feed contents.");
    }

  foreach($feed_contents->channel->item as $item) {
    $items++;
    // Create summary as a shortened body and remove images, extraneous line breaks, etc.
    $summary = (string) $item->description;
    $summary = eregi_replace("<img[^>]*>", "", $summary);
    $summary = eregi_replace("^(<br[ ]?/>)*", "", $summary);
    $summary = eregi_replace("(<br[ ]?/>)*$", "", $summary);

    $title = (string) $item->title;
    $title = strip_tags($title);

     // replace horizontal tabs with spaces
     $title = preg_replace('/[\x09]/',' ', $title);
     $summary = preg_replace('/[\x09]/',' ', $summary);

    // strip out non-ascii characters, replace them with ""
    $title = preg_replace('/[^(\x20-\x7E)]+/','', $title);
    $summary = preg_replace('/[^(\x20-\x7E)]+/','', $summary);
     
    $data[] = array (
                'pubDate' => (string) $item->pubDate,
                'link' => (string) $item->link,
                'title' => $title,
                'description' => (string) $summary
              );
  }
  if($items == 0) {
    return false;
  }
  return $data;
}

/**
 * save_file - save the given string to a file with the given filename
 * @param string $output - the html string to write
 * @param string $filename - the name, including path, of the file to write to
 */ 
function save_file ($output, $filename) {
  if(empty($output)) { 
    return;
  }

  $fp = fopen($filename, 'w');
  $success = fwrite($fp, $output);
  fclose($fp);
  return $success;
}
