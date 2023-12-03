<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	type="text/javascript"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	type="text/javascript"></script>

<style type="text/css">
.container {
	padding: 20px;
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

.container h1 {
	font-size: 2em;
	margin-bottom: 10px;
}

.container p {
	margin-bottom: 20px;
	line-height: 1.5;
}

.carousel-control-prev-icon, .carousel-control-next-icon {
	background-color: black;
}
</style>

<div class="container">
	<img class="me2" src="me.jpg" alt="Marcin Pasynczuk">
	<div>
		<h1>Marcin Pasynczuk</h1>


<p>Hello, I am Marcin Pasynczuk, a passionate Junior Java Developer based in London, UK. My journey is unique as it began in the realm of hospitality industry management. As a manager in this sector, I led various operational and financial ventures, fostering invaluable relationships along the way. This experience honed my analytical thinking, problem-solving abilities, leadership, and adaptability - attributes that I believe are vital in the field of software development.</p>
		<p>In 2023, I decided to follow my passion for programming and
			sold my company. Since then, I have been diving deep into the world
			of Java development while pursuing my Bachelor's degree in Computer
			Science. Balancing my studies and hands-on experience, I'm becoming
			proficient in Java, Spring Framework and many other technologies.</p>
		<p>My current journey is filled with continuous learning,
			implementing, and improving. Along with my courses, I have worked on
			several Java-based web applications, such as Hospitoolity and the
			recruitment platform for my company. These projects have been
			instrumental in strengthening my skills and expanding my
			understanding of the Java ecosystem.</p>

		<p>I am eager to bring my unique blend of entrepreneurial and
			software development skills to a new challenge. If you are looking
			for a dedicated, detail-oriented, and ambitious Junior Java
			Developer, I'd love to connect with you.</p>

		<div id="carouselExampleControls" class="carousel slide flex"
			data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100" src="certificates/1.jpg"
						alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="certificates/2.jpg"
						alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="certificates/3.jpg"
						alt="Third slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="certificates/4.jpg"
						alt="Third slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="certificates/5.jpg"
						alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleControls"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleControls"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>

	</div>
</div>

<%@ include file="common/footer.jspf"%>