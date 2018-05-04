<%
	Function GetListProduct(page,limit)
		Dim sql,rownum 
		rownum = (page-1)*limit
		
		sql = "SELECT TOP " & limit & " * FROM (SELECT *,(ROW_NUMBER() OVER(ORDER BY [Product_EditDate] DESC)) AS RowNum FROM [dbo].[tblProduct] ) AS MyDerivedTable WHERE RowNum > " & rownum
		
		SET GetListProduct = SqlQuery(sql)
	End Function

	Function GetNews(id)
		dim sql,ret
		sql = "SELECT * FROM [dbo].[tblNews] WHERE News_Id = " & id
		
		set GetNews = SqlQuery(sql)
	End Function
	
	
	Function CreateNews(name,paren,img,des,content)
		Dim sql 
		sql = "INSERT INTO [dbo].[tblNews](News_Title,News_Description,News_Content,News_Image,Cat_Id,User_Acount,News_Status,News_Date,News_EditDate)" & _
			  " VALUES(N'"& name &"',N'"& des &"',N'"& content &"',N'"& img &"',"& paren &",N'"& User_Acount &"',0,GETDATE(),GETDATE())"
		
		SqlQuery(sql)
	End Function 
	
	Function UpdateNews(Id,name,paren,img,des,content)
		Dim sql 
		sql = "UPDATE [dbo].[tblNews] SET News_Title = N'"& name &"',News_Description = N'"& des &"',News_Content = N'"& content &"',News_Image = N'"& img &"',Cat_Id = "& paren &",News_Status = 0,News_EditBy = N'"& User_Acount &"',News_EditDate = GETDATE() WHERE News_Id = " & Id
		
		SqlQuery(sql)
	End Function 
%>