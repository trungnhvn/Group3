<%
	page = "News"
	title = "Chỉnh sửa bài viết"
%>
<!-- #include virtual ="/include/admin.asp" -->
<!-- #include virtual ="/include/Contact.asp" -->
<%
	id = request.querystring("Id")
	IF id <> "" THEN
		Set contact = GetContact(id)
		IF NOT contact.EOF THEN
			
			name= contact("Contact_Name")
			phone= contact("Contact_Phone")
			email= contact("Contact_Email")
			Description= contact("Contact_Description")
			note= contact("Contact_Note")
			status= contact("Contact_Status")
			

			IF Request.ServerVariables("REQUEST_METHOD")= "POST" THEN
				note= request.form("Note")
				status= request.form("Status")
			
				IF name = "" THEN 
					errortxt = "Tên danh mục không được để trống!"
				ELSE
					UpdateContact id,note,status
					
				END IF
			END IF
		ELSE
			response.redirect "/Admin/Contact.asp"
		END IF
	ELSE
		response.redirect "/Admin/Contact.asp"
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
                    <!-- #include virtual ="/admin/Contact/_ContactOption.asp" -->
					<form method="POST" >
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title"><%= title %></h4>
						</div>
						<div class="panel-collapse">
							<div class="panel-body">
								<div class="form-group">
									<label>Họ tên</label>
									<input class="form-control" type="text" value="<%= name %>" readonly> 
								</div>
								
								<div class="form-group">
									<label>Số điện thoại</label>
									<input class="form-control" type="text" value="<%= phone %>" readonly>
								</div>
								
								<div class="form-group">
									<label for="Title">Email</label>
									<input class="form-control" type="text" value="<%= email %>" readonly>
								</div>
								
								<div class="form-group">
									<label for="Title">Nội dung</label>
									<textarea class="form-control" type="text" readonly><%= Description %></textarea >
								</div>

								<div class="form-group">
									<label for="Status">Trạng thái</label>
									
									<select class="form-control" name="Status" id="Status">
										<option value="0" <%= SelectActive("0",status) %> >Chờ duyệt</option>
										<option value="1" <%= SelectActive("1",status) %> >Đã xử lý</option>
										<option value="2" <%= SelectActive("2",status) %> >Đang xử lý</option>
									</select>
									<span class="field-validation-valid" data-valmsg-for="Status" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Note">Chú thích</label>
									<textarea class="form-control" data-val="true" id="Note" name="Note" type="text"><%= note %></textarea >
									<span class="field-validation-valid" data-valmsg-for="Note" data-valmsg-replace="true"></span>
									<script type="text/javascript">//<![CDATA[
                                        CKEDITOR.replace('Note');
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
