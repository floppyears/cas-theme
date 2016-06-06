<%--

    Licensed to Jasig under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Jasig licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License.  You may obtain a
    copy of the License at the following location:

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page session="true" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<spring:theme code="mobile.custom.css.file" var="mobileCss" text="" />
<!--[if lte IE 7]> <html lang="en" class="ie ie7"> <![endif]-->
<!--[if IE 8]> <html lang="en" class="ie ie8"> <![endif]-->
<!--[if gt IE 8]><!--><html lang="en"><!--<![endif]-->
	<head>
		<title>CAS &#8211; Central Authentication Service</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta content="width=device-width, initial-scale=1.0" name="viewport">    
		<link rel="icon" href="<c:url value="/favicon.ico" />" type="image/x-icon" />
		<link rel="stylesheet" media="screen" href="<c:url value="/css/less/osu-bootstrap.css" />" /> 
	</head>
	<body id="cas"> <!-- might need to remove this ID -->
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
						<li><a href="http://main.oregonstate.edu/">Online Services</a></li>
					</ul>
				</div>
			</div>
		</div>
  	</div>

  	<div class="container">
    	<div class="row-fluid">
		<h1>OSU Login</h1>
	</div>
