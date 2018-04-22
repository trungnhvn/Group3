<!-- #include virtual ="/include/main.asp" -->
<% 
	IF NOT IsLogin() THEN 
		response.redirect "/admin/Login.asp"
	END IF
	




%>