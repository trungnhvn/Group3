<%
	page = "home"
	title = "Trang chủ"
%>
<!-- #include virtual ="/include/main.asp" -->
<!-- #include virtual ="/include/news.asp" -->

<%
	Dim News1
	Set News1 = GetNews(1)


%>

<!DOCTYPE html>
<html >
	<!-- #include virtual ="/Control/Head.asp" -->
   <body>
		<!-- #include virtual ="/Control/Menu.asp" -->
      <section class="engine"><a href="https://mobirise.ws/f">easy site maker</a></section>
      <section class="header3 cid-qOxHqBb79x mbr-fullscreen mbr-parallax-background" id="header3-j">
         <div class="mbr-overlay" style="opacity: 0.2; background-color: rgb(0, 0, 0);">
         </div>
         <div class="container">
            <div class="media-container-row">
               <div class="mbr-figure" style="width: 105%;">
                  <img src="assets/images/mbr-1-720x1080.jpg" alt="Mobirise" title="">
               </div>
               <div class="media-content">
                  <h1 class="mbr-section-title mbr-white pb-3 mbr-fonts-style display-1"><% Response.Write(News1("Title")) %></h1>
                  <div class="mbr-section-text mbr-white pb-3 ">
                     <p class="mbr-text mbr-fonts-style display-5">
                        Full width intro with image background, color overlay and a picture on the left. You can easily change the size of image in block parameters.
                     </p>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="mbr-section article content10 cid-qOxMgINZVc" id="content10-o">
         <div class="container">
            <div class="inner-container" style="width: 66%;">
               <hr class="line" style="width: 25%;">
               <div class="section-text align-center mbr-white mbr-fonts-style display-5">
                  Mobirise is one of the easiest website development tools available today. It also gives you the freedom to develop as many websites as you like given the fact that it is a desktop app.
               </div>
               <hr class="line" style="width: 25%;">
            </div>
         </div>
      </section>
      <section class="features5 cid-qOxInPcBju" id="features5-l">
         <div class="container">
            <div class="media-container-row">
               <div class="card p-3 col-12 col-md-6 col-lg-4">
                  <div class="card-img pb-3">
                     <span class="mbr-iconfont socicon-overwatch socicon" style="font-size: 50px;"></span>
                  </div>
                  <div class="card-box">
                     <h4 class="card-title py-3 mbr-fonts-style display-7">OUR TASTE</h4>
                     <p class="mbr-text mbr-fonts-style display-7">
                        Mobirise is an easy WEBSITE BUILDER - just drop site elements to your page, add content and style it to look the way you like. <a href="http://mobirise.com">Learn more...</a>
                     </p>
                  </div>
               </div>
               <div class="card p-3 col-12 col-md-6 col-lg-4">
                  <div class="card-img pb-3" style="height: 90px">
                     <span class="mbr-iconfont mbrib-hearth" style="font-size: 52px;"></span>
                  </div>
                  <div class="card-box">
                     <h4 class="card-title py-3 mbr-fonts-style display-7">YOUR CHOICE</h4>
                     <p class="mbr-text mbr-fonts-style display-7">
                        All sites you make with Mobirise are mobile-friendly. You don't have to create a special mobile version of your site. <a href="http://mobirise.com">Learn more...</a>
                     </p>
                  </div>
               </div>
               <div class="card p-3 col-12 col-md-6 col-lg-4">
                  <div class="card-img pb-3">
                     <span class="mbr-iconfont mbri-delivery" style="font-size: 80px;"></span>
                  </div>
                  <div class="card-box">
                     <h4 class="card-title py-3 mbr-fonts-style display-7">24/7 SERVICE</h4>
                     <p class="mbr-text mbr-fonts-style display-7">
                        Mobirise offers many site blocks in several themes, and though these blocks are pre-made, they are flexible. <a href="http://mobirise.com">Learn more...</a>
                     </p>
                  </div>
               </div>
            </div>
         </div>
      </section>
      
		<!-- #include virtual ="/Control/Footer.asp" -->
   </body>
</html>