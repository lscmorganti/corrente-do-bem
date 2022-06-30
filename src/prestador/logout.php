
<?php
    error_reporting(E_ALL ^ E_WARNING);
    session_start();
    unset($_SESSION['login_id']);
    session_destroy();
    echo "<script> location.replace(\"/index.php\"); </script>";
    exit;