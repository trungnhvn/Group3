<%
	page = "Photo"
	title = "Sửa ảnh"
	role = Array("Admin","ContentManage")
%>
<!-- #include virtual ="/include/admin.asp" -->
<!-- #include virtual ="/include/Photo.asp" -->
<%
	id = request.querystring("Id")
	IF id <> "" THEN
		Set photo = GetPhoto(id)
		IF NOT photo.EOF THEN
			
			name=photo("Photo_Name")
			Image=photo("Photo_Url")
			Paren=photo("Photo_Group")
			Description=photo("Photo_Description")
			link=photo("Photo_Link")
			ShotOder=photo("ShotOder")
			

			IF Request.ServerVariables("REQUEST_METHOD")= "POST" THEN
			name=Trim(request.form("Name"))
			Image=request.form("Image")
			Paren=request.form("Paren")
			Description=request.form("Description")
			link=request.form("Link")
			ShotOder=request.form("ShotOder")
			
			IF name = "" THEN 
				errortxt = "Tên menu không được để trống!"
			ELSE
				UpdatePhoto id,name,Image,Paren,Description,link,ShotOder
				
			END IF
	END IF
		ELSE
			response.redirect "/Admin/Category.asp"
		END IF
	ELSE
		response.redirect "/Admin/Category.asp"
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
                    <!-- #include virtual ="/admin/Photo/_PhotoOption.asp" -->
					<form method="POST" >
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title"><%= title %></h4>
						</div>
						<div class="panel-collapse">
							<div class="panel-body">
								<div class="form-group">
									<label for="Name">Tên ảnh(*)</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="500" data-val-required="Không được để trống tên tài khoản." id="Name" name="Name" type="text" value="<%= name %>">
									<span class="field-validation-valid" data-valmsg-for="Name" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Image">Đường dẫn ảnh</label>
                                    <div style="width:100%;display:table">
									    <input class="form-control" style="width:calc(100% - 100px);float:left;" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="500"  id="Image" name="Image" type="text" value="<%= Image %>">
									    <button style="width:90px;float:left;margin-left:10px;height:34px" type="button" onclick="selectFileWithCKFinder('Image')">Chọn ảnh</button>
                                    </div>
                                    <span class="field-validation-valid" data-valmsg-for="Image" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Paren">Nhóm ảnh</label>
									
									<select class="form-control" name="Paren" id="Paren">
										<option value="Slider">Slider</option>
										<option value="Archive">Archive</option>
									</select>
									<span class="field-validation-valid" data-valmsg-for="Paren" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Link">Liên kết</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="500" id="Link" name="Link" type="text" value="<%= Link %>">
									<span class="field-validation-valid" data-valmsg-for="Link" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Description">Mô tả</label>
									<textarea class="form-control" data-val="true" id="Description" name="Description" type="text"><%= Description %></textarea>
									<span class="field-validation-valid" data-valmsg-for="Description" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="ShotOder">Thứ tự xắp xếp</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="500" data-val-required="Không được để trống tên tài khoản." id="ShotOder" name="ShotOder" type="text" value="<%= ShotOder %>">
									<span class="field-validation-valid" data-valmsg-for="ShotOder" data-valmsg-replace="true"></span>
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
