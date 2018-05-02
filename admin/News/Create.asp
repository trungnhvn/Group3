<%
	page = "News"
	title = "Đăng bài viết"
%>
<!-- #include virtual ="/include/admin.asp" -->
<!-- #include virtual="/ckeditor/ckeditor.asp" -->
<!-- #include virtual ="/include/news.asp" -->
<!-- #include virtual ="/include/Category.asp" -->
<%
	IF Request.ServerVariables("REQUEST_METHOD")= "POST" THEN
		name=Trim(request.form("Title"))
		paren=request.form("Paren")
		Content=Trim(request.form("Content"))
		
		IF name = "" THEN 
			errortxt = "Tên danh mục không được để trống!"
		ELSE
			errortxt = Content
			'CreateCategory name,paren,note
			
			'response.redirect "/Admin/News.asp"
		END IF
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
                    <!-- #include virtual ="/admin/News/_NewsOption.asp" -->
					<form method="POST" >
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title"><%= title %></h4>
						</div>
						<div class="panel-collapse">
							<div class="panel-body">
								<div class="form-group">
									<label for="Title">Tiêu đề(*)</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="500" data-val-required="Không được để trống tên tài khoản." id="Title" name="Title" type="text" value="<%= name %>">
									<span class="field-validation-valid" data-valmsg-for="Title" data-valmsg-replace="true"></span>
								</div>

								<div class="form-group">
									<label for="Paren">Danh mục cha</label>
									
									<select class="form-control" name="Paren" id="Paren">
										<option value=""></option>
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
									<label for="Description">Mô tả</label>
									<textarea class="form-control" data-val="true" id="Description" name="Description" type="text"><%= note %></textarea >
									<span class="field-validation-valid" data-valmsg-for="Description" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Content">Nội dung</label>
									<textarea class="form-control" data-val="true" id="Content" name="Content" type="text"><%= Content %></textarea >
									<span class="field-validation-valid" data-valmsg-for="Content" data-valmsg-replace="true"></span>
									<%
										dim editor
										set editor = New CKEditor							
										editor.basePath = "/ckeditor/"
										editor.replaceInstance "Content"
									%>
								</div>
							</div>
						</div>
					</div>

					<div class="submit-holder">
						<button type="submit" class="btn-mvc-green btn-mvc-large">Khởi tạo</button>
					</div>
					
					</form>
                </div>
                
				<!-- #include virtual ="/admin/control/footer.asp" -->
            </div>
        </div>
    </div>
</body>
</html>
