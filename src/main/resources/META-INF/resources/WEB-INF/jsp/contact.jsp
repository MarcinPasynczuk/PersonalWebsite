<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#contactForm").on("submit", function(event) {
			event.preventDefault();
			console.log("Submitting form...");

			var name = $("#name").val();
			var email = $("#email").val();
			var message = $("#message").val();

			$.ajax({
				url : "/sendMail",
				type : "GET",
				data : {
					name : name,
					email : email,
					message : message
				},
				success : function(response) {
					window.location.href = "/thanksmail";
				},
				error : function(xhr, status, error) {
					alert("Something went wrong!");
				}
			});
		});
	});
</script>
<div class="container">
	<h1 class="text-center mb-4">Contact me</h1>
	<div class="row">
		<div class="col-md-5">


			<form id="contactForm" action="">
				<div class="form-group">
					<label for="name">Name</label> <input type="text"
						class="form-control" id="name" placeholder="Enter your name"
						required minlength="2" maxlength="50">
					<div class="invalid-feedback">Please enter a valid name.</div>
				</div>
				<div class="form-group">
					<label for="email">Email address</label> <input type="email"
						class="form-control" id="email" placeholder="Enter your email"
						required>
					<div class="invalid-feedback">Please enter a valid email
						address.</div>
				</div>
				<div class="form-group">
					<label for="message">Message</label>
					<textarea class="form-control" id="message" rows="5" required
						minlength="10" maxlength="500" cols=""></textarea>
					<div class="invalid-feedback">Please enter a valid message.</div>
				</div>
				<button type="submit" class="btn btn-primary" id="sendButton">Send</button>
			</form>





		</div>
		<div class="col-md-1"></div>
		<div class="col-md-5" style="margin-top: 4em;">

			<div class="text-left">
				<p>Phone: +44 7480 545488</p>
				<p>Email: office@hospitoolity.com</p>
				<p>
					<a href="https://www.linkedin.com/in/marcin-pasynczuk-a98023131/"
						style="color: black">LinkedIn Profile</a>
				</p>
				<p>
					<a href="https://github.com/MarcinPasynczuk" style="color: black">GitHub</a>
				</p>
				<p></p>
			</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jspf"%>