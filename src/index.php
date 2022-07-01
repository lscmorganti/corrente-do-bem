<?php
 require_once('config/config.php');
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
    <link rel="shortcut icon" type="image/ico" href="images/favicon.png" />

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
        <div class="header-bg relative home-slide">
            <div class="item">
                <img src="images/slide/slide1.jpg" alt="library">
            </div>
            <div class="item">
                <img src="images/slide/slide2.jpg" alt="library">
            </div>
            <div class="item">
                <img src="images/slide/slide3.jpg" alt="library">
            </div>
            <div class="item">
                <img src="images/slide/slide4.jpg" alt="library">
            </div>
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
                            <li class="active">
                                <a href="#sc1">Home</a>
                            </li>
                            <li>
                                <a href="landing_servicos.php">Serviços</a>
                            </li>
                            <li>
                                <a href="prestador/">Prestador Login</a>
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
                            <h1 class="text-white">Corrente do Bem</h1>
                            <p class="text-white">Conectando quem precisa</p>
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
                <div class="row wow fadeInUp" data-wow-delay="0.5s">
                    <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 ">
                        <div class="panel">
                            <div class="panel-heading">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#servicos">Pesquisa</a></li>
                                </ul>
                            </div>
                            <div class="panel-body">
                                <div class="tab-content">
                                    <div class="tab-pane fade in active" id="servicos">
                                        <form action="landing_servicos.php">
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="Procure por regiao ou tipo de servico">
                                                <div class="input-group-btn">
                                                    <button type="submit" class="btn btn-primary"><i class="icofont icofont-search-alt-2"></i></button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 text-center">
                    <h2>Serviços<strong>Oferecidos</strong></h2>
                    <div class="space-20"></div>
                    <div class="title-bar blue">
                        <ul class="list-inline list-unstyled">
                            <li><i class="icofont icofont-square"></i></li>
                            <li><i class="icofont icofont-square"></i></li>
                        </ul>
                    </div>
                    <div class="space-30"></div>
                    <p>Categorias mais comuns de serviços</p>
                </div>
            </div>
            <div class="space-60"></div>
            <div class="row text-center">
                <!--Show Services Categories-->
                <?php
                    //Fetch all services categories
                    $ret="SELECT * FROM service_categories"; 
                    $stmt= $mysqli->prepare($ret) ;
                    $stmt->execute() ;//ok
                    $res=$stmt->get_result();
                    while($row=$res->fetch_object())
                    {
                        
                ?>
                    <div class="justify col-xs-12 col-sm-6 col-md-4 wow fadeInLeft" data-wow-delay="0.1s">
                        <div class="category-item well blue text-cetnr">
                            <div class="category_icon">
                                <i class="icofont icofont-fix-tools"></i>
                            </div>
                            <div class="space-20"></div>
                            <div class="title-bar">
                                <ul class="list-inline list-unstyled">
                                    <li><i class="icofont icofont-square"></i></li>
                                </ul>
                            </div>
                            <div class="space-20"></div>
                            <a href="landing_servicos.php"><?php echo $row->category_name;?></a>
                        </div>
                    </div>
                <?php }?>
                <!--End services categories -->
            </div>
            <div class="space-60"></div>
            <div class="row">
                <div class="col-xs-12 text-center">
                    <a href="landing_servicos.php" class="btn btn-primary">Veja mais</a>
                </div>
            </div>
            <div class="space-80"></div>
        </div>
    </section>
    <!--Footer-->
    <?php require_once('includes/footer.php');?>

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