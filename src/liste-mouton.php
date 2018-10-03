<?php 

	include "connection.php";
	$SQL_LISTE_MOUTONS = "SELECT * FROM mouton";
	$requeteListeMoutons = $basededonnees->prepare($SQL_LISTE_MOUTONS);
	$requeteListeMoutons->execute();
	$listeMoutons = $requeteListeMoutons->fetchAll(PDO::FETCH_OBJ);
	//print_r($listeMoutons);
?>
<moutons><description>Liste des moutons</description>

<?php
	foreach($listeMoutons as $mouton)
	{
	?>
	<mouton>
		<nom><?=$mouton->nom?></nom>
		<couleur><?=$mouton->couleur?></couleur>
	</mouton>
	<?php
	}
?>

</moutons>