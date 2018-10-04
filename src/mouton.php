<?php 

	print_r($_GET);
	
	$SQL_MOUTON = "SELECT * FROM mouton WHERE id = " . $_GET['mouton']; // TODO requete preparee
	include "connection.php";
	$requeteMouton = $basededonnees->prepare($SQL_MOUTON);
	$requeteMouton->execute();
	$mouton = $requeteMouton->fetch(PDO::FETCH_OBJ);
	//print_r($mouton);
?>
<mouton></mouton>