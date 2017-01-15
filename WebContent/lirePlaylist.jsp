<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="principal.*, java.util.Set" %>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/styleMesPlaylists.css" />
<title>Youlist - Lire playlist</title>
</head>
<body>

<%
Utilisateur user = (Utilisateur)request.getAttribute("utilisateur");
%>
 
<form action = "ServletUtilisateur" method = "POST" class = "barre-navigation">
<%
if (user != null) {
	out.println("<input class = \"left\" type = \"submit\" name = \"op\" value = \"Accueil\" />");
	out.println("<input class = \"left\" type = \"submit\" name = \"op\" value = \"Tendances\" />");
	out.println("<input type = \"hidden\" name = \"pseudo\" value = \"" + user.getPseudo() + "\" />");
	out.println("<input class = \"left-active\" type = \"submit\" name = \"op\" value = \"Mes playlists\" />");
	out.println("<input class = \"right\" type = \"submit\" name = \"op\" value = \"Deconnexion\" />");
	out.println("<input class = \"right\" type = \"submit\" name = \"op\" value = \"Mon compte\" />");
} else {
	out.println("<input class = \"left-active\" type = \"submit\" name = \"op\" value = \"Accueil\" />");
	out.println("<input class = \"left\" type = \"submit\" name = \"op\" value = \"Tendances\" />");
	out.println("<input class = \"right\" type = \"submit\" name = \"op\" value = \"Connexion\" />");
	out.println("<input class = \"right\" type = \"submit\" name = \"op\" value = \"Inscription\" />");
}
%>
</form>

<div id = "principal">

<header> Utilisateur : <%=user.getPseudo() %></header>

<form action = "ServletUtilisateur" method = "POST" class = "rechercher">
<input type = "search" name = "recherche" placeholder = "Rechercher playlist" />
<input type="submit" name="op" value = "Rechercher"/>
</form>

<%
out.println("<a href=\"ServletUtilisateur?op=ajouterPlaylist" + user.getPseudo() + "\" >");
%>
</div>

<!-- <script language="javascript"> -->
<!--  function IframeRefresh(IframeId) { -->
<!--  	var iframe=document.getElementById(IframeId); -->
<!--  	iframe.src="https://www.youtube.com/embed/oY6J1Lmj3ZE"; -->
<!--  } -->
<!-- </script> -->
</body>
</html>