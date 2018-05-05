<%
	page = "User"
	title = "Quản lý tài khoản"
%>
<!-- #include virtual ="/include/admin.asp" -->
<%
	limit = 20
	count = GetCountUser()
	
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
                    <!-- #include virtual ="/admin/User/_UserOption.asp" -->
					<div class="panel">
						<div class="panel-heading">
							<h5>List Topic</h5>
						</div>
						<div class="panel-content">
								 <div class="tablescroll">
									<table class="table table-bordered table-striped">
										<thead>
											<tr>
												<th style="width:50px">Edit</th>
												<th>Tài khoản</th>
												<th>Tên đầy đủ</th>
												<th style="width:200px">Create date</th>
												<th style="width:50px">Delete</th>
											</tr>
										</thead>
										<tbody>
											<%
												Set Table = GetListUser(pagenum,limit)
												
												Do While NOT Table.Eof
											%>
												<tr>
													<td>
														<span>
															<a href="/Admin/User/Edit.asp?Acct=<%= Table("User_Acount") %>" class="btn-mvc">
																<span class="glyphicon glyphicon-pencil"></span>
															</a>
														</span>
													</td>
													<td><%= Table("User_Acount") %></td>
													<td><%= Table("User_fullname") %></td>
													<td><%= Table("User_date") %></td>
													<td>
														<% IF StrComp(Table("User_Acount"),User_Acount) <> 0 THEN %>
														<a href="/Admin/User/Del.asp?Acct=<%= Table("User_Acount") %>" class="btn-mvc">
															<span class="glyphicon glyphicon-remove"></span>
														</a>
														<% END IF %>
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
                
				<!-- #include virtual ="/admin/control/footer.asp" -->
            </div>
        </div>
    </div>






</body>
</html>
