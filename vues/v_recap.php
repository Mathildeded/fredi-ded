<div id="recap">
    <h3>Je soussigné(e) :</h3> <br>
    <div class="champ"> <p> <?php echo  $_SESSION['nompreAdh']; ?> </p> <br> </div>
    <h3>Demeurant :</h3> <br>
    <div class="champ"> <p> <?php echo $_SESSION['adresseAdh']; ?> </p> <br> </div>
    <h3>Certifie renoncer au remboursement des drais ci-dessous et les liasser à l'association :</h3> <br>
    <div class="champ"> <p> <?php //echo $lieuAssos." ".$adresseAssos." ".$cpAssos." ".$villeAssos; ?> </p> <br> </div>
    <h3>En tant que don.</h3>
    <table>
        <tr>
            <td> <span style="font-weight:bold" >Frai de déplacement</span></td>
            <td> Tarif kilométrique appliqué pour le remboursement : 0.20€ </td>
        </tr>
    </table>
    <br>
    <table class="tableauFrais">
         <tr>
            <td align="center">Date <br> jj/mm/aaaa</td>
            <td align="center">Motif </td>
            <td align="center">Trajet </td>
            <td align="center">Kms <br>parcurus </td>
            <td align="center">Coût Trajet </td>
            <td align="center">Péages </td>
            <td align="center">Repas </td>
            <td align="center">Hébergement </td>
            <td align="center">Total </td>
            <td align="center">Modifier </td>
            <td align="center">Supprimer </td> 
        </tr>
        <?php 
            foreach($_SESSION['tableLignes'] as $ligne ){
                echo $ligne;
            }
        ?>
    </table>
    <table>
        <tr>
            <td><h3><div align="center"> Montant total des frais de déplacement</div></h3></td>
            <td> <?php ?> </td>
        </tr>
    </table>
    <h4> <span style="font-weight:bold" > Je suis licencié sous le n° de licence suivant</span> </h4> <br>
    <div class="champ"> <p> <?php echo $_SESSION['nompreAdh']." licence n° ".$_SESSION["sessid"] ?> </p><br></div>
    <h4> <span style="font-weight:bold" > Montant total des dons </span> <div class="champ"> <?php //echo $totalDons; ?>   </div> </h4> <br>
    <p class ="italique"> Pour bénéficier du reçu de dons, cette note de frais doit être accompagnée de tous les justificatifs correspondants </p>
    <p>A </p> <div class="champ"> </div> <p> Le </p> <div class="champ"> </div> <br>
    <p>Signature du bénévole </p> <div class="champ"> </div>
    <table class="PartiAssos">
        <td>
            <h4 align="center">Partie réservée à l'association </h4>
            <p>N° d'ordre de reçu : <?php ?> </p>
            <p> Remis le :</p>
            <p>Signature du Trésorier</p>
        </td>
    </table>
    
</div>