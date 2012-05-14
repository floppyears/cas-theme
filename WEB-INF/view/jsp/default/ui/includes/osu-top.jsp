<!doctype html>
<%@ page session="true" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
  <head>
    <title>CAS &#8211; Central Authentication Service</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport">    
    <link rel="icon" href="<c:url value="/favicon.ico" />" type="image/x-icon" />
   	<link rel="stylesheet" media="screen" href="<c:url value="/css/less/osu-bootstrap.css" />" /> 
	</head> 
<body>
<!--[if lte IE 7]>
<div class="ie7">
<![endif]-->
<!--[if IE 8]>
<div class="ie8">
<![endif]-->
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-target=".nav-collapse" data-toggle="collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a href="http://oregonstate.edu/" class="brand">Oregon State University</a>
				<div class="nav-collapse">
        	<ul class="nav">
						<li class="no-border"><a href="http://calendar.oregonstate.edu/">Calendar</a></li>
						<li><a href="http://osulibrary.oregonstate.edu/">Library</a></li>
						<li><a href="http://oregonstate.edu/campusmap/">Maps</a></li>
						<li><a href="http://oregonstate.edu/main/online-services">Online Services</a></li>
					</ul>
					<form action="http://search.oregonstate.edu/" method="get" name="gs" class="navbar-search pull-right">
						<input type="text" name="q" id="q" placeholder="Search" class="search-query">
						<i class="icon-search"></i> 
						<input type="hidden" name="client" value="default_frontend" />
					</form>
				</div>
			</div>
    </div>
	</div>
	
	<div class="container">
  	<div class="row-fluid">
			<h1> OSU Central Login</h1>
    </div>		
