<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<my:useFunctions />
<html>
<head>
<meta charset="UTF-8">
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css" rel="stylesheet">
<title>Marcin Pasynczuk Website</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" type="text/javascript"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// Smooth scrolling for navbar links
    	$(".navbar a").on('click', function(event) {
      		if (this.hash !== "") {
        		event.preventDefault();
        		var hash = this.hash;
        		$('html, body').animate({
          			scrollTop: $(hash).offset().top
        		}, 800, function(){
          			window.location.hash = hash;
        		});
      		}
    	});
		
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

		// Initialize AOS
    	AOS.init();
	});
</script>
<meta charset="UTF-8">
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css"
	rel="stylesheet">
<title>Marcin Pasynczuk Website</title>

<style type="text/css">
body {
	padding-bottom: env(safe-area-inset-bottom);
	min-height: 100vh;
	position: relative;
	background: #fff;
}

footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	height: 70px;
	background-color: #f8f9fa;
	box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.2);
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 18px;
	color: #6c757d;
}

.container2 {
	margin-right: 15px !important;
	margin-left: 15px !important;
	font-size: 16px;
}

@media ( max-width : 1000px) {
	.container2 {
		font-size: 30px;
	}
}

.gamer-navbar {
	background-color: #504170;
	font-size: 1.5em;
}

.gamer-navbar .navbar-brand {
	padding: 0.5rem 1rem !important;
	color: #61dafb;
	text-shadow: 0 0 5px #61dafb;
	transition: color 0.3s ease;
}

.gamer-navbar .navbar-brand:hover {
	color: #fff;
}

.gamer-navbar .nav-link {
	padding: 0.5rem 1rem !important;
	color: #fff;
	position: relative;
	transition: color 0.3s ease;
}

.gamer-navbar .nav-link:hover {
	color: #61dafb !important;
}

.gamer-navbar .nav-link:before {
	content: "";
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
	height: 2px;
	background-color: #61dafb;
	transform: scaleX(0);
	transition: transform 0.3s ease;
}

.gamer-navbar .nav-link:hover:before {
	transform: scaleX(1);
}

.gamer-navbar .navbar-toggler {
	font-size: 1.5em !important;
	color: #61dafb !important;
	border-color: #61dafb !important;
}

@media screen and (max-width: 768px) {
	.gamer-navbar {
		font-size: 2.5em; /* Zwiększenie rozmiaru czcionki */
	}
	.gamer-navbar .navbar-brand {
		padding: 1rem 2rem !important; /* Zwiększenie paddingu */
	}
	.gamer-navbar .nav-link {
		padding: 1rem 2rem !important; /* Zwiększenie paddingu */
	}
	.gamer-navbar .navbar-toggler {
		font-size: 2.5em !important; /* Zwiększenie rozmiaru ikony */
	}
}

.no-break {
	white-space: nowrap;
}

@media ( max-width : 1000px) {
	.contact-details {
		order: 2;
		margin-top: 20px;
	}
	#div {
		background: #F5F5F5;
	}
}

.container2 {
  margin-right: 10px;
  margin-left: 10px;
}

.no-break {
    white-space: nowrap;
  }
  @media (max-width: 1000px) {
  .contact-details {
    order: 2;
    margin-top: 20px;
  }
}
</style>
</head>


<body>
<nav class="navbar navbar-expand-md navbar-light mb-3 p-1 text-lg gamer-navbar">
	<a class="navbar-brand gamer-navbar"
		href="https://www.linkedin.com/in/marcin-pasynczuk-a98023131/">Marcin Pasynczuk</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="/"
				style="color: #fff;">About me</a></li>
			<li class="nav-item"><a class="nav-link" href="/portfolio"
				style="color: #fff;">Portfolio</a></li>
			<li class="nav-item"><a class="nav-link" href="/contact"
				style="color: #fff;">Contact me</a></li>
		</ul>
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="/downloadCV"
				style="color: #fff;">Download my CV</a></li>
		</ul>
	</div>
</nav>


<div class="container2" data-aos="fade-up" data-aos-duration="1000">
	<h1 class="text-center mb-4">Contact me</h1>
	<div class="row">
		 <div class="col-md-12 col-lg-7" data-aos="fade-right" data-aos-duration="1000">
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
     	<div class="col-lg-3 col-md-12" data-aos="fade-left" data-aos-duration="1000">
			<div class="text-left">
				<p class="no-break">Phone: +44 7480 545488</p>
				<p>Email: marcin.pasynczuk@gmail.com</p>
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



</body>



 <footer class="bg-dark text-white py-3">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<p>� 2023 Marcin Pasynczuk</p>
			</div>
			<div class="col-md-6 text-right">
				<p>
					<a href="https://github.com/MarcinPasynczuk" style="color: white;">GitHub
						Account</a> | <a
						href="https://www.linkedin.com/in/marcin-pasynczuk-a98023131/"
						style="color: white;">Linkedin Account</a>
				</p>
			</div>
		</div>
	</div>
</footer>
</html>