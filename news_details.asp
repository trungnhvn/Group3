<%
	page = "NewsDetails"
	title = "Chỉnh sửa bài viết"
%>
<!-- #include virtual ="/include/main.asp" -->
<!-- #include virtual ="/include/news.asp" -->
<%
	id = request.querystring("Id")
	IF id <> "" THEN
		Set news = GetNews(id)
		IF NOT news.EOF THEN
			
			name= news("News_Title")
			paren= news("Cat_Id")
			Description= news("News_Description")
			Content= news("News_Content")
			Image= news("News_Image")
			
		ELSE
			response.redirect "/News.asp"
		END IF
	ELSE
		response.redirect "/News.asp"
	END IF
	
	
%>
<!DOCTYPE html>
<html >
<head>
<!-- #include virtual ="/Control/Head.asp" -->
  
  
  
</head>
<body>
     <!-- #include virtual ="/Control/Menu.asp" -->



    <figure class="mbr-figure">
        <div class="image-block" style="width: 100%;">
            <img src="assets5/images/mbr-1634x1080.jpg" alt="Mobirise" title="">
        </div>
    </figure>
</section>

<section class="mbr-section content6 cid-qQQzjHcrGi" id="content6-3">
    <div class="container">
		<h1 style="padding-top:40px;"><%= name %></h1>
		<hr/>
        <div class="media-container-row">
                    <div class="mbr-figure" style="padding:20px;">
                      <img src="<%= Image %>" alt="Mobirise" title="">  
                    </div>
                    <div class="media-content">
                        <div class="mbr-section-text">
                            <p class="mbr-text mb-0 mbr-fonts-style display-7">
							   <%= Description %>
                            </p>
                        </div>
                    </div>
                </div>
    </div>
</section>

	<section class="mbr-section article content1 cid-qQQzkGzjHh" id="content1-4">
		<style>
			p{
				padding:0px;
				margin:0px;
			}
		</style>
		<div class="container mbr-fonts-style display-7" style="padding:0px 0px 40px 30px;">
					<%= Content %>
		</div>
	</section>

      <!-- #include virtual ="/Control/Footer.asp" -->
</body>
</html>