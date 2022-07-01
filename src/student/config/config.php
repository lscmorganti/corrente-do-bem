<?php
    include("../../env.php");

    $dbuser=USER;
    $dbpass=PASSWORD;
    $host=HOST;
    $db=DB_NAME;
    $mysqli=new mysqli($host,$dbuser, $dbpass, $db);
    /*
    if ($mysqli->connect_error) {
        die("Connection failed: " . $mysqli->connect_error);
    } else {
        echo "Connected to MySQL server successfully!";
    } 
    */
?>