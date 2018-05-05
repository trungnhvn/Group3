<%
	page = "Category"
	title = "Tạo danh mục"
	role = Array("Admin","ContentManage")
%>
<!-- #include virtual ="/include/admin.asp" -->
<!-- #include virtual ="/include/Category.asp" -->
<%
	IF Request.ServerVariables("REQUEST_METHOD")= "POST" THEN
		name=Trim(request.form("Name"))
		paren=request.form("Paren")
		note=Trim(request.form("Note"))
		
		IF name = "" THEN 
			errortxt = "Tên danh mục không được để trống!"
		ELSE
			CreateCategory name,paren,note
			
			response.redirect "/Admin/Category.asp"
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
                    <!-- #include virtual ="/admin/Category/_CategoryOption.asp" -->
					<form method="POST" >
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title"><%= title %></h4>
						</div>
						<div class="panel-collapse">
							<div class="panel-body">
								<div class="form-group">
									<label for="Name">Tên danh mục(*)</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="500" data-val-required="Không được để trống tên tài khoản." id="Name" name="Name" type="text" value="<%= name %>">
									<span class="field-validation-valid" data-valmsg-for="Name" data-valmsg-replace="true"></span>
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
									<label for="Note">Chú thích</label>
									<textarea class="form-control" data-val="true" id="Note" name="Note" type="text"><%= note %></textarea >
									<span class="field-validation-valid" data-valmsg-for="Note" data-valmsg-replace="true"></span>
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
