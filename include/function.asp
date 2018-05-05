<!-- #include virtual ="/include/connect.asp" -->
<!-- #include virtual ="/include/setting.asp" -->
<!-- #include virtual ="/include/Menu.asp" -->
<%
	Function PageActive(txt)
		Dim str
		str = StrComp(Lcase(page),Lcase(txt))
		
		IF str = 0 THEN 
			PageActive = "active"
		ELSE
			PageActive = ""
		END IF
	End Function
	
	Function SelectActive(txt,txt2)
		IF StrComp(txt,txt2) = 0 THEN 
			SelectActive = "selected='selected'"
		ELSE
			SelectActive = ""
		END IF
	End Function

	Function SelectHidden(txt,txt2)
		IF NOT StrComp(txt,txt2) = 0 THEN 
			SelectHidden = "hidden"
		ELSE
			SelectHidden = ""
		END IF
	End Function

	Function GetMaxPage(count1,limit)
		dim maxpage
		maxpage = cint(count1 / limit)
		IF count > limit*maxpage THEN 
			maxpage = maxpage + 1
		END IF
		
		IF maxpage = 0 THEN 
			maxpage = 1
		END IF
		
		GetMaxPage = maxpage
	End Function

%>

<!-- #include virtual ="/include/user.asp" -->