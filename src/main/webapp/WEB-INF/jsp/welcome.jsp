<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
<script src="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
		// Initialize AOS
    	AOS.init();
	});
</script>
<style type="text/css">

.carousel-control-prev-icon, .carousel-control-next-icon {
	background-color: black;
	}
.container2 {
  margin-right: 5px;
  margin-left: 5px;
}

.me2 {
	max-width: 30%;
	height: auto;
	border: 5px solid #61dafb;
	border-radius: 50%;
	box-shadow: 0 0 10px #61dafb;
	float: left;
	margin-right: 20px;
}
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

.container2 h1 {
	font-size: 2em;
	margin-bottom: 10px;
}

.container2 p {
	margin-bottom: 20px;
	line-height: 1.5;
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
		font-size: 2.5em;
	}
	.gamer-navbar .navbar-brand {
		padding: 1rem 2rem !important;
	}
	.gamer-navbar .nav-link {
		padding: 1rem 2rem !important;
	}
	.gamer-navbar .navbar-toggler {
		font-size: 2.5em !important;
	}
}

.no-break {
	white-space: nowrap;
}

@media (min-width: 1200px) {
    .carousel {
        width: 50%;
        margin: 0 auto;
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
	<img class="me2" src="me.jpg" alt="Marcin Pasynczuk" data-aos="fade-right" data-aos-duration="1000">
	<div>
		<h1>Marcin Pasynczuk</h1>

<p>Hello, I am Marcin Pasynczuk, a passionate Junior Java Developer based in London, UK. My journey is unique as it began in the realm of hospitality industry management. As a manager in this sector, I led various operational and financial ventures, fostering invaluable relationships along the way. This experience honed my analytical thinking, problem-solving abilities, leadership, and adaptability - attributes that I believe are vital in the field of software development.</p>
<p>In 2022, I decided to pursue my passion for programming. Since then, I have been immersing myself in the world of Java development while pursuing my Bachelor's degree in Computer Science. Balancing my studies with hands-on experience, I am gaining proficiency in Java, Spring Framework, and many other technologies.</p>
<p>My current journey is marked by continuous learning, implementation, and improvement. Alongside my courses, I have worked on several Java-based web applications, such as Hospitoolity and a recruitment platform. These projects have been pivotal in bolstering my skills and broadening my understanding of the Java ecosystem.</p>
<p>I am keen to bring my unique blend of managerial and software development skills to a new challenge. If you are looking for a dedicated, detail-oriented, and ambitious Junior Java Developer, I'd love to connect with you.</p>

<div id="carouselExampleControls" class="carousel slide" data-ride="carousel" data-aos="fade-left" data-aos-duration="1000">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" src="certificates/1.jpg" alt="First slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="certificates/2.jpg" alt="Second slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="certificates/3.jpg" alt="Third slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="certificates/4.jpg" alt="Fourth slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="certificates/5.jpg" alt="Fifth slide">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

	</div>
</div>
<br>
<br>
</body>
 <footer class="bg-dark text-white py-3">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<p>© 2023 Marcin Pasynczuk</p>
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