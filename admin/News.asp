<%
	page = "News"
	title = "Quản lý bài viết"
%>
<!-- #include virtual ="/include/admin.asp" -->
<!-- #include virtual ="/include/news.asp" -->
<%
	limit = 20
	count = GetCountNews()
	
	maxpage = cint(GetMaxPage(count,limit))
	IF cint(pagenum) > maxpage THEN
		pagenum = maxpage
	END IF
	
%>
<!DOCTYPE html>
<html lang="en">
<!-- #include virtual ="/admin/control/header.asp" -->
<body class="desktop">
    <div id="wrapper">
        <!-- #include virtual ="/admin/control/menu.asp" -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <!-- #include virtual ="/admin/Control/GenericMessage.asp" -->
                <div class="mainadminbody" style="min-height:100%;">
                    <!-- #include virtual ="/admin/News/_NewsOption.asp" -->
					<div class="panel">
						<div class="panel-heading">
							<h5><%= title %></h5>
						</div>
						<div class="panel-content">
							<div id="container">
								 <div class="tablescroll">
									<table class="table table-bordered table-striped">
										<thead>
											<tr>
												<th style="width:50px">Edit</th>
												<th>Tiêu đề</th>
												<th style="width:200px">Người đăng</th>
												<th style="width:200px">Create date</th>
												<th style="width:50px">Delete</th>
											</tr>
										</thead>
										<tbody>
											<%
												Set Table = GetListNews(pagenum,limit)
												
												Do While NOT Table.Eof
											%>
												<tr>
													<td>
														<span>
															<a href="/Admin/News/Edit.asp?Id=<%= Table("News_Id") %>" class="btn-mvc">
																<span class="glyphicon glyphicon-pencil"></span>
															</a>
														</span>
													</td>
													<td><%= Table("News_Title") %></td>
													<td><%= Table("User_Acount") %></td>
													<td><%= Table("News_Date") %></td>
													<td>
														<a href="/Admin/News/Del.asp?Id=<%= Table("News_Id") %>" class="btn-mvc">
															<span class="glyphicon glyphicon-remove"></span>
														</a>
													</td>
												</tr>
											<%	
												Table.movenext
												loop
												Table.close()
												set Table = nothing
											%>
										</tbody>
									</table>
								</div>
								<!-- #include virtual ="/admin/control/paging.asp" -->
							</div>
						</div>
					</div>

                </div>
                
				<!-- #include virtual ="/admin/control/footer.asp" -->
            </div>
        </div>
    </div>






</body>
</html>
