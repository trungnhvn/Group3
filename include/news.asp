<%
	Function GetListNews(page,limit)
		Dim sql,rownum 
		rownum = (page-1)*limit
		
		sql = "SELECT TOP " & limit & " * FROM (SELECT *,(ROW_NUMBER() OVER(ORDER BY [News_EditDate] DESC)) AS RowNum FROM [dbo].[tblNews] ) AS MyDerivedTable WHERE RowNum > " & rownum
		
		SET GetListNews = SqlQuery(sql)
	End Function
	
	Function GetCountNews()
		Dim sql,ret 
		
		sql = "SELECT COUNT(*) AS countline FROM [dbo].[tblNews]" 
		
		set ret = SqlQuery(sql)
		IF ret.EOF THEN
			GetCountNews = 0
		ELSE
			GetCountNews = ret("countline")
		END IF
	End Function 

	Function GetNews(id)
		dim sql
		id = cint(id)
		
		sql = "SELECT * FROM [dbo].[tblNews] WHERE News_Id = " & id
		
		set GetNews = SqlQuery(sql)
	End Function
	
	Function DeleteNews(id)
		dim sql
		id = cint(id)
		
		sql = "DELETE FROM [dbo].[tblNews] WHERE News_Id = " & id
		
		SqlQuery(sql)
	End Function
	
	
	Function CreateNews(name,paren,img,des,content)
		Dim sql 
		name = ValueEncode(name)
		content = ValueEncode(content)
		des = ValueEncode(des)
		img = ValueEncode(img)
		paren = cint(paren)
		
		
		sql = "INSERT INTO [dbo].[tblNews](News_Title,News_Description,News_Content,News_Image,Cat_Id,User_Acount,News_Status,News_Date,News_EditDate)" & _
			  " VALUES(N'"& name &"',N'"& des &"',N'"& content &"',N'"& img &"',"& paren &",N'"& User_Acount &"',0,GETDATE(),GETDATE())"
		
		SqlQuery(sql)
	End Function 
	
	Function UpdateNews(Id,name,paren,img,des,content)
		Dim sql 
		name = ValueEncode(name)
		content = ValueEncode(content)
		des = ValueEncode(des)
		img = ValueEncode(img)
		paren = cint(paren)
		Id = cint(Id)
		
		
		sql = "UPDATE [dbo].[tblNews] SET News_Title = N'"& name &"',News_Description = N'"& des &"',News_Content = N'"& content &"',News_Image = N'"& img &"',Cat_Id = "& paren &",News_Status = 0,News_EditBy = N'"& User_Acount &"',News_EditDate = GETDATE() WHERE News_Id = " & Id
		
		SqlQuery(sql)
	End Function 
%>