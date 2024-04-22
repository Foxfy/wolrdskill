<?php
	include("connect.php");
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
			  <h3>Competition List</h3>
			  <a href="create.php">Create a competition</a>
		  </header>
		  
<?php
		  $sql = "select c.* , count(ap.province_id) as count_province 
        from compitition c
        left join allowed_province ap on c.id = ap.compitition_id
        group by c.id
        order by c.id desc";
		  
		  $result = mysqli_query($link,$sql);
		  while( $row = mysqli_fetch_array($result))
		  {
?>
		  
		  
		  
		  <section>
			  <a href="detail.php?competition_slug=<?=$row['slug']?>">
				  <article class="competition-box card mb-3">
					  <div class="card-body">
						  <h4><?=$row['name']?></h4>
						  <p class="text-muted mb-0"><?=$row['max_teams']?> Team - 
                                <?=$row['count_province']?>    Province</p>
					  </div>
				  </article>
			  </a>
		  </section>
		  
<?php
		  }
?>
	  </main>
	  
	  
	  
	  
	<script src="js/jquery-3.4.1.min.js"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/popper.min.js"></script> 
  <script src="js/bootstrap-4.4.1.js"></script>
  </body>
</html>