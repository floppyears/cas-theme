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
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <div class="row-fluid">
  	<div class="span4">              
  		 <h3>Contact Info</h3>
  		 <p>Enterprise Computing Services<br />
  			 Oregon State University<br />
  			 Corvallis, OR 97331<br />
  			 <a href="http://oregonstate.edu/is/tss/och/helpdesk">Contact us with  your comments and questions</a><br />
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

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.5/jquery-ui.min.js"></script>
<script type="text/javascript" src="<c:url value="/js/cas.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/bootstrap-collapse.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/osu-cws.js" />"></script>

</body>
</html>

