<%
	page = "Contact"
	title = "Quản lý liên hệ"
%>
<!-- #include virtual ="/include/admin.asp" -->
<!-- #include virtual ="/include/Contact.asp" -->
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
                    <!-- #include virtual ="/admin/Contact/_ContactOption.asp" -->
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
												<th>Tên</th>
												<th>Phone</th>
												<th>Email</th>
												<th style="width:150px">Trạng thái</th>
												<th style="width:180px">Create date</th>
												<th style="width:50px">Delete</th>
											</tr>
										</thead>
										<tbody>
											<%
												Set Table = GetListContact(1,10)
												
												Do While NOT Table.Eof
											%>
												<tr>
													<td>
														<span>
															<a href="/Admin/Contact/Edit.asp?Id=<%= Table("Contact_Id") %>" class="btn-mvc">
																<span class="glyphicon glyphicon-pencil"></span>
															</a>
														</span>
													</td>
													<td><%= Table("Contact_Name") %></td>
													<td><%= Table("Contact_Phone") %></td>
													<td><%= Table("Contact_Email") %></td>
													<td><%= GetNameStatusContact(Table("Contact_Status")) %></td>
													<td><%= Table("Contact_Date") %></td>
													<td>
														<a href="/Admin/Contact/Del.asp?Id=<%= Table("Contact_Id") %>" class="btn-mvc">
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
