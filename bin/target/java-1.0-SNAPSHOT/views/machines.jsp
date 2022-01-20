<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <script src="script/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="script/machines.js" type="text/javascript"></script>
    <link href="style/css.css" rel="stylesheet" type="text/css"/>
    <link href="style/csslocal.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<%@include file="parts/header.jsp" %>
<%@include file="parts/menu.jsp" %>
<div class="content">
    <fieldset>
        <legend>Informations Machine</legend>
        <table border="0">
            <tr>
                <td>Référence</td>
                <td><input id="reference" type="text" name="reference" value="" required=""/></td>
            </tr>
            <tr>
                <td>Date Achat</td>
                <td><input id="dateAchat" type="date" name="dateAchat" value="" required=""/></td>
            </tr>
            <tr>
                <td>Prix</td>
                <td><input id="prix" type="text" name="prix" value="" required=""/></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input id="add" type="submit" value="Envoyer"/>
                </td>
                <td>
                    <input id="save" modifyid="" type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </fieldset>

    <fieldset>
        <legend>Liste des machines</legend>

        <table border="1" class="tab">
            <thead>
            <tr>
                <th>Id</th>
                <th>Référence <br>
                <th>Date Achat</th>
                <th>Prix</th>
                <th>Modifier</th>
                <th>Supprimer</th>
                <th>Modifier</th>
            </tr>
            </thead>
            <tbody id="content">

            </tbody>
        </table>

    </fieldset>
    </form>
</div>
</body>
</html>
