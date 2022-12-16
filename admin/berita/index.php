<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE-Edge">
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<title>EDU NEWS</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/css/bootstrap.min.css" integrity="sha512-SbiR/eusphKoMVVXysTKG/7VseWii+Y3FdHrt0EpKgpToZeemhqHeZeLWLhJutz/2ut2Vw1uQEj2MbRF+TVBUA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<?php
	include '../../connect.php';
	$sqlcat = "SELECT * FROM categories ";
	$categories = $conn->query($sqlcat);
	?>
	<nav class="navbar navbar-expand-lg bg-info">
		<div class="container">
			<img src="https://media.istockphoto.com/id/1137971264/vector/airplane-fly-out-logo-plane-taking-off-stylized-sign.jpg?s=612x612&w=0&k=20&c=TH1vDs4wmGnfWapq_e1XYxqzQV_qxaF4_aJWoDJyKNI=" style="width:30px;height:30px">
			<a class="navbar-brand text-primary" href="#">EDU NEWS</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<div class="me-auto"></div>
					<ul class="navbar-nav  mb-2 mb-lg-0">
						<li class="nav-item">
							<a class="btn btn-secondary me-2" aria-current="page" href="../">Home</a>
						</li>
						<li class="nav-item dropdown">
							<form action="/zenius/project/index.php" method="get">
								<a class="btn btn-secondary dropdown-toggle me-2"  href="#" aria-current="page" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Category</a>
								<select multiple class="dropdown-menu form-control"  name="selectcat" id="selectcat" aria-labelledby="dropdownMenuLink" onchange="this.form.submit()">
									<option value="">Category</option>
									<?php 
									foreach($categories as $category): ?>
									
									<option value="<?php echo $category['id']; ?>"><?php echo $category['type']; ?></option>
									<?php endforeach;?>
								</select>
							</form>
						</li>	
					</ul>
			</div>
			<div class="col-2 align-item-center">
				<div class="dropdown">
					<a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
						Selamat Datang, Admin <!-- <?php // echo($_SESSION['username']);?> -->
					</a>	
					<ul class="dropdown-menu">
						<li>
							<form id="logout_form" action="<?php echo($_SERVER['PHP_SELF']);?>" method="post">
								<button class="dropdown-item" type="submit" name="submit">Logout</button>
							</form>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<?php
		$sql = 'SELECT * FROM articles JOIN categories ON articles.category = categories.id JOIN authors ON articles.author = authors.id';
		if($_GET['idberita'] !=''){
			$sql = $sql." WHERE articles.id = ". $_GET['idberita'];
		}
		
		$datas = $conn->query($sql);
		$data = $datas->fetch_assoc();
		
	?>
	<div class="container">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="../">Berita</a></li>
				<li class="breadcrumb-item"><a href="../index.php?selectcat=<?php echo $data['category'] ?>"><?php echo $data['type'] ?></a></li>
				<li class="breadcrumb-item active" aria-current="page"><?php echo $data['title'] ?></li>
			</ol>
		</nav>
		<div class="row">
			<div class="col-1" >
				
			</div>
			<div class="col-11" >
				<div class="card w-100 h-100">
					<div class="card-header">
						<?php echo $data['type'] ;?>
					</div>
					<div class="card-body">
						<h4 class="card-title"><?php echo $data['title'] ;?></h4>
						<h6 class="card-title">" <?php echo $data['name'] ; ?></h6>
						<?php echo($data['content']); ?>
					</div>
				</div>
			</div>	
		</div>	
	</div>
	
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>	
</body>
</html>