

<html>
	<head>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="js/candidate-fxns.js"></script>
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
		<!-- page showing all candidates -->
		<div id="front-page">
			<ul id="candidate-list">
			
			</ul>
		</div>

		<div id="single-candidate" style="display:none;" >
			<div id="candidate-details"></div>
			<button class="backToCandidates" onclick="goToHomePage();">Back</button>
		</div>

		<div id="candidate-comparison" style="display: none;">
			<div class="labels">
				<div><span>Name</span></div>
				<div><span>Party Affiliation</span></div>
				<div><span>Education</span></div>
				<div><span>Professional Background</span></div>
				<div><span>Achievements</span></div>
				<div><span>Kamag-anak sa Gobyerno</span></div>
			</div>
			<div class="candidates">
				
			</div>
			<button class="backToCandidates" onclick="goToHomePage();">Back</button>
		</div>
		<button id="compareBtn" onclick="showComparison();">Compare</button>
		
	</body>
</html>