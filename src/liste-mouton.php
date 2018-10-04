<?php 
	header("Content-type: text/xml");
	echo '<?xml version="1.0" encoding="UTF-8"?>';

	include "connection.php";
	$SQL_LISTE_MOUTONS = "SELECT * FROM mouton";
	$requeteListeMoutons = $basededonnees->prepare($SQL_LISTE_MOUTONS);
	$requeteListeMoutons->execute();
	$listeMoutons = $requeteListeMoutons->fetchAll(PDO::FETCH_OBJ);
	//print_r($listeMoutons);
	
?>

<moutons>
	<description>Liste des moutons</description>

<?php
	foreach($listeMoutons as $mouton)
	{
	?>
	<mouton>
		<nom><?=$mouton->nom?></nom>
		<couleur><?=$mouton->couleur?></couleur>
		<poids><?=$mouton->couleur?></poids>
		<naissance><?=$mouton->naissance?></naissance>
		<description><?=$mouton->naissance?></description>		
	</mouton>
	<?php
	}
?>

</moutons>