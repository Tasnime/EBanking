<%-- 
    Document   : Authentification
    Created on : 21 févr. 2015, 12:56:38
    Author     : Tasnime
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="JQuery/jquery.keypad.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Authentification</title>
        <style>
            label
{
	display: block;
	width: 150px;
	float: left;
}
           
#inlineKeypad { width: 10em; }
</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="JQuery/jquery.plugin.js"></script>
<script src="JQuery/jquery.keypad.js"></script>
        <script>
$(function () {

	$('#randomKeypad').keypad({showOn: 'both', randomiseNumeric: true});
	
});
</script>
    </head>
    
    <body>
       <form action="comptes.htm" method="post">
         

<label for="login">Login :</label><input type="text" name="login" /><br/><br/>
<label for="pass">Mode de passe :</label><input type="password" name="pass" /><br/><br/>
<label for="code">Code :</label><input type="password" id="randomKeypad" name="code"><br/><br/>
<input type="submit" class="button" value="Connexion" class="lens"/><br/>
</form>
    </body>
</html>

       <!--<a href="comptes.htm">Client</a>-->

