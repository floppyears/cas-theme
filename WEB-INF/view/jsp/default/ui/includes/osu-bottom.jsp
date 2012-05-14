<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row-fluid">
	<div class="span4">              
		 <h3>Contact Info</h3>
		 <p>Enterprise Computing Services<br />
			 Oregon State University<br />
			 Corvallis, OR 97331<br />
			 <a href="http://oregonstate.edu/helpdocs/helpdesk">Contact us with  your comments and questions</a><br />
			 541-737-3474
		 </p>
		 <p><a href="http://oregonstate.edu/copyright">Copyright</a>&nbsp;&copy;&nbsp;2012<br />
			 Oregon state University<br />
			 <a href="http://oregonstate.edu/disclaimer">Disclaimer</a>
		 </p>      
		 <p>Powered by <a href="http://www.jasig.org/cas">Jasig Central Authentication Service <%=org.jasig.cas.CasVersion.getVersion()%></a></p>
	</div>
  <div class="span4">
    <h3>Helpful Links</h3>
          <ul id="help-links">
            <li><a href="http://onid.oregonstate.edu/chpw.shtml">Help, I forgot my password</a></li>
            <li><a href="http://oregonstate.edu/helpdocs/onid/signup">Create or activate ONID account</a></li>
            <li><a href="http://oregonstate.edu/helpdocs/onid">Need help logging in</a></li>
          </ul>
  </div>
  <div class="span4">
    <a href="http://oregonstate.edu/registrar/transcripts"><img src="images/transcript.jpg" alt="Need a Transcript"></a>
    <p>Former student? Need a transcript?</p>
  </div>
</div> <!-- end row-fluid -->
</div> <!-- end container div from osutop -->

<!--[if lte IE 8]>
</div>
<![endif]-->

  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.5/jquery-ui.min.js"></script>
  <script type="text/javascript" src="<c:url value="/js/less-1.3.0.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/js/cas.js" />"></script>
	<script type="text/javascript" src="<c:url value="/js/bootstrap-collapse.js" />"></script>
	<script type="text/javascript" src="<c:url value="/js/osu-cws.js" />"></script>
</body>
</html>

