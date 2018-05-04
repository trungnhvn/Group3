<%
	page = "Product"
	title = "Quản lý sản phẩm"
%>
<!-- #include virtual ="/include/admin.asp" -->
<!-- #include virtual ="/include/Product.asp" -->
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
                    <!-- #include virtual ="/admin/Product/_ProductOption.asp" -->
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
												Set Table = GetListProduct(1,20)
												
												Do While NOT Table.Eof
											%>
												<tr>
													<td>
														<span>
															<a href="/Admin/Product/Edit.asp?Id=<%= Table("Product_Id") %>" class="btn-mvc">
																<span class="glyphicon glyphicon-pencil"></span>
															</a>
														</span>
													</td>
													<td><%= Table("Product_Name") %></td>
													<td><%= Table("User_Acount") %></td>
													<td><%= Table("Product_Date") %></td>
													<td>
														<a href="/Admin/Product/Del.asp?Id=<%= Table("Product_Id") %>" class="btn-mvc">
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
