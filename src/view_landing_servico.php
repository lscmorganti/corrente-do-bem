<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
    require_once('config/config.php');
    $servico_id = $_GET['servico_id'];
    $ret="SELECT * FROM  servicos WHERE servico_id = ?"; 
    $stmt= $mysqli->prepare($ret) ;
    $stmt->bind_param('i', $servico_id);
    $stmt->execute() ;//ok
    $res=$stmt->get_result();
    while($row=$res->fetch_object())
    {
    //load default service cover page if service is missing a cover image
    if($row->servico_coverimage == '')
    {
        $cover_image = "<img src='assets/img/servicos/service_category.jpg' class='img-fluid img-thumbnail' alt='Service Image'>";
    }
    else
    {
        $cover_image = "<img src='assets/img/servicos/$row->servico_coverimage' class='img-fluid img-thumbnail' alt='Service Image'>";

    }
?>
<!doctype html>
<html class="no-js" lang="pt-br">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Corrente do Bem - Conectando quem precisa</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Place favicon.ico in the root directory -->
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    <link rel="shortcut icon" type="image/ico" href="images/favicon.ico" />

    <!-- Plugin-CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/icofont.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/cardslider.css">
    <link rel="stylesheet" href="css/responsiveslides.css">

    <!-- Main-Stylesheets -->
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/overright.css">
    <link rel="stylesheet" href="css/theme.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body data-spy="scroll" data-target="#mainmenu" data-offset="50">
   
    <header class="relative" id="sc1">
        <!-- Header-background-markup -->
        <div class="overlay-bg relative">
            <img src="images/slide/slide1.jpg" alt="">
        </div>
        <!-- Mainmenu-markup-start -->
        <div class="mainmenu-area navbar-fixed-top" data-spy="affix" data-offset-top="10">
            <nav class="navbar">
                <div class="container">
                    <div class="navbar-header">
                        <div class="space-10"></div>
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainmenu">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <!--Logo-->
                        <a href="#sc1" class="navbar-left show"><img src="images/logo.png" alt="library"></a>
                        <div class="space-10"></div>
                    </div>
                    <!--Toggle-button-->

                    <!--Mainmenu list-->
                    <div class="navbar-right in fade" id="mainmenu">
                        <ul class="nav navbar-nav nav-white text-uppercase">
                            <li class="">
                                <a href="index.php">Home</a>
                            </li>
                            <li class="active">
                                <a href="landing_servicos.php">Serviços</a>
                            </li>
                            <li>
                                <a href="student/">Student Login</a>
                            </li>
                            <li>
                                <a href="librarian/">Librarian Login</a>
                            </li>
                            <li>
                                <a href="login.php">Admin Login</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div class="space-100"></div>
        <!-- Mainmenu-markup-end -->
        <!-- Header-jumbotron -->
        <div class="space-100"></div>
        <div class="header-text">
            <div class="container">
                <div class="row wow fadeInUp">
                    <div class="col-xs-12 col-sm-10 col-sm-offset-1 text-center">
                        <div class="jumbotron">
                            <h1 class="text-white"><?php echo $row->servico_title;?></h1>
                        </div>
                        <div class="title-bar white">
                            <ul class="list-inline list-unstyled">
                                <li><i class="icofont icofont-square"></i></li>
                                <li><i class="icofont icofont-square"></i></li>
                            </ul>
                        </div>
                        <div class="space-40"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="space-100"></div>
        <!-- Header-jumbotron-end -->
    </header>
    <section>
        <div class="space-80"></div>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-12">
                    <div class="space-30"></div>
                    <div class="row">
                            <div class="col-xs-12 col-md-12">
                                <div class="category-item well yellow">
                                    <div class="media">
                                        <div>
                                            <?php echo $cover_image;?>
                                        </div>
                                        <div class="media-body">
                                            <h5><?php echo $row->servico_title;?></h5>
                                            <h6>By <?php echo $row->servico_login_id;?></h6>
                                            <div class="space-10"></div>
                                            <ul class="list-inline list-unstyled rating-star">
                                                <li class="active"><i class="icofont icofont-star"></i></li>
                                                <li class="active"><i class="icofont icofont-star"></i></li>
                                                <li class="active"><i class="icofont icofont-star"></i></li>
                                                <li class="active"><i class="icofont icofont-star"></i></li>
                                                <li><i class="icofont icofont-star"></i></li>
                                            </ul>
                                            <p><?php echo $row->servico_summary;?></p>
                                            <div class="space-10"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!--Servico-->
                    </div>
                    <div class="space-60"></div>
                </div>
            </div>
        </div>
        <div class="space-80"></div>
    </section>

    <!--Footer-->
    <?php require_once('includes/footer.php');?>
    <!-- Footer-Area-End -->

    <!-- Vandor-JS -->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <!-- Plugin-JS -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/responsiveslides.min.js"></script>
    <script src="js/jquery.cardslider.min.js"></script>
    <script src="js/pagination.js"></script>
    <script src="js/scrollUp.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/plugins.js"></script>
    <!-- Active-JS -->
    <script src="js/main.js"></script>

</body>

</html>
<?php }?>