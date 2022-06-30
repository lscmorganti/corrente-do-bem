<?php
    //1. Students
    $query ="SELECT COUNT(*) FROM `clientes` ";
    $stmt = $mysqli->prepare($query);
    $stmt ->execute();
    $stmt->bind_result($clientes);
    $stmt->fetch();
    $stmt->close();

    //2. Staffs / Librarians
    $query ="SELECT COUNT(*) FROM `prestadores` ";
    $stmt = $mysqli->prepare($query);
    $stmt ->execute();
    $stmt->bind_result($qtdprestadores);
    $stmt->fetch();
    $stmt->close();

    //3. Service Categories
    $query ="SELECT COUNT(*) FROM `service_categories` ";
    $stmt = $mysqli->prepare($query);
    $stmt ->execute();
    $stmt->bind_result($serviceCats);
    $stmt->fetch();
    $stmt->close();

    //4. Books
    $query ="SELECT count(1) FROM `servicos` ";
    $stmt = $mysqli->prepare($query);
    $stmt ->execute();
    $stmt->bind_result($totservicos);
    $stmt->fetch();
    $stmt->close(); 
