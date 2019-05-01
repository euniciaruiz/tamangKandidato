$(document).ready(function(){
	console.log('ready');

	getAllCandidates();
	

});

var candidatesToCompare = [];
var allCandidates = [];
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
				var prof_bg = candidate.prof_background;
				var img = candidate.image;

				//makatao-data
				var karapatan = candidate.karapatan;
				var age_crim = candidate.age_liab;
				var free_speech = candidate.free_speech;
				var rule = candidate.rule_of_law;
				var mahirap = candidate.pagtulong;
				var ekon = candidate.ekonomiya;
				var chin = candidate.chinese;

				//makadiyos data 
				var war_on_drugs = candidate.war_on_drugs;
				var death_penalty = candidate.death_penalty;
				var pagtataksil = candidate.pagtataksil;
				var korupsyon = candidate.corruption;
				var katotohanan = candidate.truth;
				var moralidad = candidate.morals;
				var kalikasan = candidate.earth; 

				//makabansa data
				var demokrasya = candidate.demokrasya;
				var martial_law = candidate.martial_law;
				var charter_change = candidate.chacha;
				var malinis_na_eleksyon = candidate.eleksyon;
				var political_dynasty = candidate.dynasty;
				var soberanya = candidate.soberanya;
				var nakaw_na_yaman = candidate.nakaw;

				console.log(candidate);
				$("#intro-text").hide();
				$("#front-page").hide();

				var str = "", header="", makatao="", makadyos="", makabayan="";
				header += "<h1 class='entry-title'>" + name + ", "+ party + "</h1>"



				str += "<p><span class='detail-label'>Education:</span> " + educ + "</p><p><span class='detail-label'>Achievements:</span> " + achievements+ "</p><p><span class='detail-label'>Kamag-anak Sa Gobyerno:</span>" + govt_rel + "</p><p><span class='detail-label'>Professional Background: </span>" +prof_bg+ "</p>";
				$("#candidate-name").append(header);

				makatao += "<p><span class='detail-label'>Karapatan ng Mamamayan: </span>"+ karapatan + "</p><p><span class='detail-label'>Age of Criminal Liability: </span>" + age_crim + "</p><p><span class='detail-label'>Free Speech, Free Press: </span>" + free_speech + "</p><p><span class='detail-label'>Rule of Law: </span>" + rule+ "</p><p><span class='detail-label'>Pagtulong sa Mahirap: </span>"+ mahirap+ "</p><p><span class='detail-label'>Ekonomiya at Kabuhayan:</span> " +ekon+ "</p><p><span class='detail-label'>Chinese Workers: </span>" +chin+ "</p>";

				makadyos += "<p><span class='detail-label'>War on Drugs: </span>"+ war_on_drugs +" </p><p><span class='detail-label'>Death Penalty: </span>" + death_penalty + "</p><p><span class='detail-label'>Pagtataksil: </span>" +pagtataksil+"</p><p><span class='detail-label'>Korupsyon: </span>" + korupsyon + "</p><p><span class='detail-label'>Katotohanan: </span>" +katotohanan+ "</p><p><span class='detail-label'>Moralidad: </span>" + moralidad + "</p><p><span class='detail-label'>Kalikasan:</span> " +kalikasan + "</p>";

				makabayan += "<p><span class='detail-label'>Demokrasya: </span> " + demokrasya + "</p><p><span class='detail-label'>Martial Law Mindanao:</span> " + martial_law + "</p><p><span class='detail-label'>Charter Change: </span> " + charter_change + "</p><p><span class='detail-label'>Malinis na Eleksyon: </span>" + malinis_na_eleksyon + "</p><p><span class='detail-label'>Political Dynasty: </span>" + political_dynasty + "</p><p><span class='detail-label'>Soberanya: </span>" + soberanya + "</p><p><span class='detail-label'>Nakaw na Yaman: </span>" +nakaw_na_yaman + "</p>";

				$("#candidate-img").attr("src", img);
				$("#makabayan-data").append(makabayan);
				$("#makadyos-data").append(makadyos);
				$("#candidate-bio").append(str);
				$("#makatao-data").append(makatao);
				$("#post-75").show();
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
					allCandidates.push(candidates[i]);
					var id = candidates[i].id;
					str += "<input type='checkbox' class='checkbox-candidate' onclick='compareCandidates(this)' value="+ id +" id=candidate-"+ id +"><span class='candidate-name' onclick='showCandidate("+id+")'>" + candidates[i].name + "</span><br>";
				}
				$("#candidate-list").append(str);

			}
	})
}

function limitCheckbox(){
	$(".checkbox-candidate").on('change', function(){
		if($(".checkbox-candidate:checked").length > 2){
			this.checked = false;
		}
	});
}

function compareCandidates(id){
	limitCheckbox();
	var candidate;
	for (var i = 0; i < allCandidates.length; i++) {
			if(allCandidates[i].id == id.value){
				candidate = allCandidates[i];
			}
	}
	if($(id).prop("checked")){
		candidatesToCompare.push(candidate);
	}else{
		candidatesToCompare.pop(candidate);
	}
}

function showComparison(){
		console.log(candidatesToCompare);
		var candidate1=candidatesToCompare[0];
		var candidate2 = candidatesToCompare[1];

		//candidate 1 data
		var name1 = candidate1.name;
		var educ1 = candidate1.education;
		var party1 = candidate1.party;
		var achievements1 = candidate1.achievements;
		var prof_bg1 = candidate1.prof_background;
		var rel1 = candidate1.govt_relatives;

		// candidate 2 data;
		var name2 = candidate2.name;
		var educ2 = candidate2.education;
		var party2 = candidate2.party;
		var achievements2 = candidate2.achievements;
		var prof_bg2 = candidate2.prof_background;
		var rel2 = candidate2.govt_relatives;

		//makatao-data
		var karapatan1 = candidate1.karapatan;
		var age_crim1 = candidate1.age_liab;
		var free_speech1 = candidate1.free_speech;
		var rule1 = candidate1.rule_of_law;
		var mahirap1 = candidate1.pagtulong;
		var ekon1 = candidate1.ekonomiya;
		var chin1 = candidate1.chinese;

		//makadiyos data 
		var war_on_drugs1 = candidate1.war_on_drugs;
		var death_penalty1 = candidate1.death_penalty;
		var pagtataksil1 = candidate1.pagtataksil;
		var korupsyon1 = candidate1.corruption;
		var katotohanan1 = candidate1.truth;
		var moralidad1 = candidate1.morals;
		var kalikasan1 = candidate1.earth; 

		//makabansa data
		var demokrasya1 = candidate1.demokrasya;
		var martial_law1 = candidate1.martial_law;
		var charter_change1 = candidate1.chacha;
		var malinis_na_eleksyon1 = candidate1.eleksyon;
		var political_dynasty1 = candidate1.dynasty;
		var soberanya1 = candidate1.soberanya;
		var nakaw_na_yaman1 = candidate1.nakaw;
		
				//makatao-data
		var karapatan2 = candidate2.karapatan;
		var age_crim2 = candidate2.age_liab;
		var free_speech2 = candidate2.free_speech;
		var rule2 = candidate2.rule_of_law;
		var mahirap2 = candidate2.pagtulong;
		var ekon2 = candidate2.ekonomiya;
		var chin2 = candidate2.chinese;

		//makadiyos data 
		var war_on_drugs2 = candidate2.war_on_drugs;
		var death_penalty2 = candidate2.death_penalty;
		var pagtataksil2 = candidate2.pagtataksil;
		var korupsyon2 = candidate2.corruption;
		var katotohanan2 = candidate2.truth;
		var moralidad2 = candidate2.morals;
		var kalikasan2 = candidate2.earth; 

		//makabansa data
		var demokrasya2 = candidate2.demokrasya;
		var martial_law2 = candidate2.martial_law;
		var charter_change2 = candidate2.chacha;
		var malinis_na_eleksyon2 = candidate2.eleksyon;
		var political_dynasty2 = candidate2.dynasty;
		var soberanya2 = candidate2.soberanya;
		var nakaw_na_yaman2 = candidate2.nakaw;


		var makadyos1 = "", makatao1="", makabayan1="";
		var makadyos2 ="", makatao2="", makabayan2="";

		makatao1 += "<p>Karapatan ng Mamamayan: "+ karapatan1 + "</p><p>Age of Criminal Liability: " + age_crim1 + "</p><p>Free Speech, Free Press: " + free_speech1 + "</p><p>Rule of Law: " + rule1 + "</p><p>Pagtulong sa Mahirap: "+ mahirap1 + "</p><p>Ekonomiya at Kabuhayan: " +ekon1 + "</p><p>Chinese Workers: " +chin1+ "</p>";

		makadyos1 += "<p>War on Drugs: "+ war_on_drugs1 +" </p><p>Death Penalty: " + death_penalty1 + "</p><p>Pagtataksil: " +pagtataksil1+"</p><p>Korupsyon: " + korupsyon1 + "</p><p>Katotohanan:" +katotohanan1+ "</p><p>Moralidad: " + moralidad1 + "</p><p>Kalikasan: " +kalikasan1 + "</p>";

		makabayan1 += "<p>Demokrasya: " + demokrasya1 + "</p><p>Martial Law Mindanao: " + martial_law1 + "</p><p>Charter Change: " + charter_change1 + "</p><p>Malinis na Eleksyon: " + malinis_na_eleksyon1 + "</p><p>Political Dynasty: " + political_dynasty1 + "</p><p>Soberanya: " + soberanya1 + "</p><p>Nakaw na Yaman" +nakaw_na_yaman1 + "</p>";


		makatao2 += "<p>Karapatan ng Mamamayan: "+ karapatan2 + "</p><p>Age of Criminal Liability: " + age_crim2 + "</p><p>Free Speech, Free Press: " + free_speech2 + "</p><p>Rule of Law: " + rule2 + "</p><p>Pagtulong sa Mahirap: "+ mahirap2 + "</p><p>Ekonomiya at Kabuhayan: " +ekon2 + "</p><p>Chinese Workers: " +chin2+ "</p>";

		makadyos2 += "<p>War on Drugs: "+ war_on_drugs2 +" </p><p>Death Penalty: " + death_penalty2 + "</p><p>Pagtataksil: " +pagtataksil2+"</p><p>Korupsyon: " + korupsyon2 + "</p><p>Katotohanan:" +katotohanan2+ "</p><p>Moralidad: " + moralidad2 + "</p><p>Kalikasan: " +kalikasan2 + "</p>";

		makabayan2 += "<p>Demokrasya: " + demokrasya2 + "</p><p>Martial Law Mindanao: " + martial_law2 + "</p><p>Charter Change: " + charter_change2 + "</p><p>Malinis na Eleksyon: " + malinis_na_eleksyon2 + "</p><p>Political Dynasty: " + political_dynasty2 + "</p><p>Soberanya: " + soberanya2 + "</p><p>Nakaw na Yaman" +nakaw_na_yaman2 + "</p>";

		$("#candidate-1-name").html(name1);
		$("#candidate-2-name").html(name2);

		$("#makadyos-1-data").append(makadyos1);
		$("#makadyos-2-data").append(makadyos2);

		$("#makatao-1-data").append(makatao1);
		$("#makatao-2-data").append(makatao2);

		$("#makabayan-1-data").append(makabayan1);
		$("#makabayan-2-data").append(makabayan2);

		// $("#candidate-comparison .candidates").append(str);
		$("#intro-text").hide();
		$("#front-page").hide();
		$("#post-75").hide();
		$("#compareBtn").hide();
		$("#post-96").show();
}

function goToHomePage(){
	$("#candidate-comparison").hide();
	$("#post-75").hide();
	$("#post-96").hide();
	$("#front-page").show();
	$("#compareBtn").show();
	$("#post-75 #candidate-details #candidate-name").html("");
	$("#post-75 #makatao-data").html("");
	$("#post-75 #makabayan-data").html("");
	$("#post-75 #makadyos-data").html("");
	$("#post-75 #candidate-bio").html("");
	$('input:checkbox').prop('checked', false);
	$("#post-96 #makatao-1-data").html("");
	$("#post-96 #makadyos-1-data").html("");
	$("#post-96 #makabayan-1-data").html("");

	$("#post-96 #makatao-2-data").html("");
	$("#post-96 #makadyos-2-data").html("");
	$("#post-96 #makabayan-2-data").html("");

	
	
}

