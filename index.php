
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Free Bootstrap Themes by Zerotheme dot com - Free Responsive Html5 Templates">
    <meta name="author" content="https://www.Zerotheme.com">
	
    <title>Minat Bakat Yogyakarta</title>
	
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css"  type="text/css">
	
	<!-- Owl Carousel Assets -->
    <link href="owl-carousel/owl.carousel.css" rel="stylesheet">
    <!-- <link href="owl-carousel/owl.theme.css" rel="stylesheet"> -->
	
	<!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">
	 <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
	
	<!-- Custom Fonts -->
    <link rel="stylesheet" href="font-awesome-4.4.0/css/font-awesome.min.css"  type="text/css">
	
	<!-- jQuery and Modernizr-->
	<script src="js/jquery-2.1.1.js"></script>
	
	<!-- Core JavaScript Files -->  	 
    <script src="js/bootstrap.min.js"></script>
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="index-page">
<header>
	<!--Top-->
	<nav id="top">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					
					<strong>Minat Bakat</strong>
				</div>
				<div class="col-md-6">
					<ul class="list-inline top-link link">
						<li><a href="masuk/"><i class="fa fa-comments"></i> Login</a></li>
						<li><a href="daftar/daftar.php"><i class="fa fa-question-circle"></i> Register</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	
	<img src="images/header.jpg" width="100%" height="100%">
	
</header>
	
	<!--Navigation-->
<?php include "menu.php" ?>
	
	<!-- /////////////////////////////////////////Content -->
	<div id="page-content" class="index-page">
		<div class="clearfix no-gutter">
			<div id="main-content" class="col-md-9 fix-right">
			
			<?php include "select.php" ?>
			</div>

			<div id="sidebar" class="col-md-3 fix-left">
				<!---- Start Widget ---->
				<?php include "sidebar.php" ?>
				<!---- Start Widget ---->
				
		</div>
	</div>

	<?php include "footer.php"	 ?>
		
	<!-- JS -->
	<script src="owl-carousel/owl.carousel.js"></script>
    <script>
    $(document).ready(function() {
      $("#owl-slide").owlCarousel({
       autoPlay: 3000,
			items : 4,
			itemsDesktop : [1199,4],
			itemsDesktopSmall : [979,3],
			itemsTablet : [768, 2],
			itemsMobile : [479, 1],
			navigation: true,
			navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
			pagination: false
      });
    });
    </script>
	
	
	<script type="text/javascript" src="js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
	<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		forceParse: 0,
        showMeridian: 1
    });
	$('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
	$('.form_time').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 1,
		minView: 0,
		maxView: 1,
		forceParse: 0
    });
</script>
</body>
</html>
