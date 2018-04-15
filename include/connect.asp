<%
	IF page = "" THEN
		Response.redirect("/index.asp")
	End if
%>
<%	
	dbName = ""
	dbUser = ""
	dbPass = ""
	
	dbConnectStr = ""


    Sub SqlQuery(sql)
		set conn=Server.CreateObject("ADODB.Connection")
		conn.Provider="Microsoft.Jet.OLEDB.4.0"
		conn.Open(Server.Mappath("/db/data.mdb"))
	
	 return conn
	END Sub

%>