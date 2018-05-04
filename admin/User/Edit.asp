<%
	page = "User"
	title = "Chỉnh sửa thông tin tài khoản"
%>
<!-- #include virtual ="/include/admin.asp" -->
<%
	acct = request.querystring("Acct")
	IF acct <> "" THEN
		Set acc = GetAcctInfo(acct)
		IF NOT acc.EOF THEN
			
			Acount 		= Trim(acc("User_Acount"))
			email		= acc("User_email")
			fullname	= acc("User_fullname")
			birthday	= acc("User_birthday")
			sex			= acc("User_sex")
			power		= acc("User_power")
			

			IF Request.ServerVariables("REQUEST_METHOD")= "POST" THEN
				'Acount 		= Trim(request.form("Acount"))
				email		= request.form("email")
				fullname	= request.form("fullname")
				birthday	= request.form("birthday")
				sex			= request.form("sex")
				power		= request.form("power")
				
				IF name = "" THEN 
					errortxt = "Tên danh mục không được để trống!"
				ELSE
					'UpdateNews id,name,paren,Image,Description,Content
					
				END IF
			END IF
		ELSE
			response.redirect "/Admin/User.asp"
		END IF
	ELSE
		response.redirect "/Admin/User.asp"
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
									<label>Tài khoản</label>
									<input class="form-control" type="text" value="<%= Acount %>" readonly>
								</div>
								
								<div class="form-group">
									<label for="Email">Email</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-maxlength-max="80" id="Email" name="Email" type="text" value="<%= email %>">
									<span class="field-validation-valid" data-valmsg-for="Email" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Birthday">Ngày sinh</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-maxlength-max="80" id="Birthday" name="Birthday" type="text" value="<%= birthday %>">
									<span class="field-validation-valid" data-valmsg-for="Birthday" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Sex">Giới tính</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-maxlength-max="80" id="Sex" name="Sex" type="text" value="<%= sex %>">
									<span class="field-validation-valid" data-valmsg-for="MetaDesc" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Power">Chức vụ</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-maxlength-max="80" id="Power" name="Power" type="text" value="<%= power %>">
									<span class="field-validation-valid" data-valmsg-for="Power" data-valmsg-replace="true"></span>
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
