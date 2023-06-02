<!doctype html>
<html lang="en" class="semi-dark color-header headercolor5">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="<?= base_url(); ?>assets/images/favicon-32x32.png" type="image/png" />
	<?= $_style; ?>
	<?= $_script; ?>

	<title>e-KP</title>
</head>

<body>


	<!--start wrapper-->
	<div class="wrapper">
		<!--start top header-->
		<?=$_header; ?>
		<!--end top header-->

		<!--start sidebar -->
		<?= $_menu; ?>
		<!--end sidebar -->

		<!--start content-->
		<main class="page-content">
			<!--breadcrumb-->
			
			<?=$_content; ?>
			<!--end breadcrumb-->
			
			<!--end row-->
		</main>
		<!--end page main-->


		<!--start overlay-->
		<div class="overlay nav-toggle-icon"></div>
		<!--end overlay-->

		<!--Start Back To Top Button-->
		<a href="javaScript:;" class="back-to-top"><i class='bx bxs-up-arrow-alt'></i></a>
		<!--End Back To Top Button-->



	</div>
	<!--end wrapper-->


	

	<!--app-->
	<script src="<?= base_url(); ?>assets/js/app.js"></script>


</body>

</html>