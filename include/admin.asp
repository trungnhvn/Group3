<!-- #include virtual ="/include/main.asp" -->
<% 
	IF NOT IsLogin() THEN 
		response.redirect "/admin/Login.asp"
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