<?php

    session_start();

    echo $_SESSION["nome"];
    echo $_SESSION["sobrenome"];
    echo $_SESSION["username"];
    echo $_SESSION["password"];

?>