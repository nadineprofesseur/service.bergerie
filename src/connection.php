<?php
    $usager = 'root';
    $motdepasse = 'testtest';
    $hote = 'localhost';
    $base = 'bergerie';
    $dsn = 'mysql:dbname='.$base.';host=' . $hote;
    $basededonnees = new PDO($dsn, $usager, $motdepasse);
?>
