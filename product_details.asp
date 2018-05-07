
<%
   page = "product_details"
   title = "Chi tiết SP"
%>
<!-- #include virtual ="/include/main.asp" -->
<!-- #include virtual ="/include/product.asp" -->
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
			
			title = name 
		ELSE
			response.redirect "/Product.asp"
		END IF
	ELSE
		response.redirect "/Product.asp"
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
            <img src="/images/images/mbr-1620x1080.jpg"  title="">
            
        </div>
    </figure>
</section>

<section class="mbr-section content6 cid-qQkDOYQoQe" id="content6-2">
       
    <div class="container">
        <div class="media-container-row">
            <div class="col-12 col-md-8">
                <div class="media-container-row">
                    <div class="mbr-figure" style="width: 50%;">
                      <img src="<%= Image %>"  title="">  
                    </div>
                    <div class="media-content">
                        <div class="mbr-section-text">
                            <p class="mbr-text mb-0 mbr-fonts-style display-7"><strong><%= name %></strong><br>Giá: <%= Price %><br />Thành phần: <%= Component %></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="mbr-section article content1 cid-qQkDQCPbdf" id="content1-3">
 
    <div class="container">
        <div class="media-container-row">
            <div class="mbr-text col-12 col-md-8 mbr-fonts-style display-4" style="font-family: arial"><b><%= Description %></b><%= Content %></div>
        </div>
    </div>
</section>

<!-- #include virtual ="/Control/Footer.asp" -->
  
</body>
</html>