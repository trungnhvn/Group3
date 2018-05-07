<%
   page = "news"
   title = "Tin Tức"
   %>
<!-- #include virtual ="/include/main.asp" -->
<!-- #include virtual ="/include/news.asp" -->
<%
	limit = 10
	count = GetCountNews()
	
	maxpage = cint(GetMaxPage(count,limit))
	IF cint(pagenum) > maxpage THEN
		pagenum = maxpage
	END IF
	
%>
<!DOCTYPE html>
<html amp>
   <head>
      <!-- #include virtual ="/Control/Head.asp" -->
   </head>
   <body>
      <!-- #include virtual ="/Control/Menu.asp" -->
      <!-- #include virtual ="/Control/Slider.asp" -->
	  <%
		Set Table = GetListNews(pagenum,limit)
												
		Do While NOT Table.Eof
	  %>									
      <section class="features10 cid-qPh0bb023m" id="features10-<%= Table("News_Id") %>">
         <div class="container">
            <div class="mbr-row mbr-justify-content-center">
               <div class="image-block mbr-col-sm-12 mbr-col-md-6">
                  <amp-img src="<%= Table("News_Image") %>" layout="responsive" width="540" height="360" ></amp-img>
               </div>
               <div class="text-block mbr-col-sm-12 mbr-col-md-6">
                  <h3 class="mbr-section-title mbr-fonts-style align-left display-5">
                     <%= Table("News_Title") %>
                  </h3>
                  <p class="mbr-fonts-style mbr-text align-left display-7">
                     <%= Table("News_Description") %> 
                  </p>
                  <div class="mbr-section-btn align-left">
                     <a class="btn btn-sm btn-primary display-4" href="news_details.asp?id=<%= Table("News_Id") %>">Xem thêm</a>
                  </div>
               </div>
            </div>
         </div>
      </section>
	  <%	
		Table.movenext
		loop
		Table.close()
		set Table = nothing
	  %>
	  <!-- #include virtual ="/control/paging.asp" -->
	  
      <!-- #include virtual ="/Control/Footer.asp" -->
   </body>
</html>