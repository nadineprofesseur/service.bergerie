<?php 
	header("Content-type: text/xml");
	echo '<?xml version="1.0" encoding="UTF-8"?>';

	//print_r($_GET);
	
	$SQL_MOUTON = "SELECT * FROM mouton WHERE id = " . $_GET['mouton']; // TODO requete preparee
	include "connection.php";
	$requeteMouton = $basededonnees->prepare($SQL_MOUTON);
	$requeteMouton->execute();
	$mouton = $requeteMouton->fetch(PDO::FETCH_OBJ);
	//print_r($mouton);
?>
<mouton>
	<nom><?=$mouton->nom?></nom>
	<couleur><?=$mouton->couleur?></couleur>
	<poids><?=$mouton->poids?></poids>
	<naissance><?=$mouton->naissance?></naissance>
	<description><?=$mouton->description?></description>		
</mouton>