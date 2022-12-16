<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE-Edge">
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<title>EDU AIRLINES</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/css/bootstrap.min.css" integrity="sha512-SbiR/eusphKoMVVXysTKG/7VseWii+Y3FdHrt0EpKgpToZeemhqHeZeLWLhJutz/2ut2Vw1uQEj2MbRF+TVBUA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer">
	<script src="https://cdn.tiny.cloud/1/x4betj7j07jmxovr3vgr82x34ejt6pg1jlnti5nyv6ae9fqd/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
      tinymce.init({
	  selector: 'textarea#tiny',
	  plugins: '| image',
	  
	  });
	  
  
    </script>
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
		include '../connect.php';
		$sql1 = "SELECT * FROM categories";
		$datas1 = $conn->query($sql1);
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
							<a class="nav-link " aria-current="page" href="/zenius/project/admin/list.php">
								<!--<i class="fa-solid fa-user px-2"></i>-->
								<span>Daftar Berita</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link active" aria-current="page" href="/zenius/project/admin/add.php">
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
					<li class="breadcrumb-item active" aria-current="page">Add</li>
				</ol>
				</nav>
				<h1 class="h2">Tambah Artikel</h1>
				<p>Lorem ipsum dolor sit amet, comsectetur adipiscing elit.</p>
				
				<div class="row my-4">
					<div class="col-12 ">
						<div class="card h-100 w-90">
							<div class="card-body">
								<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" class="card-body cardbody-color p-lg-5">
									<div class="text-center">
										<img src="https://media.istockphoto.com/id/1137971264/vector/airplane-fly-out-logo-plane-taking-off-stylized-sign.jpg?s=612x612&w=0&k=20&c=TH1vDs4wmGnfWapq_e1XYxqzQV_qxaF4_aJWoDJyKNI=" 
										class="img-fluid profile-image-pic img-thumbnail rounded-circle my-3" width="80px" alt="profile">
									</div>
									<div class="mb-3">
											<input type="text" class="form-control" name="title" id="title"  require placeholder="Title">
									</div>
									<div class="mb-3">
											<select type="text" class="form-control" name="category" id="category"  require placeholder="Category">
												<?php foreach($datas1 as $categories):?>
												<option value="<?php echo($categories['id']); ?>"><?php echo($categories['type']); ?></option>
												
												<?php endforeach; ?>
											</select>
									</div>
									<div class="mb-3">
										<textarea name="content" id="tiny">
											
										</textarea>
									</div>
									<button type="submit" name="add" class="btn btn-primary">Submit</button>
								</form>
							</div>
							<div class="card-header">
								
							
							
							</div>
						</div>
					</div>
				</div>
				<?php
			
				if(isset($_POST['add'])){
					include '../connect.php';
					$username = $_SESSION['username'];
					$sql2 = "SELECT * FROM authors JOIN admins ON authors.user_id = admins.id WHERE admins.username = '$username' ";
					$datas2 = $conn->query($sql2);
					$data2 = $datas2->fetch_assoc();
					$author = $data2['name'];
					$title = $_POST['title'];
					$category = $_POST['category'];
					$content = $_POST['content'];
					$sql3 = "INSERT INTO articles (title, category, author, content, snippet) VALUES ('$title', '$category','$author','$content','$content');" ;
					if ($conn->query($sql3) === TRUE){
						echo "New record created successfully";
					} else {
						echo "Error: " . $sql3 . "<br>" . $conn->error;
					};
					
				}
				
				
				
				?>
				
			</main>
		</div>
	</div>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/js/bootstrap.bundle.min.js" integrity="sha512-i9cEfJwUwViEPFKdC1enz4ZRGBj8YQo6QByFTF92YXHi7waCqyexvRD75S5NVTsSiTv7rKWqG9Y5eFxmRsOn0A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/js/all.min.js" integrity="sha512-rpLlll167T5LJHwp0waJCh3ZRf7pO6IT1+LZOhAyP6phAirwchClbTZV3iqL3BMrVxIYRbzGTpli4rfxsCK6Vw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>

</html>