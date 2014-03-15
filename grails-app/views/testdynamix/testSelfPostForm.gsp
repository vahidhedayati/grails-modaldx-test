
		<meta name="layout" content="main"/>
		
		
		<h1>ModalBox calling a Self Posting Form :   Function wrap around your form + form action</h1>
		
		
		<!--  Default Modal button to load up modal page - notice the HREF  -->
		<!--  ModalDynamix matches actual modal form loaded up in modalcreate gsp -->
		<!--  the SPECIALFORM matches ID of g:modalForm -->
		<!--  The only thing different is the onClick -->
		<!--  which runs custom java script that does two things -->
		<!--  clones MySelfPostDiv1 (content) + shows MySelfPostDiv1 -->
		<!--  the show is required for when you open/close modal pages -->
		
		
		<!--  TEST SELF POST FORM REQUIRES FORM TAGS  -->
		<!--  YOU NEED ENTIRE FORM PAGE AND ACTIONS  -->
		
		
		<!-- /myLocalDomain/formSelfPost = modalTemplatePage holds entire form -->
		<!--  the form config is coming from this taglib below, but if you wanted you could remove the complexity  -->
		<!--  from the taglib i.e. not define it and just declare as per default gsp -->
		
		<button href="#ModalDynamixSELFPOST" class="btn btn-block btn-success" 
		role="button" data-toggle="modal"  onclick="runSelfFormButtonCheck()" title="Create New MyUser">
 		Generate New MyUser Remote Form Example?</button>
 		

 	 	
 		<!--  now lets load up the top java script which just runs the above onclick  -->
 		<!--  and shows MyDiv1 -->
 		<g:showTopScript scriptName="runSelfFormButtonCheck" divId="MySelfPostDiv1" />
 		
 		
 		<!--  MySelfPostDiv1 could and should be your own naming convention and MUST be different per any set -->
 		<!--  its the secondary to actual DIV below called MySelfPostDiv -->
 		<!--  this is basically your modal FORM Page  -->
 		<!--  so Top div is always bottom with it ending with numeric1 -->
 		<!--  inside it it loads /path/to/ACTUAL DIV_NAME ENDING WITH Form -->
 		<!--  so divId1 has a template called actual divname and ends with Form -->
 		<!--  this is a template file in this path on your local project that you have named as above -->
 		<!--  inside it is your form - take a look at this examples one to better understand -->
 		

		<b>Both Divs below have to load in templates, because upon refresh those very templates are called on</b><br><br>
 		
 		<div id="MySelfPostDiv1">
			<g:render template='/testdynamix/MySelfPostDivForm' />
 		</div>
 		
 
 		<!--  The buttons must be kept outside of actual form - otherwise you are conflicting two form tags -->
 		<br/><br>
 		<h1>ACTUAL FORM</h1>
 		
 		
 		<!--  Main FORM on this page that will be doing core function -->
 		<g:form name="mynextForm" action="step2">
 		
 		<!-- Core Div related to above loader - notice the loader is outside of the form tags of this one -->
 		<!--  MyDiv could and should be your own naming convention and MUST be different per any set -->
 		 
 		<div id="MySelfPostDiv">
 			<!--  PLEASE NOTE THIS NOW MATCHES UP WITH divId+'DISPLAY' added within plugin -->
 			<!--  always ensure the render page and returnController above match actual URL in this MySelfPostDiv call  -->
 			<!--  this needs to render since the plugin will render the same page upon update -->
 			<g:render template='/testdynamix/MySelfPostDivDisplay' />
 		</div>
 		
 		
 		<!--  Demo field nothing to do with exercise -->
 		<label>Field 1: showing nothing is changing</label>
 		<input type=text name="abc" value="Put something in here and add value"/>
 		
 		
 		
 		
 		</g:form>
 		
 		
 		