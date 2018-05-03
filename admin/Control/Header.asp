
<head>
    <meta charset="utf-8">
    <title><%= title %></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <link rel="stylesheet" type="text/css" href="/admin/css/fonts.googleapis.css" />
	<link rel="stylesheet" type="text/css" href="/admin/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="/admin/js/fancybox/jquery.fancybox.css" />
	<link rel="stylesheet" type="text/css" href="/admin/css/sb-admin.css" />
	<link rel="stylesheet" type="text/css" href="/admin/css/Admin.css" />
	<link rel="stylesheet" type="text/css" href="/admin/css/font-awesome.min.css" />
	
	<link href="/admin/Content/jstree/themes/proton/style.css" rel="stylesheet" />

	<!--<link href="/css/bootstrap-responsive.css" rel="stylesheet">-->
	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<script type="text/javascript">
		var app_base = '/';
	</script>
	<script type="text/javascript" src="/admin/js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="/admin/js/jquery.unobtrusive-ajax.js"></script>
	<script type="text/javascript" src="/admin/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/admin/js/fancybox/jquery.fancybox.js"></script>
	<script type="text/javascript" src="/admin/js/pushy/pushy.js"></script>
	<script type="text/javascript" src="/admin/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="/admin/js/jquery.validate.unobtrusive.min.js"></script>
	<script type="text/javascript" src="/admin/js/admin.js"></script>
	<script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="/ckfinder/ckfinder.js"></script>
    <script src="/admin/Content/jstree/jstree.min.js"></script>

    <script>
        function selectFileWithCKFinder( elementId ) {
            CKFinder.popup( {
                chooseFiles: true,
                width: 800,
                height: 600,
                onInit: function( finder ) {
                    finder.on( 'files:choose', function( evt ) {
		                var file = evt.data.files.first();
				        var output = document.getElementById( elementId );
				        output.value = file.getUrl();
		            } );

			        finder.on( 'file:choose:resizedImage', function( evt ) {
			            var output = document.getElementById( elementId );
				        output.value = evt.data.resizedUrl;
			        } );
		        }
	        } );
        }
    </script>
</head>
