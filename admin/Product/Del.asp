<%
	page = "Product"
	title = "Xóa sản phẩm"
	role = Array("Admin","ContentManage","ProductManage")
%>
<!-- #include virtual ="/include/admin.asp" -->
<!-- #include virtual ="/include/Product.asp" -->
<%
id = request.querystring("Id")
	IF id <> "" THEN
		Set product = GetProduct(id)
		IF NOT product.EOF THEN
			
			name=product("Product_Name")
			
			IF Request.ServerVariables("REQUEST_METHOD")= "POST" THEN
				
				DeleteProduct id
				
				response.redirect "/Admin/Product.asp"
			END IF
		ELSE
			response.redirect "/Admin/Product.asp"
		END IF
	ELSE
		response.redirect "/Admin/Product.asp"
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
                    <!-- #include virtual ="/admin/Product/_ProductOption.asp" -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title"><%= title %></h4>
						</div>
						<div class="panel-collapse">
							<form method="POST">
								<h3 style="margin:30px;">Bạn xác nhận xóa sản phẩm <a>"<%= name %>"</a> hay không?</h3>
							
								<button style="margin:10px;" type="submit" class="btn-mvc-green btn-mvc-large">Xác nhận xóa</button>
							</form>
						</div>
					</div>


                </div>
				<!-- #include virtual ="/admin/control/footer.asp" -->
            </div>
        </div>
    </div>






</body>
</html>
