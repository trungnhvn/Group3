<div class="right_mh">
								<div class="nav_box">
									<div class="nav_name_box">
										<h1>
											Tin tức
										</h1>
									</div>
								</div>
								<!-- end class nav_box -->
								<div class="content_box">
									<ul class="slidedoormenu1">
										<%
											dim x
											x = request.querystring("pageNumber")
											if x ="" then
												x = 1
											end if
											Dim rc_news
											Set rc_news = Server.CreateObject("ADODB.Recordset")
											sql = "select id_news, title, images, content as ct from news"
											
											rc_news.pagesize = 10
											rc_news.open sql, cnn, 3, 3
											rc_news.AbsolutePage = x
											dem = 0
											Do While NOT rc_news.Eof and dem < rc_news.pagesize
										%>	
										
										<li>
											<div class="tinright1">
												<a href="detail_news.asp?id=<%=rc_news("id_news")%>">
													<img src="<%=rc_news("images")%>" border="0" class="hinhtin">
												</a>
												<a class="lik_title" href="detail_new.asp?id=<%=rc_news("id_news")%>">
													<%=rc_news("title")%>
												</a>
												<span class="tomtat">
													<%
														txt=rc_news("ct")
														for i = 500 to 490 step -1
															txt=left(txt,i)
															if right(txt,1) = " " then
																i=190
															end if
														next
														txt = Replace(txt,"<","<!--")
														txt = Replace(txt,">","-->")
														
													%>
													<%=txt%> . .
													</span>
											</div>
										</li>	
										<%	
											dem=dem+1
											rc_news.movenext
											loop
										%>
									</ul>
									<!-- end class slidedoormenu1 -->
								</div>
								<!-- end class content_box -->
								<div style="width:100%; clear:both; margin-top:10px; float:left">
									<div class="manu">
									
									<%
										if x>1 then
									%>
										<a href="news.asp?pagenumber=<%=x-1%>">&lt; Trước</a>
									<% 
										end if
										if x=1 then
									%>
										<a class="disabled"> &lt;  Trước </a>
									<%
										end if
										if not rc_news.eof then
									%>
										<a href="news.asp?pagenumber=<%=x+1%>">Tiếp &gt;</a>
									<%
										end if
										if rc_news.eof then
									%>
										<a class="disabled"> Tiếp &gt;</a>
									<%
										end if
										rc_news.close()
										set rc_news = nothing
									%>
									</div>					
								</div>

							</div>
							<!-- end class right_mh -->
							
						</div>
