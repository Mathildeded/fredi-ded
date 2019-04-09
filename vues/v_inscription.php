<div class="operation">

<h2>Inscription</h2>

<form action="index.php?uc=faireInscription" method="post">
<table border="0">
    <tr>
        <td width="108">Num Licence </td>
        <td width="105"><select name="numAdh"> <?php foreach($_SESSION['tableLicences'] as $licence){ echo $licence;} unset($_SESSION['tableLicences']); ?></select></td>
    </tr>
    <tr>
		<td width="108">Mail</td>
		<td width="105"><input type="text"  name="mailAdh" value="" /></td>
	</tr>
	<tr>
		<td width="108">Mot de passe</td>
		<td width="105"><input type="text" name="mdpAdh" value=""/> </td>
	</tr>
</table>
<input type="submit" value="Ajouter">
</form>
</div>
