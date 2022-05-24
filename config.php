<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

define( 'HOST', 'corrente-do-bem-mysqldb.cxmowgfbjuf5.us-east-1.rds.amazonaws.com' );
define( 'USER', 'admin' );
define( 'PASSWORD', '' );
define( 'DB_NAME', 'corrente-do-bem-mysqldb' );
 
/* Attempt to connect to MySQL database */
try{
    $pdo = new PDO("mysql:host=" . HOST . ";dbname=" . DB_NAME, USER, PASSWORD);
    // Set the PDO error mode to exception
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e){
    die("ERROR: Could not connect. " . $e->getMessage());
}
?>