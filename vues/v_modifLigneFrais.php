
<div class="modifLigneFrais">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    
<h2>Inscription</h2>
    <form method="post" action="index.php?uc=faireModifLigneFrais">
        <table border="0">
            <tr>
                <td width="108">Date (jj/mm/aaaa)</td>
                <td width="105"><input type="date"  name="dateFrais" value="<?php echo $_SESSION['date']; ?>" /></td>
            </tr>
            <tr>
                <td width="108">Motif </td>
                <td width="105"><select name="motifFrais"> <?php foreach($_SESSION['tableMotifs'] as $motif){ echo $motif;}?></select></td>
            </tr>
            <tr>
                <td width="108">Trajet (départ / arrivé ) </td>
                <td width="105"><input type="text"  name="trajetFrais" value="<?php echo $_SESSION['trajet']; ?>" /></td>
            </tr>
            <tr>
                <td width="108">Kms Parcourus</td>
                <td width="105"><input type="number" name="kmFrais" value="<?php echo $_SESSION['km']; ?>"/> </td>
            </tr>
            <tr>
                <td width="108">Coût Trajet</td>
                <td width="105"><input type="number" name="coutTrajetFrais" value="<?php echo $_SESSION['cout_trajet']; ?>"/> </td>
            </tr>
            <tr>
                <td width="108">Péages</td>
                <td width="105"><input type="number"  name="peagesFrais" value="<?php echo $_SESSION['cout_peage']; ?>"/></td>
            </tr>
            <tr>
                <td width="108">Repas</td>
                <td width="105"><input type="number"  name="repasFrais" value="<?php echo $_SESSION['cout_repas']; ?>"/></td>
            </tr>
            <tr>
                <td width="108">Hébergement</td>
                <td width="105"><input type="number"  name="hebergFrais" value="<?php echo $_SESSION['cout_hebergement']; ?>"/></td>
            </tr>
        </table>
        <input type="submit" value="Modifier">
    </form>
</div>