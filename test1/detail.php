<?php
	session_start();
	include_once("connect.php");
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Untitled Document</title>
    <!-- Bootstrap -->
	<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
	
  </head>
  <body>
	  
<?php
	  $slug = $_GET['competition_slug'];
	  $sql = "select c.* , count(ap.province_id) as count_province 
            from compitition c
            left join allowed_province ap on c.id = ap.compitition_id
            where c.slug='$slug' ";
	  
	  $result = mysqli_query($link,$sql);
	  $compitition = mysqli_fetch_array($result);
?>
	  
	  <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		  <div class="container">
		  	<a class="navbar-brand" href="index.php">FOOTBALL</a>
		  </div>
	  </nav>
	  
	  
	  <main class="container py-5">
		  <header class="d-flex align-items-center justify-content-between">
			  <h3><?=$compitition['name']?></h3>
			  <a href="#">register</a>
		  </header>
		  
<?php
	if( isset($_SESSION['alert']))
	{
?>
		<div class="alert <?=$_SESSION['alert']['css']?>">
			<?=$_SESSION['alert']['message']?>
		</div>	  
<?php
		unset($_SESSION['alert']);
	}
?>
		  
		  <div class="py-5 text-center">
			  <img src="images/<?=$compitition['banner']?>" width="100%" alt="baner_images" />
		  </div>
		  
		  <section class="my-5">
			  <header>
				  <h5 class="text-center mb-3">Competiiton info</h5>
			  </header>
			  
			  <div class="row justify-content-center">
				  <div class="col-md-3 col-sm-6">
					  <div class="card">
						  <div class="card-body text-center py-3">
							  <h1><?=$compitition['max_teams']?></h1>
							  <p class="text-muted mb-0">Max Teams</p>
						  </div>
					  </div>
				  </div>
				  
				  <div class="col-md-3 col-sm-6">
					  <div class="card">
						  <div class="card-body text-center py-3">
							  <h1><?=$compitition['count_province']?></h1>
							  <p class="text-muted mb-0">Provinces</p>
						  </div>
					  </div>
				  </div>
			  </div>  
		  </section>
		  
		  <section class="my-5">
			  <header class="text-center">
				  <h5>Participater Countries</h5>
			  </header>

			  <div class="row justify-content-center">
<?php
	$sql = "SELECT * FROM allowed_province ap INNER JOIN province p ON ap.province_id = p.id WHERE compitition_id = " .$compitition['id'];
	
	$result = mysqli_query($link,$sql);
	while($row = mysqli_fetch_array($result))
	{
?>
				  <div class="col-md-2 col-sm-6 mt-3">
					  <div class="card">
						  <div class="card-body text-center py-3">
							  <span class="text-muted"><?=$row['name']?></span>
						  </div>
					  </div>
				  </div>
<?php
	}
?>
			  </div>
		  </section>
		  
		  
	  </main>
	  
	  
	  
	  
	  
	  
	<script src="js/jquery-3.4.1.min.js"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/popper.min.js"></script> 
	<script src="js/bootstrap-4.4.1.js"></script>
  </body>
</html>