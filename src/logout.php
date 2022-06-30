
<?php
    error_reporting(E_ALL ^ E_WARNING);
    session_start();
    unset($_SESSION['login_id']);
    unset($_SESSION['login_user_name']);
    session_destroy();
    //exit(header("Location: /index.php"));
    echo "<script> location.replace(\"index.php\"); </script>";
?>    