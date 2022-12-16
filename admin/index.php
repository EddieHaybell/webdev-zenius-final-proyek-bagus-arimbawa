<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE-Edge">
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<title>EDU NEWS</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/css/bootstrap.min.css" integrity="sha512-SbiR/eusphKoMVVXysTKG/7VseWii+Y3FdHrt0EpKgpToZeemhqHeZeLWLhJutz/2ut2Vw1uQEj2MbRF+TVBUA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer">
	
</head>
<body class="bg-primary">
	<?php
		session_start();
		error_reporting(0);
		if($_SESSION['status'] == "login"){
			header("location:/zenius/project/admin/dashboard.php");
		}
		include '../connect.php';
		$username = $_POST['username'];
		$password = $_POST['password'];
		
		$sql = "SELECT * FROM admins WHERE username='$username' and password='$password'";
		$data = $conn->query($sql);
		$check = mysqli_num_rows($data);
		
		if(isset($_POST['submit'])){
			if($check != 0){
				$_SESSION['username'] = $username;
				$_SESSION['status'] = "login";
				header("location:/zenius/project/admin/dashboard.php");
				die();
			}else{
				$_SESSION['error'] = "Gagal login, silahkan cek kembali username dan password Anda!";
			}
		}
	?>
	<div class="container bg-info">
		<div class="row" >
			<div class="col-md-6 offset-md-3">
				<h2 class="text-center text-dark mt-5">Login</h2>
				<div class="text-center mb-5 text-dark">EDU NEWS</div>
				<div class="card my-5 bg-light">
					<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" class="card-body cardbody-color p-lg-5">
						<div class="text-center">
							<img src="https://media.istockphoto.com/id/1137971264/vector/airplane-fly-out-logo-plane-taking-off-stylized-sign.jpg?s=612x612&w=0&k=20&c=TH1vDs4wmGnfWapq_e1XYxqzQV_qxaF4_aJWoDJyKNI=" 
							class="img-fluid profile-image-pic img-thumbnail rounded-circle my-3" width="200px" alt="profile">
						</div>
						<div class="mb-3">
								<input type="text" class="form-control" name="username" id="username" aria-describedby="emailHelp" require placeholder="Username">
						</div>
						<div class="mb-3">
								<input type="password" class="form-control" name="password" id="password" placeholder="Password">
						</div>
						<p style="color:red;font-size:12px;"><?php if(isset($_SESSION['error'])){echo($_SESSION['error']);}?></p>
						<div class="text-center">
							<button type="submit" name="submit" class="btn btn-color px-5 mb5 w-100" >Login</button>
						</div>
						<div id="emailHelp" class="form-text text-center mb-4 text-dark">
							Not Registered?
							<a href="./signup.php" class="text-dark fw-bold">Create an Account</a>
							<br><br>
							<a href="../" class="text-dark fw-bold">Back to Home</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/js/all.min.js" integrity="sha512-rpLlll167T5LJHwp0waJCh3ZRf7pO6IT1+LZOhAyP6phAirwchClbTZV3iqL3BMrVxIYRbzGTpli4rfxsCK6Vw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>	
</body>
</html>