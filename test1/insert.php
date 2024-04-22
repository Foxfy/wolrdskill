<?php
session_start();
include_once("connect.php");

if(empty($_POST))
    header('location:create.php');


$name = $_POST['name'];
$slug = $_POST['slug'];
$max_teams = $_POST['max_teams'];
$banner = $_FILES['banner']['name'];
copy($_FILES['banner']['tmp_name'] , 'images/'.$_FILES['banner']['name'] );

try {

    $sql = "insert into compitition(id,name,slug,max_teams,banner) 
                        values(NULL,'$name','$slug','$max_teams','$banner') ";
    $inserted = mysqli_query($link,$sql);
    $insert_id = mysqli_insert_id($link);

    foreach($_POST['allowed_provinces'] as $province_id){
        $sql ="insert into allowed_province(id,compitition_id,province_id) 
                                     values(NULL,'$insert_id','$province_id')";
        $inserted = mysqli_query($link,$sql);
    }

    $_SESSION['alert']['message'] = "Competition created successfully";
    $_SESSION['alert']['css'] = "alert-success";

    header('location:detail.php?competition_slug='.$slug);

} catch (Exception $e) {
    $_SESSION['alert']['message'] = "This slug is already in use.";
    $_SESSION['alert']['css'] = "alert-danger";
    
    $_SESSION['post'] = $_POST;
    $_SESSION['banner'] = $banner;
    header('location:create.php');
}

?>
