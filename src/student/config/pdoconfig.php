<?php
    $DB_host = "db";
    $DB_user = "admin";
    $DB_pass = "a43zend9";
    $DB_name = "library_management_system";
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