<?php
    include("../env.php");

    $DB_user=USER;
    $DB_pass=PASSWORD;
    $DB_host=HOST;
    $DB_name=DB_NAME;

    try
    {
        $DB_con = new PDO("mysql:host={$DB_host};dbname={$DB_name}",$DB_user,$DB_pass);
        $DB_con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    catch(PDOException $e)
    {
         $e->getMessage();
    }
?>