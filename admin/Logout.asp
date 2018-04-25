<%
	page = "adminlogout"
%>
<!-- #include virtual ="/include/main.asp" -->
<%
	LogOut()
	response.redirect "Login.asp"
%>