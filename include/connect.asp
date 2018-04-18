<%
	IF page = "" THEN
		Response.redirect("/index.asp")
	End if
%>
<%	
	dbHost = "127.0.0.1"
	dbName = "MyStyle"
	dbUser = "sa"
	dbPass = "1234567"
	
	dbConnectStr = "Provider=SQLOLEDB.1;Data Source=" & dbHost & ";Initial Catalog=" & dbName & ";user id = '" & dbUser & "';password='" & dbPass & "'"

    Function SqlQuery(sql)
		set conn=Server.CreateObject("ADODB.Connection")
		conn.Open(dbConnectStr)
		
		Set AdRec = CreateObject("ADODB.Recordset")
		AdRec.ActiveConnection = conn
		AdRec.Source = sql
		AdRec.Open()
		
		SqlQuery = Adrec
	END Function
%>