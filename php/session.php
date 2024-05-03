<?php

$diff = time() - $_SESSION['loginTime'];
if (!isset($_SESSION['loginTime']) || $diff>(1800)) {
    session_destroy();
    echo "<script>alert('Session Destroyed');</script>";
    header("location: login.php");
}

?>