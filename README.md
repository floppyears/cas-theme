Oregon State University CAS Theme
=================================

Production Installation Instructions
-------------------------

To install, we just need to copy over all the files modified except the ones
with a .less extension and the JS compiler for LESS. Here is a summarized list:

### Modified Files (overwrite existing files)
* WEB-INF/view/jsp/default/ui/casConfirmView.jsp
* WEB-INF/view/jsp/default/ui/casGenericSuccess.jsp
*	WEB-INF/view/jsp/default/ui/casLoginView.jsp
*	WEB-INF/view/jsp/default/ui/casLogoutView.jsp
*	WEB-INF/view/jsp/default/ui/serviceErrorView.jsp
*	WEB-INF/view/jsp/default/ui/serviceErrorSsoView.jsp


### New Files (required to copy)

* WEB-INF/view/jsp/default/ui/includes/osu-bottom.jsp
* WEB-INF/view/jsp/default/ui/includes/osu-sidebar.jsp
* WEB-INF/view/jsp/default/ui/includes/osu-top.jsp
* css/fonts/Eksja-bold-webfont.eot
* css/fonts/Eksja-bold-webfont.svg
* css/fonts/Eksja-bold-webfont.ttf
* css/fonts/Eksja-bold-webfont.woff
* css/fonts/Eksja-regular-webfont.eot
* css/fonts/Eksja-regular-webfont.svg
* css/fonts/Eksja-regular-webfont.ttf
* css/fonts/Eksja-regular-webfont.woff
* css/fonts/Eksja-thin-webfont.eot
* css/fonts/Eksja-thin-webfont.svg
* css/fonts/Eksja-thin-webfont.ttf
* css/fonts/Eksja-thin-webfont.woff
* css/less/osu-bootstrap.css
* images/glyphicons-halflings-white.png
* images/glyphicons-halflings.png
* images/transcript.jpg
* js/bootstrap-collapse.js
* js/osu-cws.js


Development Environment Overview
--------------------

### Files Modified

* WEB-INF/view/jsp/default/ui/casConfirmView.jsp
* WEB-INF/view/jsp/default/ui/casGenericSuccess.jsp
*	WEB-INF/view/jsp/default/ui/casLoginView.jsp
*	WEB-INF/view/jsp/default/ui/casLogoutView.jsp
*	WEB-INF/view/jsp/default/ui/serviceErrorView.jsp
*	WEB-INF/view/jsp/default/ui/serviceErrorSsoView.jsp


### Files Added

* WEB-INF/view/jsp/default/ui/notice_feeds.html (only for testing, do not copy to production)
* WEB-INF/view/jsp/default/ui/includes/osu-bottom.jsp
* WEB-INF/view/jsp/default/ui/includes/osu-sidebar.jsp
* WEB-INF/view/jsp/default/ui/includes/osu-top.jsp
* css/fonts/Eksja-bold-webfont.eot
* css/fonts/Eksja-bold-webfont.svg
* css/fonts/Eksja-bold-webfont.ttf
* css/fonts/Eksja-bold-webfont.woff
* css/fonts/Eksja-regular-webfont.eot
* css/fonts/Eksja-regular-webfont.svg
* css/fonts/Eksja-regular-webfont.ttf
* css/fonts/Eksja-regular-webfont.woff
* css/fonts/Eksja-thin-webfont.eot
* css/fonts/Eksja-thin-webfont.svg
* css/fonts/Eksja-thin-webfont.ttf
* css/fonts/Eksja-thin-webfont.woff
* css/less/accordion.less
* css/less/alerts.less
* css/less/badges.less
* css/less/bootstrap.less
* css/less/breadcrumbs.less
* css/less/button-groups.less
* css/less/buttons.less
* css/less/carousel.less
* css/less/close.less
* css/less/code.less
* css/less/component-animations.less
* css/less/dropdowns.less
* css/less/forms.less
* css/less/grid.less
* css/less/hero-unit.less
* css/less/labels.less
* css/less/layouts.less
* css/less/mixins.less
* css/less/modals.less
* css/less/navbar.less
* css/less/navs.less
* css/less/osu-bootstrap.css
* css/less/osu-cws.less
* css/less/pager.less
* css/less/pagination.less
* css/less/popovers.less
* css/less/progress-bars.less
* css/less/reset.less
* css/less/responsive.less
* css/less/scaffolding.less
* css/less/sprites.less
* css/less/tables.less
* css/less/thumbnails.less
* css/less/tooltip.less
* css/less/type.less
* css/less/utilities.less
* css/less/variables.less
* css/less/wells.less
* images/glyphicons-halflings-white.png
* images/glyphicons-halflings.png
* images/rss_icon.png
* images/transcript.jpg
* js/bootstrap-collapse.js
* js/less-1.3.0.min.js
* js/osu-cws.js


Development Information
-----------------------

The following files should be modified:

* WEB-INF/view/jsp/default/ui/includes/osu-top.jsp
* WEB-INF/view/jsp/default/ui/includes/osu-bottom.jsp

Here you'll need to reference:

* css/less/bootstrap.less (top)
* js/less-1.3.0.min.js  (bottom)

Both of these files allows you to modify and see changes as you work on the theme. 
`bootstrap.less` compiles all the .less files, while `less-1.3.0.min.js` compiles 
them on page load.

Most if not all your CSS changes belong on:

* css/less/osu-cws.less

The one and only CSS file that gets loaded by `osu-top.jsp` is:

* css/less/osu-bootstrap.css (which is the compilation of all less files)

Due to how the JS compiler works though, you will have to modify absolute paths
before putting it live. So as opposed to something like:

* `url(http://cas-url:8080/cas-server-webapp-3.4.11/css/less/../../images/glyphicons-halflings-white.png);`

You will see:

* `url(../../images/glyphicons-halflings-white.png);`

There should only be about 6 such instances. The main areas of concern are the images referenced in the CSS file
and the web fonts used - Eksja in particular.


Production Information
-----------------------

Check this file:

* WEB-INF/view/jsp/default/ui/includes/osu-top.jsp
* WEB-INF/view/jsp/default/ui/includes/osu-bottom.jsp

If the following references are present, you'll need to remove them:

* css/less/bootstrap.less (top)
* js/less-1.3.0.min.js (bottom)
