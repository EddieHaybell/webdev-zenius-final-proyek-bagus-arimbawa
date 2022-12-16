<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE-Edge">
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<title>EDU AIRLINES</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/css/bootstrap.min.css" integrity="sha512-SbiR/eusphKoMVVXysTKG/7VseWii+Y3FdHrt0EpKgpToZeemhqHeZeLWLhJutz/2ut2Vw1uQEj2MbRF+TVBUA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer">
	
</head>
<body>
	<?php
		session_start();
		if(isset($_SESSION['status']) != "login"){
			header("location:/zenius/project/");
		}
		
		if(isset($_POST['submit'])){
			session_destroy();
			header("location:/zenius/project/admin/");
		}
	?>
	<nav class="navbar navbar-light bg-info p-3">
		<div class="d-flex col-12 col-md-3 col-lg2 mb-2 mb-lg-0 flex-wrap flex-md-nowrap justify-content-between">
			<a class="navbar-brand" href="#">Admin Panel</a>
			<button class="navbar-toggler d-md-none collapsed mb-3" type="button" data-toggle="collapse" data-target="#sidebar" aria-controls="sidebar" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler"></span>
			</button>
		</div>
		<div class="col-12 col-md-5 col-lg-8 d-flex align-item-center justify-content-md-end mt-3 mt-md-0">
			<div class="dropdown">
				<a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					Selamat Datang,  <?php  echo($_SESSION['username']);?> 
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
	</nav>
	<div class="container-fluid">
		<div class="row">
			<nav id="sidebar" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="position-sticky">
					<ul class="nav flex-column">
						<li class="nav-item">
							<a class="nav-link" aria-current="page" href="/zenius/project/admin/dashboard.php">
								<!--<i class="fa-solid fa-home px-2"></i>-->
								<span>Beranda</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link active" aria-current="page" href="/zenius/project/admin/list.php">
								<!--<i class="fa-solid fa-user px-2"></i>-->
								<span>Daftar Berita</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link " aria-current="page" href="/zenius/project/admin/add.php">
								<!--<i class="fa-solid fa-plane px-2"></i>-->
								<span>Tambah Berita</span>
							</a>
						</li>
					</ul>
				</div>
			</nav>
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 py-4">
				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/zenius/project/admin/dashboard.php">Admin</a></li>
					<li class="breadcrumb-item active" aria-current="page">List</li>
				</ol>
				</nav>
				<h1 class="h2">Daftar Artikel</h1>
				<p>Lorem ipsum dolor sit amet, comsectetur adipiscing elit.</p>
				<?php
				include '../connect.php';
				
				$sql = 'SELECT * FROM articles JOIN categories ON articles.category = categories.id JOIN authors ON articles.author = authors.id';
				
				$datas = $conn->query($sql);
				
				foreach($datas as $data):
				?>
				<div class="row my-4">
					<div class="col-12 ">
						<div class="card h-100 w-90">
							<div class="card-header"><?php echo($data['type']) ;?></div>
							<div class="card-body">
								<h6 class="card-title"><?php echo($data['title']); ?></h6>
								<?php echo($data['content']); ?>
							</div>
						</div>
					</div>
				</div>
				<?php endforeach;?>
			</main>
		</div>
	</div>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/js/bootstrap.bundle.min.js" integrity="sha512-i9cEfJwUwViEPFKdC1enz4ZRGBj8YQo6QByFTF92YXHi7waCqyexvRD75S5NVTsSiTv7rKWqG9Y5eFxmRsOn0A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/js/all.min.js" integrity="sha512-rpLlll167T5LJHwp0waJCh3ZRf7pO6IT1+LZOhAyP6phAirwchClbTZV3iqL3BMrVxIYRbzGTpli4rfxsCK6Vw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>

</html>