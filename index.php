<?php
header( 'content-type: text/html; charset=utf-8' );
require_once ("modele/class.pdofredi.inc.php");
session_start();
$pdo = pdofredi::getpdofredi();
include("vues/v_entete.php");
if(!isset($_REQUEST['uc'])){
     $_REQUEST['uc'] = 'indentification';
}
$uc = $_REQUEST['uc'];
switch($uc){
	case 'faireIdentification' :{
		include("controleurs/c_identification.php");
        break;
	}
    case 'faireInscription' :{
		include("controleurs/c_inscription.php");
        break;
    }
    case 'afficheInscription' :{
		include("controleurs/c_afficheInscription.php");
        break;
    }
    case 'faireDeconnexion' :{
		include("controleurs/c_deconnexion.php");
        break;
    }
    case 'faireRecap' :{
		include("controleurs/c_recap.php");
        break;
	}
    case 'afficheAjoutLigne' :{
		include("controleurs/c_afficheAjoutLigne.php");
        break;
	}
    case 'afficheModifLigneFrais' :{
		include("controleurs/c_afficheModifLigne.php");
        break;
	}
    case 'faireAjoutLigneFrais' :{
		include("controleurs/c_ajoutLigneFrais.php");
        break;
	}
    case 'faireSupprLigneFrais' :{
		include("controleurs/c_supprLigneFrais.php");
        break;
	}
        
    case 'faireModifLigneFrais' :{
		include("controleurs/c_modifLigneFrais.php");
        break;
	}
    /*case 'faireAdminIdentification' :{
		include("controleurs/c_adminIdentification.php");
        break;
	}
    case 'faireImportCSV' :{
		include("controleurs/c_importCSV.php");
        break;
	} 
    case 'faireSupprAdh' :{
		include("controleurs/c_supprAllAdh.php");
        break;
	}   */  
        
    
}

switch($uc){
	case 'identification' :{
		include("vues/v_identification.php");break;
	}
    case 'inscription' :{
		include("vues/v_inscription.php");break;
	}
    case 'recap' :{
		include("vues/v_recap.php");break;
	}
    case 'ajoutLigne' :{
		include("vues/v_ajoutLigneFrais.php");break;
	}
    case 'modifLigne' :{
		include("vues/v_modifLigneFrais.php");break;
	}
    case 'adminIdentification' :{
		include("vues/v_adminIdentification.php");break;
	}
    case 'backoffice' :{
		include("vues/v_backoffice.php");break;
	}
        
        
}

include("vues/v_pied.php") ;
?>
