<jsp:directive.include file="includes/osu-top.jsp" />
<div class="row-fluid">
  <div class="span8">
    <div class="hero-unit"><p><spring:message code="screen.confirmation.message" arguments="${fn:escapeXml(param.service)}${fn:indexOf(param.service, '?') eq -1 ? '?' : '&'}ticket=${serviceTicketId}" /></p></div>
    </div>
  </div>
  <jsp:directive.include file="includes/osu-sidebar.jsp" />
</div>
<jsp:directive.include file="includes/osu-bottom.jsp" />
