<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
    session_start();
    include('config/config.php');
    include('config/checklogin.php');
    check_login();
    
        if(isset($_POST['addservico']))
        {
            //Prevent Posting Blank Values
            if (empty($_POST['servico_title'])) 
            {
                $err="Todos os campos são obrigatórios";
            }
            else
            {  
                $category = $_GET['category'];
                $servico_title = $_POST['servico_title'];
                $servico_coverimage = $_FILES['servico_coverimage']['name'];
                move_uploaded_file($_FILES["servico_coverimage"]["tmp_name"],"../assets/img/servicos/".$_FILES["servico_coverimage"]["name"]);
                $servico_status = $_POST['servico_status'];
                $servico_summary = $_POST['servico_summary'];
                     
                //Insert Captured information to a database table
                $postQuery="INSERT INTO servicos (servico_category_id, servico_title, servico_login_id, servico_coverimage, servico_status, servico_summary) VALUES(?,?,?,?,?,?)";
                $postStmt = $mysqli->prepare($postQuery);
                //bind paramaters
                $rc=$postStmt->bind_param('ssssss', $category, $servico_title, $_SESSION['login_id'], $servico_coverimage, $servico_status, $servico_summary);
                $postStmt->execute();
                //declare a varible which will be passed to alert function
                if($postStmt)
                {
                    $success = "Serviço Added" && header("refresh:1; url=add_service_per_category.php?category=$category");
                }
                else 
                {
                    $err = "Tente novamente :(";
                } 
            }
        }    
            
    
    require_once('partials/_head.php');
    require_once('config/code-generator.php');
?>
<body>
    <!-- BEGIN LOADER -->
    <div id="load_screen"> <div class="loader"> <div class="loader-content">
        <div class="spinner-grow align-self-center"></div>
    </div></div></div>
    <!--  END LOADER -->

    <!--  BEGIN NAVBAR  -->
    <?php 
        require_once('partials/_navbar.php');
        $category = $_GET['category'];
        $ret="SELECT * FROM service_categories  WHERE category_id = '$category' "; 
        $stmt= $mysqli->prepare($ret) ;
        $stmt->execute();
        $res=$stmt->get_result();
        while($cat=$res->fetch_object())
        {
    ?>
    <!--  END NAVBAR  -->

    <!--  BEGIN NAVBAR  -->
    <div class="sub-header-container">
        <header class="header navbar navbar-expand-sm">
            <a href="javascript:void(0);" class="sidebarCollapse" data-placement="bottom"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-menu"><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg></a>
            <ul class="navbar-nav flex-row">
                <li>
                    <div class="page-header">
                        <nav class="breadcrumb-one" aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
                                <li class="breadcrumb-item"><a href="javascript:void(0);">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="javascript:void(0);">Serviços</a></li>
                                <li class="breadcrumb-item"><a href="javascript:void(0);">Categorias de Serviço</a></li>
                                <li class="breadcrumb-item"><a href="javascript:void(0);"><?php echo $cat->category_name;?></a></li>
                                <li class="breadcrumb-item active" aria-current="page"><span>Adicionar anúncio</span></li>
                            </ol>
                        </nav>
                    </div>
                </li>
            </ul>

        </header>
    </div>
    <!--  END NAVBAR  -->

    <!--  BEGIN MAIN CONTAINER  -->
    <div class="main-container" id="container">

        <div class="overlay"></div>
        <div class="search-overlay"></div>

        <!--  BEGIN SIDEBAR  -->
        <?php require_once('partials/_sidebar.php');?>
        <!--  END SIDEBAR  -->
        <!--  BEGIN CONTENT PART  -->
        <div id="content" class="main-content">
            <div class="container">
                <div class="container">
                    <br>
                    <div class="row">
                        <div id="flFormsGrid" class="col-lg-12 layout-spacing">
                            <div class="statbox widget box box-shadow">
                                <div class="widget-header">
                                    <div class="row">
                                        <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                            <h4>Preencha todos os campos</h4>
                                        </div>                                                                        
                                    </div>
                                </div>
                                <div class="widget-content widget-content-area">
                                    <form method="POST" enctype="multipart/form-data">
                                        <div class="form-row mb-4">
                                            <div class="form-group col-md-6">
                                                <label for="inputEmail4">Título do Serviço</label>
                                                <input type="text" name="servico_title" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-row mb-4">
                                            <div class="form-group col-md-6">
                                                <label for="inputEmail4">Imagem do anúncio</label>
                                                <input type="file" name="servico_coverimage" class="form-control btn btn-outline-success">
                                            </div>
                                            <div class="form-group col-md-6" style="display:none">
                                                <label for="inputEmail4">Status do serviço</label>
                                                <input type="text" name="servico_status"  value="Available" class="form-control btn btn-outline-success">
                                            </div>
                                        </div>
                                        <div class="form-row mb-4">
                                            <div class="form-group col-md-12">
                                                <label for="inputAddress">Descrição do anúncio</label>
                                                <textarea  name="servico_summary" rows="10" class="form-control"></textarea>
                                            </div>
                                        </div>
                                      <button type="submit" name="addservico" class="btn btn-primary mt-3">Adicionar Anúncio</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php
                require_once('partials/_footer.php');
            ?>
        </div>
        <!--  END CONTENT PART  -->
    </div>
    <?php require_once('partials/_scripts.php'); }?>   
</body>

</html>