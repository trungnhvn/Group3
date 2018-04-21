<!--#include file="connection.asp"-->


<%
	username=request.form("username")
	password=request.form("password")
	Dim rc_login
	Set rc_login = Server.CreateObject("ADODB.Recordset")
	rc_login.ActiveConnection = cnn
	rc_login.Source = "select * from login_ where username_ = N'"&username&"' and password_ =  N'"&password&"'"
	rc_login.Open()
	if not rc_login.eof then
		session("username") = rc_login("username_")
		rc_login.close()
		set rc_login = nothing
		response.redirect "admin_home.asp"
	else
		session("username") = ""
		rc_login.close()
		set rc_login = nothing
		response.redirect "loginform.asp"
	end if
%>
