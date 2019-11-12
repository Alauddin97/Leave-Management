<?php
$link = mysqli_connect("localhost", "root", "") or die("Not Connected");
mysqli_select_db($link, "office") or die("db not found");
if (isset($_POST['submit'])) {
	$username = $_POST['user'];
	$password = $_POST['pass'];
	if (empty($username) || empty($password)) {
		echo "<h3> Enter Username and Password</h3>";
	} else {
		$result = mysqli_query($link, "select * from login where username='$username' and password='$password'") or die("Failed to query" . mysqli_error($link));
		$row = mysqli_fetch_array($result);
		if ($row['username'] == $username && $row['password'] == $password) {
			echo "Login Successfull !!! Welcome";
			header("Location:AdminWork.php");
		} else
			echo "<h3> Enter valid Username and Password </h3>";
	}
}
?>
<!DOCTYPE>

<head>
	<title> Login Page </title>
	<link rel="stylesheet" href="css/Adminlogin.css">
</head>

<body>
	
	<div class="index">
		<form action="AdminLogin.php" method="POST">
		<a href="Home.php">Back</a>
			<b>Admin Login Details</b><br/><br/>
			<label>User ID:*</label><br/><br/>
			<input type="text" name="user" maxlength="10" placeholder='Username' required /><br/><br/>
			<label>Password:*</label><br/><br/>
			<input type="password" name="pass" maxlength="10" placeholder='Password' required/></br><br/>
			<input type="submit" name="submit" value="Login">
	</div>
	</form>
</body>

</html>