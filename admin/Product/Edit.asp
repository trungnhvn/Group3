<%
	page = "Product"
	title = "Chỉnh sửa thông tin sản phẩm"
%>
<!-- #include virtual ="/include/admin.asp" -->
<!-- #include virtual ="/include/Product.asp" -->
<!-- #include virtual ="/include/Category.asp" -->
<%
	id = request.querystring("Id")
	IF id <> "" THEN
		Set product = GetProduct(id)
		IF NOT product.EOF THEN
			
			name=product("Product_Name")
			paren=product("Cat_Id")
			Price=product("Product_Price")
			Component=product("Product_Component")
			Description=product("Product_Description")
			Content=product("Product_Content")
			Image=product("Product_Image")
			

			IF Request.ServerVariables("REQUEST_METHOD")= "POST" THEN
				name=Trim(request.form("Title"))
				paren=request.form("Paren")
				Price=request.form("Price")
				Component=request.form("Component")
				Description=Trim(request.form("Description"))
				Content=request.form("Content")
				Image=Trim(request.form("Image"))
				
				IF name = "" THEN 
					errortxt = "Tên danh mục không được để trống!"
				ELSE
					UpdateProduct id,name,paren,Image,Price,Component,Description,Content
					
					response.redirect "/Admin/Product.asp"
				END IF
			END IF
		ELSE
			response.redirect "/Admin/Product.asp"
		END IF
	ELSE
		response.redirect "/Admin/Product.asp"
	END IF
	
	
%>
<!DOCTYPE html>
<html lang="vi">
<!-- #include virtual ="/admin/control/header.asp" -->
<body class="desktop">
    <div id="wrapper">
        <!-- #include virtual ="/admin/control/menu.asp" -->
        <div id="page-wrapper">
            <div class="container-fluid">
				<!-- #include virtual ="/admin/Control/GenericMessage.asp" -->
        
                <div class="mainadminbody" style="min-height:100%;">
                    <!-- #include virtual ="/admin/Product/_ProductOption.asp" -->
					<form method="POST" >
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title"><%= title %></h4>
						</div>
						<div class="panel-collapse">
							<div class="panel-body">
								<div class="form-group">
									<label for="Title">Tên sản phẩm(*)</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="500" id="Title" name="Title" type="text" value="<%= name %>">
									<span class="field-validation-valid" data-valmsg-for="Title" data-valmsg-replace="true"></span>
								</div>

								<div class="form-group">
									<label for="Paren">Danh mục cha</label>
									
									<select class="form-control" name="Paren" id="Paren">
									<%
										Set Table = GetAllCategory()
										
										Do While NOT Table.Eof
									%>
										<option value="<%= Table("Cat_Id") %>" <%= SelectActive(Table("Cat_Id"),paren) %> ><%= Table("Cat_Name") %></option>
									<%	
										Table.movenext
										loop
										Table.close()
										set Table = nothing
									%>
									</select>
									<span class="field-validation-valid" data-valmsg-for="Paren" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Image">Ảnh đại diện</label>
                                    <div style="width:100%;display:table">
									    <input class="form-control" style="width:calc(100% - 100px);float:left;" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="500"  id="Image" name="Image" type="text" value="<%= Image %>">
									    <button style="width:90px;float:left;margin-left:10px;height:34px" type="button" onclick="selectFileWithCKFinder('Image')">Chọn ảnh</button>
                                    </div>
                                    <span class="field-validation-valid" data-valmsg-for="Image" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Price">Giá sản phẩm</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="100" id="Price" name="Price" type="text" value="<%= Price %>">
									<span class="field-validation-valid" data-valmsg-for="Price" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Component">Thành phần</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="100" id="Component" name="Component" type="text" value="<%= Component %>">
									<span class="field-validation-valid" data-valmsg-for="Component" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Description">Mô tả</label>
									<textarea class="form-control" data-val="true" id="Description" name="Description" type="text"><%= Description %></textarea >
									<span class="field-validation-valid" data-valmsg-for="Description" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Content">Nội dung</label>
									<textarea class="form-control" data-val="true" id="Content" name="Content" type="text"><%= Content %></textarea >
									<span class="field-validation-valid" data-valmsg-for="Content" data-valmsg-replace="true"></span>
									<script type="text/javascript">//<![CDATA[
                                        CKEDITOR.replace('Content');
                                    //]]></script>
								</div>
							</div>
						</div>
					</div>

					<div class="submit-holder">
						<button type="submit" class="btn-mvc-green btn-mvc-large">Cập nhật</button>
					</div>
					
					</form>
                </div>
                
				<!-- #include virtual ="/admin/control/footer.asp" -->
            </div>
        </div>
    </div>
</body>
</html>
