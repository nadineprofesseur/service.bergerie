<?php
	//print_r($_GET); // TODO restreindre en fonctino du mois
	include "connection.php";
	$SQL_STATISTIQUES_CLOCHETTE_MOIS = "SELECT max(intensite) as maxIntensite, min(intensite) as minIntensite, avg(intensite), max(duree) as maxDuree, min(duree) as minDuree, avg(duree) as moyenneDuree, max(repetition) as maxRepetition, min(repetition) as minRepetition, avg(repetition) as moyenneRepetition, count(repetition) as total FROM clochette";
	//$SQL_STATISTIQUES_PAR_MOUTON = "SELECT max(repetition) as maxRepetition, min(repetition) as minRepetition, avg(repetition) as moyenneRepetition, count(repetition) as total FROM clochette GROUP by mouton";
?>
<statistiques-mois>
	<mois>10</mois>
	<statistiques>
	
		<nombre> 
			<total></total>
			<par-mouton>
				<total></total>
				<max></max>
				<min></min>
				<moyenne></moyenne>			
			</par-mouton>
			
		</nombre>
	
		<intensite>
			<max></max>
			<min></min>
			<moyenne></moyenne>
		</intensite>
		
		<duree>
			<max></max>
			<min></min>
			<moyenne></moyenne>		
		</duree>

		<repetition>
			<max></max>
			<min></min>
			<moyenne></moyenne>		
		</repetition>
		
	</statistiques>

</statistiques-mois>