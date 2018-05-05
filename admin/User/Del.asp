<%
	page = "Product"
	title = "Xóa sản phẩm"
%>
<!-- #include virtual ="/include/admin.asp" -->
<%
	acc = request.querystring("Acct")
	IF acc <> "" THEN
		Set acct = GetAcctInfo(acc)
		IF NOT acct.EOF THEN
			name=acct("User_Acount")
			
			IF NOT StrComp(name,User_Acount) = 0 THEN
				IF Request.ServerVariables("REQUEST_METHOD")= "POST" THEN
					
					DeleteUser acc
					
					response.redirect "/Admin/User.asp"
				END IF
			ELSE
				response.redirect "/Admin/User.asp"
			END IF
		ELSE
			response.redirect "/Admin/User.asp"
		END IF
	ELSE
		response.redirect "/Admin/User.asp"
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
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title"><%= title %></h4>
						</div>
						<div class="panel-collapse">
							<form method="POST">
								<h3 style="margin:30px;">Bạn xác nhận xóa tài khoản <a>"<%= name %>"</a> hay không?</h3>
							
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
