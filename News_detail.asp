<!DOCTYPE html>
<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="include/connection_sample.asp"-->
<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<body>
			<div class="content_box">
									<div>
										<%
											Dim rc_news
											Set rc_news = Server.CreateObject("ADODB.Recordset")
											rc_news.ActiveConnection = cnn
											rc_news.Source = "select id_news, title, images, content as ct from news where id_news =" &Request.QueryString("id")
											rc_news.Open()
										%>
										<div style="text-align: center">
										<h2><%=rc_news("title")%></h2>
										<img src="<% = rc_news("images")%>" border="0"><br/><br/>
										</div>
										<%=rc_news("ct")%>
									</div>
									<!-- end class slidedoormenu1 -->
									<div style=" clear:both">
										<div class="arrowlistmenu">
											<h3 class="headerbar">Các tin khác</h3>
											<%
												Dim rc_new
												Set rc_new = Server.CreateObject("ADODB.Recordset")
												rc_new.ActiveConnection = cnn
												rc_new.Source = "select id_news, title, images, content as ct from news where id_news !=" &Request.QueryString("id")
												rc_new.Open()
											%>
											<% 
												Do While NOT rc_new.Eof
											%> 
											<ul>
												<li>
													<a href="detail_new.asp?id=<%=rc_new("id_news")%>">
														<%=rc_new("title")%>
													</a>
												</li>
											</ul>
											<%	
												rc_new.movenext
												loop
												rc_new.close()
												set rc_new = nothing
											%>
										</div>
	
</body>

