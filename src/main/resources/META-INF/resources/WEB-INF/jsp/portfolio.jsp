<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<h1 class="text-center mb-4">Portfolio</h1>
	<div class="tabs">
		<ul class="nav nav-tabs">
			<li class="nav-item"><a class="nav-link active"
				href="#mealmarJobs">Recruitment Platform - MealmarJobs</a></li>
			<li class="nav-item"><a class="nav-link" href="#hospitoolity">Hospitoolity.com</a></li>
			<li class="nav-item"><a class="nav-link" href="#organizer">Organizer</a></li>
			<li class="nav-item"><a class="nav-link" href="#hangman">Hangman game</a></li>
			<li class="nav-item"><a class="nav-link" href="#slotmachine">Slot machine game</a></li>
			<!-- Add more tabs here -->
		</ul>
		<div class="tab-content">
			<br>

			<div id="mealmarJobs" class="tab-pane active">
				<%@ include file="common/mealmarjobs.jspf"%>
			</div>

			<div id="hospitoolity" class="tab-pane">
				<%@ include file="common/hospitoolity.jspf"%>
			</div>

			<div id="organizer" class="tab-pane">
				<%@ include file="common/organizer.jspf"%>
			</div>

			<div id="hangman" class="tab-pane">

				<%@ include file="common/hangman.jspf"%>

			</div>

			<div id="slotmachine" class="tab-pane">

				<%@ include file="common/slotmachine.jspf"%>

			</div>

		</div>
	</div>

	<script type="text/javascript">
		$(function() {
			$('.tabs .nav-tabs .nav-link').on('click', function(e) {
				e.preventDefault();
				var target = $(this).attr('href');

				$('.tabs .nav-tabs .nav-link').removeClass('active');
				$(this).addClass('active');

				$('.tabs .tab-content .tab-pane').removeClass('active');
				$(target).addClass('active');
			});
		});
	</script>
</div>



<%@ include file="common/footer.jspf"%>