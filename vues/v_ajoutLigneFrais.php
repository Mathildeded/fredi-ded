<?php 
$dateFrais=NULL;
$motifFrais=NULL;
$trajetFrais=NULL;
$kmFrais=NULL;
$coutTrajetFrais=NULL;
$peagesFrais=NULL;
$repasFrais=NULL;
$hebergFrais=NULL;
    if (isset($_SESSION['dateFrais'])){
        $dateFrais=$_SESSION["dateFrais"];
        $motifFrais=$_SESSION["motifFrais"];
        $trajetFrais=$_SESSION["trajetFrais"];
        $kmFrais=$_SESSION["kmFrais"];
        $coutTrajetFrais=$_SESSION["coutTrajetFrais"];
        $peagesFrais=$_SESSION["peagesFrais"];
        $repasFrais=$_SESSION["repasFrais"];
        $hebergFrais=$_SESSION["hebergFrais"];
    }
?>
<div class="ajoutLigneFrais">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    
<h2>Inscription</h2>
    <form method="post" action="index.php?uc=faireAjoutLigneFrais">
        <table border="0">
            <tr>
                <td width="108">Date (jj/mm/aaaa)</td>
                <td width="105"><input type="date"  name="dateFrais" value="<?php echo $dateFrais; ?>" /></td>
            </tr>
            <tr>
                <td width="108">Motif </td>
                <td width="105"><select name="motifFrais"> <?php foreach($_SESSION['tableMotifs'] as $motif){ echo $motif;}?></select></td>
            </tr>
            <tr>
                <td width="108">Trajet (départ / arrivé ) </td>
                <td width="105"><input type="text"  name="trajetFrais" value="<?php echo $trajetFrais; ?>" /></td>
            </tr>
            <tr>
                <td width="108">Kms Parcourus</td>
                <td width="105"><input type="number" name="kmFrais" value="<?php echo $kmFrais; ?>"/> </td>
            </tr>
            <tr>
                <td width="108">Coût Trajet</td>
                <td width="105"><input type="number" name="coutTrajetFrais" value="<?php echo $coutTrajetFrais; ?>"/> </td>
            </tr>
            <tr>
                <td width="108">Péages</td>
                <td width="105"><input type="number"  name="peagesFrais" value="<?php echo $peagesFrais; ?>"/></td>
            </tr>
            <tr>
                <td width="108">Repas</td>
                <td width="105"><input type="number"  name="repasFrais" value="<?php echo $repasFrais; ?>"/></td>
            </tr>
            <tr>
                <td width="108">Hébergement</td>
                <td width="105"><input type="number"  name="hebergFrais" value="<?php echo $hebergFrais; ?>"/></td>
            </tr>
        </table>
        <input type="submit" value="Ajouter">
    </form>
</div>
<?php
unset($_SESSION["dateFrais"]);
unset($_SESSION["motifFrais"]);
unset($_SESSION["trajetFrais"]);
unset($_SESSION["kmFrais"]);
unset($_SESSION["coutTrajetFrais"]);
unset($_SESSION["peagesFrais"]);
unset($_SESSION["repasFrais"]);
unset($_SESSION["hebergFrais"]);
?>