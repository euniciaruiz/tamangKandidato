<?php

    header("Access-Control-Allow-Origin: *");
	
   $dbhost = 'localhost';
   $dbuser = 'root';
   $dbpass = 'root';
   $dbname = 'tamaka29_tamangKandidato';
   $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
   
   $id = $_POST['id'];

   
    global $conn;
         $sql = "SELECT candidate_prof_tb.id as id, candidate_prof_tb.name as name, candidate_prof_tb.education as education, candidate_prof_tb.achievements as achievements, candidate_prof_tb.govt_relatives as relatives, candidate_prof_tb.prof_background as prof_bg, party_tb.name as party, makabayan_tb.demokrasya as demokrasya, makabayan_tb.martial_law_min as martial_law, makabayan_tb.charter_change as chacha, makabayan_tb.malinis_na_eleksyon as eleksyon, makabayan_tb.poli_dynasty as dynasty, makabayan_tb.soberanya as soberanya, makabayan_tb.nakaw_na_yaman as nakaw, makatao_tb.karapatan_ng_mamamayan as karapatan, makatao_tb.age_crim_liability as age_liab, makatao_tb.free_speech as free_speech, makatao_tb.rule_of_law as rule_of_law, makatao_tb.pagtulong_sa_mahirap as pagtulong, makatao_tb.ekonomiya_at_kabuhaya as ekonomiya, makatao_tb.chinese_workers as chinese,makadiyos_tb.war_on_drugs as war, makadiyos_tb.death_penalty as death_penalty, makadiyos_tb.pagtataksil as pagtataksil, makadiyos_tb.korupsyon as corruption, makadiyos_tb.katotohanan as truth, makadiyos_tb.moralidad as moral, makadiyos_tb.kalikasan as kalikasan FROM candidate_prof_tb INNER JOIN party_tb ON candidate_prof_tb.party_id=party_tb.id INNER JOIN makabayan_tb ON candidate_prof_tb.id=makabayan_tb.candidate_id INNER JOIN makatao_tb ON candidate_prof_tb.id = makatao_tb.candidate_id INNER JOIN makadiyos_tb ON candidate_prof_tb.id=makadiyos_tb.candidate_id WHERE candidate_prof_tb.id=".$id;
      $result = mysqli_query($conn, $sql);

      if(mysqli_num_rows($result) > 0){

         $arr = array();

         while($row = mysqli_fetch_assoc($result)){
            $arr[] = array('id' => $row['id'], 'name' => $row['name'], 'education' => $row['education'], "achievements" => $row['achievements'], "govt_relatives" => $row['relatives'], "prof_background" => $row['prof_bg'], "party" => $row['party'], "demokrasya" => $row['demokrasya'], "martial_law"=>$row['martial_law'], "chacha"=>$row['chacha'], "eleksyon" => $row['eleksyon'], "dynasty" => $row['dynasty'], "soberanya" => $row['soberanya'], "nakaw" => $row['nakaw'], "karapatan" =>$row['karapatan'], "age_liab" => $row['age_liab'], "free_speech" => $row["free_speech"], "rule_of_law"=>$row['rule_of_law'], "pagtulong"=>$row["pagtulong"], "ekonomiya"=>$row["ekonomiya"], "chinese"=>$row['chinese'], "war_on_drugs"=>$row["war"], "death_penalty"=> $row["death_penalty"], "pagtataksil"=>$row["pagtataksil"], "corruption"=>$row['corruption'], "truth"=>$row['truth'], "morals"=>$row['moral'], "earth"=>$row['kalikasan'] );
         }
      }else{
         echo '0 results';
      }

      echo json_encode($arr);
   

?>