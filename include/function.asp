<!-- #include virtual ="/include/connect.asp" -->
<!-- #include virtual ="/include/setting.asp" -->
<%
	Function PageActive(txt)
		str = StrComp(Lcase(page),Lcase(txt))
		
		IF str = 0 THEN 
			PageActive = "active"
		ELSE
			PageActive = ""
		END IF
	End Function






%>

<!-- #include virtual ="/include/user.asp" -->