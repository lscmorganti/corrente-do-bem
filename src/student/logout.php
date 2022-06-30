<?php

    session_start();
    unset($_SESSION['login_id']);
    session_destroy();
    echo "<script> location.replace(\"/index.php\"); </script>";
    exit;