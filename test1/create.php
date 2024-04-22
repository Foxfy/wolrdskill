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
	  
	  <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		  <div class="container">
		  	<a class="navbar-brand" href="index.php">FOOTBALL</a>
		  </div>
	  </nav>
	  
	  
	  <main class="container py-5">
		  <header class="mb-4 d-flex align-items-center justify-content-between">
			  <h3 class="mb-0">Create a competition</h3>
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
		  </header>
		  
		  <section class="form">
			  <div class="row">
				  <div class="col-md-4">
					  <form action="insert.php" method="post" enctype="multipart/form-data">
						  <div class="row">
						  <div class="col-12">
							  <div class="mb-3">
								  <label for="name">Name</label>
								  <input type="text"
										 class="form-control"
										 id=""
										 name="name"
										 value="<?=$_SESSION['post']['name']??''?>"
										 required />
							  </div>
						  </div>
						</div>
						  <div class="row">
							  <div class="col-12">
								  <div class="mb-3">
									  <label for="slug">Slug</label>
									  <input type="text"
										 class="form-control"
										 id=""
										 name="slug"
										 value="<?=$_SESSION['post']['slug']??''?>"
										 required />
								  </div>
							  </div>
						  </div>
						  <div class="row">
							  <div class="col-12">
								  <div class="mb-3">
									  <label for="max_teams">Max Teams</label>
									  <input type="number"
										 class="form-control"
										 id=""
										 name="max_teams"
										 value="<?=$_SESSION['post']['max_teams']??''?>"
										 required
											 min="6" />
								  </div>
							  </div>
						  </div>
						  <div class="row">
							  <div class="col-12">
								  <div class="mb-3">
									  <label for="allowed_provinces">Allowed Countries</label>
									  <select multiple 
											  required 
											  name="allowed_provinces[]" 
											  class="form-control" 
											  id="" 
											  value="">
										  
<?php
			$sql = "select * from province";
			$result = mysqli_query($link,$sql);
			while($row = mysqli_fetch_array($result))
			{
				if( in_array( $row['id'] , $_SESSION['post']['allowed_provinces']??[]))
				{
					$selected = 'selected';
				}else{
					$selected = '';
				}
?>
										  <option value="<?=$row['id']?>" <?=$selected?>>
											  <?=$row['name']?>
										  </option>
										  
<?php
			}
?>
									  </select>
								  </div>
							  </div>
						  </div>
						  <div class="row">
							  <div class="col-12">
								  <div class="mb-3">
									  <label for="banner">Banner</label>
									  
<?php
			if(isset($_SESSION['banner']))
			{
?>
				<img src="images/<?=$_SESSION['banner']?>"/>						  
<?php
			}
?>
									  <input type="file"
										 class="form-control-file"
										 id=""
										 name="banner"
										 value=""
										 required />		  
								  </div>
							  </div>
						  </div>
						  <div class="row mt-2">
							  <div class="col-8">
								  <button class="btn btn-primary w-100" type="submit">
									  Save
								  </button>
							  </div>
							  <div class="col-4">
								  <a href="index.php" class="btn bg-light text-primary w-100">Back</a>
							  </div>
						  </div>
					  </form>
				  </div>
			  </div>
		  </section>
	  </main>
	  
	  
	  
	  
	  
	  
	  
	  
	<script src="js/jquery-3.4.1.min.js"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/popper.min.js"></script> 
	<script src="js/bootstrap-4.4.1.js"></script>
  </body>
</html>