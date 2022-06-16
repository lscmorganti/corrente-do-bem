<?php

    session_start();
    require("env.php");

    echo $_SESSION["nome"];
    echo $_SESSION["sobrenome"];
    echo $_SESSION["username"];
    echo $_SESSION["password"];


    function create_guid() { // Create GUID (Globally Unique Identifier)
        $guid = '';
        $namespace = rand(11111, 99999);
        $uid = uniqid('', true);
        $data = $namespace;
        $data .= $_SERVER['REQUEST_TIME'];
        $data .= $_SERVER['HTTP_USER_AGENT'];
        $data .= $_SERVER['REMOTE_ADDR'];
        $data .= $_SERVER['REMOTE_PORT'];
        $hash = strtoupper(hash('ripemd128', $uid . $guid . md5($data)));
        $guid = substr($hash, 0, 8) . '-' .
        substr($hash, 20, 12);
        substr($hash, 8, 4) . '-' .
        substr($hash, 12, 4) . '-' .
        substr($hash, 16, 4) . '-' .
        return $guid;
    }

    echo create_guid();
    //echo $guid;
/*
    $sql = "INSERT INTO programadores(nome, site) VALUES(:nome, :site)";
    $stmt = $PDO->prepare( $sql );
    $stmt->bindParam( ':nome', $nome );
    $stmt->bindParam( ':site', $site );
    $result = $stmt->execute();

*/
    //cria no TalkJS
    $curl = curl_init();
    curl_setopt_array($curl, array(
      CURLOPT_URL => 'https://api.talkjs.com/v1/t2Lb4YOM/users/1',
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'PUT',
      CURLOPT_POSTFIELDS =>'{
      "name": "Lucas",
      "welcomeMessage": "Benvindo, Lucas",
      "photoUrl": "http://correntedobem.tautologica.com/img/undraw_rocket.svg",
      "role": "Cliente"
    }',
      CURLOPT_HTTPHEADER => array(
        TALKJS_SECRET,
        'Content-Type: application/json'
      ),
    ));
    
    //$response = curl_exec($curl);
    //curl_close($curl);
    //echo $response;    

?>
