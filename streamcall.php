<?php 
    session_start();
    include "php/session.php";
    include_once "php/config.php";
    if(!isset($_SESSION['unique_id'])){
        header("location: login.php");
    }

    $result = mysqli_query($conn, "SELECT fname FROM users WHERE unique_id = {$_SESSION['unique_id']}");
    if(!$result){
        echo mysqli_error($conn);
    }
    $username = mysqli_fetch_array($result);
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>DashChat - Call</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='videoStyle.css'>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300&family=Permanent+Marker&display=swap" rel="stylesheet">
</head>
<body>
    <main>
        <!-- <div id="users-list"></div> -->

        
        <div id="join-wrapper">
            <h1 id="site-title">DashCall</h1>
            <input id="username" type="text" placeholder="Enter Username:" value="<?php echo $username[0]?>" hidden/>
            <input id="roomid" type="text" placeholder="Enter Room Id: " />
            <button id="join-btn">Join Call</button>
        </div>
        <div id="user-streams"></div>
        


        <!-- Wrapper for join button -->
        <div id="footer">
            <div class="icon-wrapper">
                <img class="control-icon" id="camera-btn" src="./assets/video.svg" />
                <p>Cam</p>
            </div>

            <div class="icon-wrapper">
                <img class="control-icon" id="mic-btn" src="./assets/microphone.svg" />
                <p>Mic</p>
            </div>

            <div class="icon-wrapper">
                <img class="control-icon" id="leave-btn" src="./assets/end-call-icon.svg" />
                <p>Leave</p>
            </div>
        </div>
    </main>
    <script src="https://download.agora.io/sdk/release/AgoraRTC_N.js"></script>
    <script src='script.js'></script>
</body>
</html>