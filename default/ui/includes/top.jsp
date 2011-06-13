<%@ page session="true" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
	<head>
	    <title>OSU Central Login</title>
	    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	    <link rel="stylesheet" media="all" type="text/css" href="css/reset-min.css" />
	    <link rel="stylesheet" media="all" type="text/css" href="css/fonts-context-min.css" />
	    <link rel="stylesheet" media="all" type="text/css" href="css/grids-min.css" />
	    <link rel="stylesheet" media="all" type="text/css" href="css/application.css" />
	    <link rel="stylesheet" media="all" type="text/css" href="css/check_notices.css" />
	    <!-- <link rel="stylesheet" media="all" type="text/css" href="css/cas.css" />-->
	    <!--[if gte IE 6]><style type="text/css" media="screen">@import 'css/ie_cas.css';</style><![endif]-->
	    <script type="text/javascript" src="js/common_rosters.js"></script>
	    <link rel="icon" href="<%= request.getContextPath() %>/favicon.ico" type="image/x-icon" />
	</head>

	<body id="cas" onload="init();">
            <div id="hd-wrap">
              <div id="hd"> 
                <div class="yui3-g">
                  <div class="yui3-u-1-2">
                    <div class="osu-branding">
                      <ul class="float-left">
                        <li class="osu-header"><a href="http://oregonstate.edu/">Oregon State University</a></li> 
                        <li class="no-border"><a href="http://calendar.oregonstate.edu/">Calendar</a></li>

                        <li><a href="http://osulibrary.oregonstate.edu/">Library</a></li>
                        <li><a href="http://oregonstate.edu/campusmap/">Maps</a></li>
                        <li><a href="http://oregonstate.edu/main/online-services">Online Services</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div id="app_title">
                  <h1>OSU Central Login</h1>
                </div>

              </div><!-- /hd -->
            </div><!-- /hd-wrap -->

	    <div id="bd">
	        <div id="yui3-g">
		    <div id="left-content" class="yui3-u">
		        <div id="content">
