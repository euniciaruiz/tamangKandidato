$(document).ready(function(){
	console.log('ready');

	getAllCandidates();
	
});

var candidatesToCompare = [];
function showCandidate(id){
	//ajax code to get data from database. don't edit this
		$.ajax({
			type: 'POST',
			url: 'http://localhost:8888/tamaKa/showCandidate.php',
			data: ({id:id}),
			success:function(data){
				var candidate = JSON.parse(data)[0];
				console.log(candidate);
				var name = candidate.name;
				var educ = candidate.education;
				var achievements = candidate.achievements;
				var govt_rel = candidate.govt_relatives;
				var party = candidate.party;



				$("#candidate-list").hide();
				var str = "";

				str += "<h1>Profile</h1> <div>Name: "+ name +"</div>" +
				"<div>Education: "+ educ +"</div> <div>Achievements: " + achievements + "</div>" +
				"<div>Government Relatives: " + govt_rel +"</div> <div> Party: " + party + "</div>";

				str += "<h1>Makabayan</h1><div>Demokrasya:"+ candidate.demokrasya +"</div>" + 
				"<div>Martial Law Mindanao: " + candidate.martial_law + "</div>" + 
				"<div>Charter Change:" + candidate.chacha + "</div>" + 
				"<div>Malinis Na Eleksyon: " + candidate.eleksyon + "</div>" +
				"<div>Political Dynasty: " + candidate.dynasty + "</div>" + 
				"<div>Soberanya: " + candidate.soberanya + "</div> <div>Nakaw na Yaman: " +
				candidate.nakaw + "</div>";

				str += "<h1>Makatao</h1> <div>Karapatan ng Mamamayan: " + candidate.karapatan + "</div>" + "<div>Age of Criminal Liability: " +candidate.age_liab+ "</div>" + 
					"<div>Free Speech, Free Press: " + candidate.free_speech + "</div>" + 
					"<div>Rule of Law:" + candidate.rule_of_law + "</div>" +
					"<div>Pagtulong sa Mahirap: " + candidate.pagtulong + "</div>" +
					"<div>Ekonomiya at Kabuhayan: " + candidate.ekonomiya + "</div>" +
					"<div>Chinese Workers: " + candidate.chinese + "</div>";

				str += "<h1>Maka-Diyos</h1><div>Namatay sa War on Drugs: " + candidate.war + "</div>" + 
				"<div>Death Penalty: " + candidate.death_penalty +"</div> <div>Pagtataksil: "+ candidate.pagtataksil +"</div><div>Korupsyon: "+ candidate.corruption +"</div><div>" +
				"<div>Katotohanan: "+ candidate.truth +"</div><div>Moralidad: "+ candidate.morals +"</div>" +
				"<div>Kalikasan: " +candidate.earth + "</div>"; 

				$("#single-candidate").append(str);
				$("#single-candidate").show();
			}
		})
}

function getAllCandidates(){
	$.ajax({
			type: 'POST',
			url: 'http://localhost:8888/tamaKa/getCandidates.php',
			success:function(data){
				var candidates = JSON.parse(data);
				var str = "";
				for (var i = 0; i < candidates.length; i++) {
					var id = candidates[i].id;
					str += "<input type='checkbox' onclick='compareCandidates($(this).attr(`id`))' value="+ id +" id=candidate-"+ id +"><span onclick='showCandidate("+id+")'>" + candidates[i].name + "</span><br>";
				}
				$("#candidate-list").append(str);

			}
	})
}

function compareCandidates(id){
	candidatesToCompare.push(id);
	console.log(candidatesToCompare);
}