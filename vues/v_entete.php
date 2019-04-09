<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
       "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
  <head>
    <title>Fredi</title>
    <meta http-equiv="content-type" content="text/html; charset=utf8" />
    <link href="./CSS/styles.css" rel="stylesheet" type="text/css" />
 </head>
 <body>
 	<div id="bandeau">Gestion des frais</div>
 	<div id="menu">
        <?php
        if (!isset($_SESSION["sessid"])){
           echo "<a href='index.php?uc=identification'> Indentification </a>";
            echo "<a href='index.php?uc=adminIdentification'> Administration </a>"; 
        }            
            
        else{
            echo "<a href='index.php?uc=faireDeconnexion'> D&eacute;connexion </a>";
            echo"<a href='index.php?uc=faireRecap'> Tableau de bord </a>";
            echo"<a href='index.php?uc=afficheAjoutLigne'> Ajout Ligne de frais </a>";
        } 
            
        ?>
 	</div>
<div id="corps">