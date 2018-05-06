<!-- #include virtual ="/include/main.asp" -->
<% 
	IF NOT IsLogin() THEN 
		Dim domainName, urlParam
		domainName = Request.ServerVariables("SERVER_NAME") 
		urlParam   = Request.ServerVariables("SCRIPT_NAME")
		queryString   = Request.ServerVariables("QUERY_STRING")
		
		IF queryString <> "" THEN
			queryString = "?" & queryString
		END IF

		response.redirect "/admin/Login.asp?url=" & Server.URLEncode(urlParam&queryString)
	END IF
	
	IF StrComp("Admin",User_power) <> 0 THEN
		isrole = false
		IF IsArray(role) THEN 
			For each item in role
				If StrComp(item,User_power) = 0 THEN
					isrole = true
					
					exit For
				END IF
			Next
		ELSE
			isrole = true
		END IF

		IF NOT isrole THEN 
			response.redirect "/admin/NoRole.asp"
		END IF
	END IF
%>