<?php
    session_start();
    include('config/config.php');
    include('config/checklogin.php');
    check_login();
     if(isset($_POST['update_prestador']))
    {
            $error = 0;
            if (isset($_POST['prestador_name']) && !empty($_POST['prestador_name'])) {
                $prestador_name=mysqli_real_escape_string($mysqli,trim($_POST['prestador_name']));
            }else{
                $error = 1;
                $err="Name Cannot Be Empty";
            }
            if (isset($_POST['prestador_number']) && !empty($_POST['prestador_number'])) {
                $prestador_number=mysqli_real_escape_string($mysqli,trim($_POST['prestador_number']));
            }else{
                $error = 1;
                $err="prestador Number Cannot Be empty";
            }
            if (isset($_POST['prestador_email']) && !empty($_POST['prestador_email'])) {
                $prestador_email =mysqli_real_escape_string($mysqli,trim($_POST['prestador_email']));
            }else{
                $error = 1;
                $err="prestador Email Cannot Be Empty";
            }
            if (isset($_POST['prestador_phone_number']) && !empty($_POST['prestador_phone_number'])) {
                $prestador_phone_number=mysqli_real_escape_string($mysqli,trim($_POST['prestador_phone_number']));
            }else{
                $error = 1;
                $err="Phone Number Cannot Be Empty";
            }
            
                $prestador_name = $_POST['prestador_name'];
                $prestador_number = $_POST['prestador_number'];
                $prestador_email = $_POST['prestador_email'];
                $prestador_phone_number = $_POST['prestador_phone_number'];
                $prestador_address = $_POST['prestador_address'];
                $prestador_profile_picture = $_FILES["prestador_profile_picture"]["name"];
                move_uploaded_file($_FILES["prestador_profile_picture"]["tmp_name"],"../assets/img/prestador/".$_FILES["prestador_profile_picture"]["name"]);
                $prestador_bio = $_POST['prestador_bio'];  
                $login_id = $_SESSION['login_id'];

                //Insert Captured information to a database table
                $postQuery="UPDATE prestadores SET prestador_bio=?, prestador_name =?, prestador_number =?, prestador_email =?, prestador_phone_number =?, prestador_address =?, prestador_profile_picture =? WHERE prestador_login_id =?";
                $postStmt = $mysqli->prepare($postQuery);
                //bind paramaters
                $rc=$postStmt->bind_param('ssssssss', $prestador_bio, $prestador_name, $prestador_number, $prestador_email, $prestador_phone_number, $prestador_address, $prestador_profile_picture,  $login_id);
                $postStmt->execute();
                //declare a varible which will be passed to alert function
                if($postStmt)
                {
                    $success = "prestador Account Updated" && header("refresh:1; url=profile.php");
                }
                else 
                {
                    $err = "Please Try Again Or Try Later";
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
        $login_id = $_SESSION['login_id'];
        $ret="SELECT * FROM  prestadores WHERE prestador_login_id = '$login_id'"; 
        $stmt= $mysqli->prepare($ret) ;
        $stmt->execute();
        $res=$stmt->get_result();
        while($lib=$res->fetch_object())
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
                                <li class="breadcrumb-item"><a href="javascript:void(0);">Profile</a></li>
                                <li class="breadcrumb-item active" aria-current="page"><span><?php echo $lib->prestador_name;?></span></li>
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
                                            <h4>Fill All Fields</h4>
                                        </div>                                                                        
                                    </div>
                                </div>
                                <div class="widget-content widget-content-area">
                                    <form method="POST" enctype="multipart/form-data">
                                        <div class="form-row mb-4">
                                            <div class="form-group col-md-6">
                                                <label for="inputEmail4">Full Name</label>
                                                <input type="text" value="<?php echo $lib->prestador_name;?>" name="prestador_name" class="form-control">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="inputPassword4">prestador Number</label>
                                                <input type="text" name="prestador_number" readonly value="<?php echo $lib->prestador_number;?>" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-row mb-4">
                                            <div class="form-group col-md-6">
                                                <label for="inputAddress">Email Address</label>
                                                <input type="email" name="prestador_email" value="<?php echo $lib->prestador_email;?>" class="form-control">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="inputAddress2">Phone Number</label>
                                                <input type="text" name="prestador_phone_number" value="<?php echo $lib->prestador_phone_number;?>" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-row mb-4">
                                            <div class="form-group col-md-6">
                                                <label for="inputCity">Address</label>
                                                <input type="text" name="prestador_address" value="<?php echo $lib->prestador_address;?>" class="form-control" id="inputCity">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="inputState">Profile Picture</label>
                                                <input type="file" name="prestador_profile_picture" class="form-control btn btn-outline-success">                                                
                                            </div>
                                            <!--
                                            <div class="form-group col-md-2">
                                                <label for="inputZip">Account Status</label>
                                                <select name="prestador_account_status" class="form-control" >
                                                    <option><?php echo $lib->prestador_account_status;?></option>
                                                    <option>Can Login</option>
                                                    <option>Denied Login</option>
                                                </select>
                                            </div>
                                            -->
                                                                                     
                                        </div>
                                        <div class="form-row mb-4">
                                            <div class="form-group col-md-12">
                                                <label for="inputAddress">Bio | About | Description</label>
                                                <textarea  name="prestador_bio" rows="5" class="form-control"><?php echo $lib->prestador_bio;?></textarea>
                                            </div>
                                        </div>
                                      <button type="submit" name="update_prestador" class="btn btn-primary mt-3">Update</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php
                require_once('partials/_footer.php');
                }
            ?>
        </div>
        <!--  END CONTENT PART  -->
    </div>
    <?php require_once('partials/_scripts.php');?>   
</body>

</html>