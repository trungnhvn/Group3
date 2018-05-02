<%
	IF page = "" THEN
		Response.redirect("/index.asp")
	End if
%>
<%
	Function GetAllMenu()
		Dim sql
		sql = "SELECT * FROM [dbo].[tblMenu] ORDER BY [ShotOder] DESC"
		
		SET GetAllMenu = SqlQuery(sql)
	End Function 
	
	Function GetListRootMenu()
		Dim sql
		sql = "SELECT * FROM [dbo].[tblMenu] WHERE Menu_Paren = 0 OR Menu_Paren IS NULL ORDER BY [ShotOder] DESC"
		
		SET GetListRootMenu = SqlQuery(sql)
	End Function
	
	Function GetListSubMenu(paren)
		Dim sql
		sql = "SELECT * FROM [dbo].[tblMenu] WHERE Menu_Paren = "& paren &" ORDER BY [ShotOder] DESC"
		
		SET GetListSubMenu = SqlQuery(sql)
	End Function 

	Function GetOptionMenu()
		Dim sql 
		sql = "SELECT [MenuId],[Menu_Name] FROM [dbo].[tblMenu] ORDER BY [Menu_Name] ASC"
		
		SET GetOptionMenu = SqlQuery(sql)
	End Function 
	
	Function CreateMenu(name,paren,itype,link,shotoder)
		Dim sql
		
		IF paren = "" THEN
			paren = 0
		END IF
		IF shotoder = "" THEN
			shotoder = 0
		END IF
		
		sql = "INSERT INTO [dbo].[tblMenu](Menu_Name,Menu_Paren,Menu_Type,Menu_Link,ShotOder)" & _
			  " VALUES(N'"& name &"',"& paren &","& itype &",N'"& link &"',"& shotoder &")"
		
		SqlQuery(sql)
	End Function 
	
	Function UpdateMenu(id,name,paren,itype,link,shotoder)
		Dim sql 
		IF paren = "" THEN
			paren = 0
		END IF
		IF shotoder = "" THEN
			shotoder = 0
		END IF
		
		sql = "UPDATE [dbo].[tblMenu] SET Menu_Name = N'"& name &"',Menu_Paren = "& paren &",Menu_Type = "& itype &", Menu_Link = N'"& link &"',ShotOder = "& shotoder &" WHERE Menu_Id = " & id
		
		SqlQuery(sql)
	End Function 
	
	Function GetMenu(id)
		dim sql
		sql = "SELECT * FROM [dbo].[tblMenu] WHERE Menu_Id = " & id
		
		SET GetMenu = SqlQuery(sql)
	End Function
	
	Function GetMenuLink(iType,link)
		IF StrComp(iType,"0") = 0 THEN 
			GetMenuLink = link
		ELSEIF StrComp(iType,"1") = 0 THEN 
			IF StrComp(link,"0") = 0 THEN 
				GetMenuLink = "/Home.asp"
			ELSEIF StrComp(link,"1") = 0 THEN 
				GetMenuLink = "/News.asp"
			ELSEIF StrComp(link,"2") = 0 THEN 
				GetMenuLink = "/product.asp"
			ELSEIF StrComp(link,"3") = 0 THEN 
				GetMenuLink = "/contact.asp"
			ELSE
				GetMenuLink = "/Home.asp"
			END IF
		ELSE
			GetMenuLink = "/Home.asp"
		END IF
	End Function
	
	Function GetNameTypeMenu(iType)
		IF StrComp(iType,"0") = 0 THEN 
			GetNameTypeMenu = "Link liên kết"
		ELSEIF StrComp(iType,"1") = 0 THEN
			GetNameTypeMenu = "Trang sẵn có"
		ELSE
			GetNameTypeMenu = "./."
		END IF
	End Function
	
	
%>