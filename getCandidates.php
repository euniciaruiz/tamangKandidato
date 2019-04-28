<?php

    header("Access-Control-Allow-Origin: *");
	
   $dbhost = 'localhost';
   $dbuser = 'root';
   $dbpass = 'root';
   $dbname = 'tamaka29_tamangKandidato';
   $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
   

         global $conn;
         $sql = "SELECT candidate_prof_tb.id as id, candidate_prof_tb.name as name, candidate_prof_tb.education as education, candidate_prof_tb.achievements as achievements, candidate_prof_tb.govt_relatives as relatives, candidate_prof_tb.prof_background as prof_bg, party_tb.name as party, makabayan_tb.demokrasya as demokrasya, makabayan_tb.martial_law_min as martial_law, makabayan_tb.charter_change as chacha, makabayan_tb.malinis_na_eleksyon as eleksyon, makabayan_tb.poli_dynasty as dynasty, makabayan_tb.soberanya as soberanya, makabayan_tb.nakaw_na_yaman as nakaw FROM candidate_prof_tb INNER JOIN party_tb ON candidate_prof_tb.party_id=party_tb.id INNER JOIN makabayan_tb ON candidate_prof_tb.id=makabayan_tb.candidate_id";
      $result = mysqli_query($conn, $sql);

      if(mysqli_num_rows($result) > 0){

         $arr = array();

         while($row = mysqli_fetch_assoc($result)){
            $arr[] = array('id' => $row['id'], 'name' => $row['name'], 'education' => $row['education'], "achievements" => $row['achievements'], "govt_relatives" => $row['relatives'], "prof_background" => $row['prof_bg'], "party" => $row['party'], "demokrasya" => $row['demokrasya'], "martial_law"=>$row['martial_law'], "chacha"=>$row['chacha'], "eleksyon" => $row['eleksyon'], "dynasty" => $row['dynasty'], "soberanya" => $row['soberanya'], "nakaw" => $row['nakaw']);
         }
      }else{
         echo '0 results';
      }

      echo json_encode($arr);
   
?>