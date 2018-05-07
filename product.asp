<%
   page = "product"
   title = "Sản phẩm"
   %>
<!-- #include virtual ="/include/main.asp" -->
<!-- #include virtual ="/include/product.asp" -->
<%
	limit = 9
	count = GetCountProduct()
	
	maxpage = cint(GetMaxPage(count,limit))
	IF cint(pagenum) > maxpage THEN
		pagenum = maxpage
	END IF
	
%>
<!DOCTYPE html>
<html >
   <head>
      <!-- #include virtual ="/Control/Head.asp" --> 
   </head>
   <body>
      <!-- #include virtual ="/Control/Menu.asp" -->
      <section class="cid-qPzTpxqoEN" id="image2-1">
         <figure class="mbr-figure">
            <div class="image-block" style="width: 100%;">
               <img src="assets/images/mbr-1620x1080.jpg" title="">
               <figcaption class="mbr-figure-caption mbr-figure-caption-over">
                  <div class="container pb-5 mbr-white align-center mbr-fonts-style display-1"></div>
               </figcaption>
            </div>
         </figure>
      </section>
      <section class="features3 cid-qPzTGaZqqD" id="features3-5">
         <div class="container" >
            <div class="media-container-row" style="display:table;">
				<%
					Set Table = GetListProduct(pagenum,limit)
												
					Do While NOT Table.Eof
				%>
											
               <div class="card p-3 col-12 col-md-6 col-lg-4" style="display:table;">
                  <div class="card-wrapper">
                     <div class="card-img">
                        <img src="assets/images/mbr-676x451.jpg" title="">
                     </div>
                     <div class="card-box">
                        <h4 class="card-title mbr-fonts-style display-7" style="margin:10px;">
                           <%= Table("Product_Name") %>
                        </h4>
                        <p class="mbr-text mbr-fonts-style display-7">
                            <span>Giá: <%= Table("Product_Price") %></span><br/>
							Thành phần: <%= Table("Product_Component") %>
                        </p>
                     </div>
                     <div class="mbr-section-btn text-center">
                        <a href="product_details.asp?id=<%= Table("Product_Id") %>" class="btn btn-primary display-4" style="font-family: arial">
							Chi tiết
                        </a>
                     </div>
                  </div>
               </div>
				<%	
					Table.movenext
					loop
					Table.close()
					set Table = nothing
				%>
               
            </div>
         </div>
      </section>
      <!-- #include virtual ="/control/paging.asp" -->
	  
      <!-- #include virtual ="/Control/Footer.asp" -->  
   </body>
</html>