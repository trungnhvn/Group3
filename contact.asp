<%
   page = "Contact"
   title = "Liên hệ"
%>
<!-- #include virtual ="/include/main.asp" -->
<!-- #include virtual ="/include/news.asp" -->
<%

	IF Request.ServerVariables("REQUEST_METHOD")= "POST" THEN
		name = request.form("Name")
		phone = request.form("Phone")
		email = request.form("Email")
		content = request.form("Message")
			
		IF name = "" THEN 
			errortxt = "Tên danh mục không được để trống!"
		ELSE
			CreateContact name,phone,email,content
					
		END IF
	END IF
%>
<!DOCTYPE html>
<html >
<head>
    <!-- #include virtual ="/Control/Head.asp" -->
	<link rel="stylesheet" href="font-awsome/css/fontawesome-all.min.css">
</head>
<body>
 <!-- #include virtual ="/Control/Menu.asp" -->

 
<section class="cid-qQkN6JsTW9" id="image2-1">

    <figure class="mbr-figure">
        <div class="image-block" style="width: 100%;">
            <img src="assets/images/mbr-1620x1080.jpg"  title="">
            
        </div>
    </figure>
</section>

<section class="mbr-section article content12 cid-qQkNcuj6xz" id="content12-3" style="padding-top:30px">
     

    <div class="container">
        <div class="media-container-row">
            <div class="mbr-text counter-container col-12 col-md-8 mbr-fonts-style display-5">
                <div class="row" style="display: grid;">
                    <div><i class="far fa-check-circle"></i><strong>Cửa hàng <%= GetSetting("Name") %></strong></div>
                    <div><i class="far fa-check-circle"></i><em>Địa chỉ: <%= GetSetting("Addren") %></em></div>
                    <div><i class="far fa-check-circle"></i><em>Email: <%= GetSetting("Email") %></em></div>
                    <div><i class="far fa-check-circle"></i><em>SĐT: <%= GetSetting("Phone") %></em></div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="mbr-section form4 cid-qQkNnMxPkW" id="form4-5">

    <div class="container">
        <div class="row" style="padding-bottom: 20px;padding-top: 20px;">
            <div class="col-md-6">
                <div class="google-map" style="height: 100%;width:100%;"><iframe frameborder="0" style="border:0px;height: 100%;width:100%;" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0Dx_boXQiwvdz8sJHoYeZNVTdoWONYkU&amp;q=place_id:EjlOZ3V54buFbiBUaOG7iyBNaW5oIEtoYWksIFRwLiBWaW5oLCBOZ2jhu4cgQW4sIFZp4buHdCBOYW0iSCpGChQKEgkpVhZ9cM45MRGy01Hs0W2huhIUChIJrR1aC2TOOTERobprhZBoJvgaGAoKDfXPIAsVZqL8PhIKDUYKIgsVlBb-Pg" allowfullscreen=""></iframe></div>
            </div>
            <div class="col-md-6">
                <h2 class="pb-3 align-left mbr-fonts-style display-2" style="font-family: arial">Liên lạc với chúng tôi</h2>
                <div>
                    <div class="icon-block pb-3">
                        
                        
                    </div>
                    
                </div>
                <div data-form-type="formoid">
                    <div data-form-alert="" hidden="">
                        Thanks for filling out the form!
                    </div>
                    <form class="block mbr-form" action="/Contact.asp" method="POST" data-form-title="Mobirise Form">
                        <div class="row">
                            <div class="col-md-6 multi-horizontal" data-for="name">
                                <input type="text" class="form-control input" name="Name" data-form-field="Name" placeholder="Họ tên" required="" id="name-form4-5">
                            </div>
                            <div class="col-md-6 multi-horizontal" data-for="phone">
                                <input type="text" class="form-control input" name="Phone" data-form-field="Phone" placeholder="SĐT" required="" id="phone-form4-5">
                            </div>
                            <div class="col-md-12" data-for="email">
                                <input type="text" class="form-control input" name="Email" data-form-field="Email" placeholder="Email" required="" id="email-form4-5">
                            </div>
                            <div class="col-md-12" data-for="message">
                                <textarea class="form-control input" name="Message" rows="3" data-form-field="Message" placeholder="Tin nhắn" style="resize:none" id="message-form4-5"></textarea>
                            </div>
                            <div class="input-group-btn col-md-12" style="margin-top: 10px;">
                                <button type="submit" class="btn btn-primary btn-form display-4">SEND MESSAGE</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- #include virtual ="/Control/Footer.asp" -->
 
</body>
</html>