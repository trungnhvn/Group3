<%
   page = "news_details"
   title = "Tin tức chi tiết"
   %>
<!-- #include virtual ="/include/main.asp" -->
<!-- #include virtual ="/include/news.asp" -->
<!DOCTYPE html>
<html >
   <head>
      <!-- #include virtual ="/Control/Head.asp" -->
   </head>
   <%
      Function GetListNews()
      
      End Function
      
      Function GetNews(id)
          dim sql,ret
          sql = "SELECT * FROM [dbo].[News] WHERE Id = " & id
          
          set GetSetting = SqlQuery(sql)
      End Function
      
      %>
   <body>
      <section class="menu cid-qQTKXf80n4" once="menu" id="menu1-0">
         <!-- #include virtual ="/Control/Menu.asp" -->
         <figure class="mbr-figure">
            <div class="image-block" style="width: 100%;">
               <img src="assets4/images/mbr-1620x1080.jpg" alt="Mobirise" title="">
            </div>
         </figure>
      </section>
      <section class="mbr-section content6 cid-qQTL2jXz8q" id="content6-2">
         <div class="container">
            <div class="media-container-row">
               <div class="col-12 col-md-8">
                  <div class="media-container-row">
                     <div class="mbr-figure" style="width: 60%;">
                        <img src="assets4/images/mbr-436x448.jpg" alt="Mobirise" title="">  
                     </div>
                     <div class="media-content">
                        <div class="mbr-section-text">
                           <p class="mbr-text mb-0 mbr-fonts-style display-7"><strong>Câu chuyện bên ly Cà Phê&nbsp;</strong><strong><br></strong>Có gì quyến rũ đến vậy trong màu nước tối thẫm và thăm thẳm như đêm đông? Từng giọt, từng giọt ánh đen, rụng xuống như sương. Trong mỗi giọt ấy đắng chát thì nhiều, ngọt bùi là có mấy. Có phải mỗi giọt cà phê ấy rơi xuống là những "giọt" đời nặng trĩu, đọng mãi đáy lòng... <br>Từ rất lâu chuyện uống cà phê đã trở thành một trong những niềm vui tao nhã trong cuộc sống bận rộn hàng ngày. Nhiều thế kỷ trôi qua, cà phê vẫn mang lại sự kích thích giúp bạn tỉnh táo hơn, dù bạn đang ngồi ở một chân trời nào đi nữa. <br>Chính nhờ những lần tán gẫu với nhau bên ly cà phê mà nhiều người trong chúng ta đã ngộ ra nhiều triết lý về cuộc sống, cách sống. Sự thanh nhàn, yên lặng và an bình dường như đều ở đây, bên ly cà phê với bạn.<br></p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <div class="container">
         <div class="media-container-row">
            <div class="mbr-text col-12 col-md-8 mbr-fonts-style display-7">
               Chúng ta học được gì qua đó?
               <div>Đơn giản là hưởng thụ giây phút ấy – có lẽ đó là một nguyên tắc để hài lòng với cuộc sống chăng?</div>
               <div>Tản mạn xung quanh ly cà phê giúp cuộc sống của bạn thêm phong phú, vui vẻ và đầy nhiệt huyết. Những ảnh hưởng tích cực, những chiến thuật thực tiễn và những kỹ năng tạo cảm hứng mà chúng ta đang bàn ở đây đều nhằm mục đích giúp bạn ý thức đầy đủ về cuộc sống để sống trọn vẹn và cảm thấy yêu đời mỗi ngày khi thức dậy. </div>
               <div>Bài học thứ nhất: Hâm nóng cà phê sẽ gây vị đắng </div>
               <div>Hãy để những chuyện quá khứ thuộc về quá khứ</div>
               <div>Cà phê nói gì?</div>
               <div>Đừng nên hâm nóng lại cà phê. Mỗi lần bạn pha, cà phê cần phải tươi mới. Chỉ pha vừa đủ để bạn uống lúc đó mà thôi. </div>
               <div>Cuộc sống nói gì?</div>
               <div>Đừng hâm lại quá khứ. Quá khứ là chuyện đã rồi, chứ không phải là một lời bào chữa. Hãy để những chuyện quá khứ thuộc về quá khứ. </div>
               <div>Nếu hâm nóng cà phê, mùi vị của nó sẽ không còn ngon nữa. Cuộc đời của bạn cũng giống như vậy. Hâm lại quá khứ chỉ khiến cho bạn thêm vị đắng mà thôi. Để có một cuộc sống vui tươi hạnh phúc, hãy chịu trách nhiệm với thực tại, và bắt đầu từ giây phút này mà thẳng tiến.&nbsp;</div>
            </div>
         </div>
      </div>
      </section>
      <!-- #include virtual ="/Control/Footer.asp" -->
   </body>
</html>