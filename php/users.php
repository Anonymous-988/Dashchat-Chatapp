<?php
    session_start();
    error_reporting(E_ALL & E_NOTICE);
    include_once "config.php";
    $outgoing_id = $_SESSION['unique_id'];
    $sql = "";
    $sql2 = "SELECT unique_id, msg, msgTime FROM users, messages WHERE unique_id NOT IN ({$outgoing_id}) AND (outgoing_msg_id=unique_id OR incoming_msg_id=unique_id) AND (outgoing_msg_id={$outgoing_id} OR incoming_msg_id={$outgoing_id}) ORDER BY msgTime DESC";
    $results = mysqli_query($conn,$sql2);
    $rows = mysqli_fetch_all($results);
    $unique_id = array();
    foreach($rows as $row){
        if (!array_key_exists($row[0], $unique_id)){
            $unique_id[$row[0]] = 1;
        }
    }

    $unique_id = array_keys($unique_id);

    // print_r($rows);
    for($i=0; $i<count($unique_id); $i++){
        if($i==count($unique_id)-1){
            $sql .= "select * from users where unique_id =".$unique_id[$i];
            break;
        }
        $sql .= "select * from users where unique_id =".$unique_id[$i];
        $sql .= " UNION ";
    }
    $query = mysqli_query($conn, $sql);
    $output = "";
    if(mysqli_num_rows($query) == 0){
        $output .= "No users are available to chat";
    }elseif(mysqli_num_rows($query) > 0){
        include_once "data.php";
    }
    echo $output;
    
?>