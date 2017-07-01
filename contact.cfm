<cfinclude template="./includes/header.cfm" >

<div id="contactDiv">
	<form id="contactForm" action="processContactForm.cfm" method="post">
		<p>Name:</p><input type="text" name="contactUsername" required="true" />
		<p>Email:</p><input type="text" name="contactEmail" required="true" />
		<p>Message:</p><textarea name="commentBox" draggable="false"  required="true" maxlength="250" autofocus="true" ></textarea>
		<input type="submit" name="submit" id="submitContact" />
	</form>
	
</div>

<cfinclude template="./includes/footer.cfm" >