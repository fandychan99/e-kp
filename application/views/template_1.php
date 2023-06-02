<!doctype html>
<html lang="en" class="minimal-theme">

<head>
    <?= $_style; ?>
  
   <title>FiHealth</title>
</head>

<body>
    <!--start wrapper-->
    <div class="wrapper">
        <!--start top header-->
        <?=$_header; ?>
        <!--end top header-->

        <?=$_menu; ?>

        <!--start content-->
        <main class="page-content">
            <?=$_content; ?>
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
    <?=$_script; ?>


</body>

</html>