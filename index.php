<?php
require_once("Utils/debug.php");
require_once("./Utils/View.php");
require_once("./Utils/Controller.php");
session_start();
// $_SESSION['logged_in'] = true;
// dump($_SESSION);
// if (!isset($_SESSION['logged_in']) || $_SESSION['logged_in'] != true) {
//     header("Location: login.php");
//     exit;
// }

error_reporting(0);
ini_set('display_errors','0');
$configuration=require_once("./config/config.php");

$view=new View();
$request=[
    'get'=>$_GET,
    'post'=>$_POST
];

Controller::initConfiguration($configuration);
$controller=new Controller($request);
$controller->run();


