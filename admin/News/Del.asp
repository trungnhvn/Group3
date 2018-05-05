<%
	page = "News"
	title = "Xóa bài viết"
%>
<!-- #include virtual ="/include/admin.asp" -->
<!-- #include virtual ="/include/News.asp" -->
<%
	id = request.querystring("Id")
	IF id <> "" THEN
		Set product = GetNews(id)
		IF NOT product.EOF THEN
			
			name=product("News_Title")
			
			IF Request.ServerVariables("REQUEST_METHOD")= "POST" THEN
				
				DeleteNews id
				
				response.redirect "/Admin/News.asp"
			END IF
		ELSE
			response.redirect "/Admin/News.asp"
		END IF
	ELSE
		response.redirect "/Admin/News.asp"
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
                    <!-- #include virtual ="/admin/News/_NewsOption.asp" -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title"><%= title %></h4>
						</div>
						<div class="panel-collapse">
							<form method="POST">
								<h3 style="margin:30px;">Bạn xác nhận xóa bài viết <a>"<%= name %>"</a> hay không?</h3>
							
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
