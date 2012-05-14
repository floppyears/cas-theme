<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
    for additional information regarding copyright ownership.
    Jasig licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License. You may obtain a
    copy of the License at:

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on
    an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied. See the License for the
    specific language governing permissions and limitations
    under the License.
    
    MAURICIO: 
    feeds on right: <jsp:directive.include file="notice_feeds.html" />
    
--%>


<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:directive.include file="includes/osu-top.jsp" />
<div class="row-fluid" id="login">
  <div class="span8">
   <c:if test="${not pageContext.request.secure}">
     <div class="alert alert-error">
       <strong>Non-secure connection warning.</strong> You are currently accessing CAS over a non-secure connection.  Single Sign On WILL NOT WORK.  In order to have single sign on work, you MUST log in over HTTPS.
     </div>
  </c:if> 
    <form:form method="post" id="" cssClass="form-horizontal" commandName="${commandName}" htmlEscape="true">
      <form:errors path="*" id="msg" cssClass="alert alert-error" element="div" />
        <!-- <spring:message code="screen.welcome.welcome" /> -->
        <fieldset>
          <legend>Enter your ONID username and password to login:</legend>
        
          <div class="control-group">
            <label for="username" class="control-label">ONID <spring:message code="screen.welcome.label.netid" /></label>
            <div class="controls">
              <c:if test="${not empty sessionScope.openIdLocalId}">
                <strong>${sessionScope.openIdLocalId}</strong>
                <input type="hidden" id="username" name="username" value="${sessionScope.openIdLocalId}" />
              </c:if>

              <c:if test="${empty sessionScope.openIdLocalId}">
                <spring:message code="screen.welcome.label.netid.accesskey" var="userNameAccessKey" />
                <form:input cssClass="required" cssErrorClass="error" id="username" size="25" tabindex="1" accesskey="${userNameAccessKey}" path="username" autocomplete="false" htmlEscape="true" />
              </c:if>
            </div>
          </div>
          
          <div class="control-group">
            <label for="password" class="control-label">ONID <spring:message code="screen.welcome.label.password" /></label>
              <%--
              NOTE: Certain browsers will offer the option of caching passwords for a user.  There is a non-standard attribute,
              "autocomplete" that when set to "off" will tell certain browsers not to prompt to cache credentials.  For more
              information, see the following web page:
              http://www.geocities.com/technofundo/tech/web/ie_autocomplete.html
              --%>
            <div class="controls">
              <spring:message code="screen.welcome.label.password.accesskey" var="passwordAccessKey" />
              <form:password cssClass="required" cssErrorClass="error" id="password" size="25" tabindex="2" path="password"  accesskey="${passwordAccessKey}" htmlEscape="true" autocomplete="off" />
            </div>
          </div>
                
          <div class="control-group">
            <div class="controls">
              <label for="warn" class="checkbox">
                <input id="warn" name="warn" value="true" tabindex="3" accesskey="<spring:message code="screen.welcome.label.warn.accesskey" />" type="checkbox" />
                <spring:message code="screen.welcome.label.warn" />
              </label>
            </div>
          </div>
                
          <div class="form-actions">
            <input type="hidden" name="lt" value="${loginTicket}" />
            <input type="hidden" name="execution" value="${flowExecutionKey}" />
            <input type="hidden" name="_eventId" value="submit" />

            <input class="btn btn-primary" name="submit" accesskey="l" value="<spring:message code="screen.welcome.button.login" />" tabindex="4" type="submit" />
            <input class="btn" name="reset" accesskey="c" value="<spring:message code="screen.welcome.button.clear" />" tabindex="5" type="reset" />
          </div>
        </fieldset>
      </form:form>
    </div> <!-- span 8 close -->
    <jsp:directive.include file="includes/osu-sidebar.jsp" />  
</div><!-- row closed -->
<jsp:directive.include file="includes/osu-bottom.jsp" />

