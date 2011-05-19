<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:directive.include file="includes/top.jsp" />
			<form:form method="post" id="fm1" cssClass="fm-v clearfix" commandName="${commandName}" htmlEscape="true">
			    <form:errors path="*" cssClass="errors" id="status" element="div" />
                <div class="box" id="login">
                    <h2>Enter your ONID username and password to login:</h2>
                    <div class="row">
                        <label for="username">ONID <span class="accesskey">U</span>sername:</label>
						<c:if test="${not empty sessionScope.openIdLocalId}">
						<strong>${sessionScope.openIdLocalId}</strong>
						<input type="hidden" id="username" name="username" value="${sessionScope.openIdLocalId}" />
						</c:if>
						
						<c:if test="${empty sessionScope.openIdLocalId}">
						<form:input cssClass="required" cssErrorClass="error" id="username" size="25" tabindex="1" accesskey="u" path="username" autocomplete="false" htmlEscape="true" />
						</c:if>
                    </div>
                    <div class="row">
                        <label for="password">ONID <span class="accesskey">P</span>assword:</label>
						<%--
						NOTE: Certain browsers will offer the option of caching passwords for a user.  There is a non-standard attribute,
						"autocomplete" that when set to "off" will tell certain browsers not to prompt to cache credentials.  For more
						information, see the following web page:
						http://www.geocities.com/technofundo/tech/web/ie_autocomplete.html
						--%>
						<form:password cssClass="required" cssErrorClass="error" id="password" size="25" tabindex="2" path="password"  accesskey="p" htmlEscape="true" autocomplete="off" />
                    </div>
                    <div class="row check">
                        <input id="warn" name="warn" value="true" tabindex="3" accesskey="w" type="checkbox" />
                        <label for="warn"><span class="accesskey">W</span>arn me before logging me into other sites.</label>
                    </div>
                    <div class="row btn-row">
						<input type="hidden" name="lt" value="${flowExecutionKey}" />
						<input type="hidden" name="_eventId" value="submit" />

                        <input class="btn-submit" name="submit" accesskey="l" value="Login" tabindex="4" type="submit" />
                    </div>
                </div>
               
		<ul id="help-links">
		    <li><a href="http://oregonstate.edu/helpdocs/onid/signup">Create or activate ONID account</a></li>
		    <li><a href="http://oregonstate.edu/helpdocs/onid">Need help logging in</a></li>
		</ul>
        	</form:form>
<jsp:directive.include file="includes/bottom.jsp" />
