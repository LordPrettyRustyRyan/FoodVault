<?php 
session_start();
?>
<!DOCTYPE html>
<html>
<head>
  <title>Login & Signup</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<?php if (isset($_SESSION['alert'])): ?>
  <div class="alert alert-<?= $_SESSION['alert']['type'] ?> alert-dismissible fade show" role="alert">
    <?= $_SESSION['alert']['msg'] ?>
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>
  <?php unset($_SESSION['alert']); ?>
<?php endif; ?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/loginsignup.css">

    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>    

    <title>Login & Register Page -> Foodie Foodie</title>
</head>

<body>

    <div class="container" id="container">
        <div class="form-container sign-up">
            <form method="post">
                <h1>Create Account</h1>
                <div class="social-icons">
                    <a href="#" class="icons"><i class='bx bxl-google'></i></a>
                    <a href="#" class="icons"><i class='bx bxl-facebook'></i></a>
                    <a href="#" class="icons"><i class='bx bxl-github'></i></a>
                    <a href="#" class="icons"><i class='bx bxl-linkedin'></i></a>
                </div>
                <span>Register with E-mail</span>
                <input type="text" name="name" placeholder="Name" required>
                <input type="email" name="email" placeholder="Enter E-mail" required>
                <input type="password" name="password" placeholder="Enter Password" required>
                <button type="submit" name="signup">Sign Up</button>
            </form>
        </div>


        <div class="form-container sign-in">
            <form method="post">
                <h1>Sign In</h1>
                <div class="social-icons">
                    <a href="#" class="icons"><i class='bx bxl-google'></i></a>
                    <a href="#" class="icons"><i class='bx bxl-facebook'></i></a>
                    <a href="#" class="icons"><i class='bx bxl-github'></i></a>
                    <a href="#" class="icons"><i class='bx bxl-linkedin'></i></a>
                </div>
                <span>Login With Email & Password</span>
                <input type="email" name="email" placeholder="Enter E-mail" required>
                <input type="password" name="password" placeholder="Enter Password" required>
                <a href="#">Forget Password?</a>
                <button type="submit" name="login">Sign In</button>
            </form>
        </div>


        <div class="toggle-container">
            <div class="toggle">
                <div class="toggle-panel toggle-left">
                    <h1>Welcome To <br>Foodie Foodie</h1>
                    <p>Sign in With ID & Password</p>
                    <button class="hidden" id="login">Sign In</button>
                </div>
                <div class="toggle-panel toggle-right">
                    <h1>Hi Foodies</h1>
                    <p>Join "Foodie Foodie" to Enjoy Healthy and Delicious Recipes</p>
                    <button class="hidden" id="register">Sign Up</button>
                </div>
            </div>
        </div>
    </div>

    <script src="js/auth.js"></script>
</body>

</html>

<?php
// Inline DB connection
$conn = new mysqli("localhost", "root", "", "foodvault");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_POST['signup'])) {
    // Signup logic
    $name = trim($_POST['name']);
    $email = trim($_POST['email']);
    $password = $_POST['password'];

    // Check if email exists
    $stmt = $conn->prepare("SELECT id FROM users WHERE email=?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        $_SESSION['alert'] = ["type" => "danger", "msg" => "Email already exists!"];
    } else {
        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
        $role = ($email === "Admin@gmail.com") ? "admin" : "user";

        $stmt = $conn->prepare("INSERT INTO users (name, email, password, role) VALUES (?, ?, ?, ?)");
        $stmt->bind_param("ssss", $name, $email, $hashedPassword, $role);
        $stmt->execute();

        $_SESSION['alert'] = ["type" => "success", "msg" => "Account created successfully! Please login."];
    }
    $stmt->close();
    header("Location: auth.php");
    exit;
}

if (isset($_POST['login'])) {
    // Login logic
    $email = trim($_POST['email']);
    $password = $_POST['password'];

    $stmt = $conn->prepare("SELECT id, name, password, role FROM users WHERE email=?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($row = $result->fetch_assoc()) {
        if (password_verify($password, $row['password'])) {
            $_SESSION['user'] = $row['name'];
            $_SESSION['role'] = $row['role'];

            if ($row['role'] === "admin") {
                header("Location: admin.html");
            } else {
                header("Location: user.html");
            }
            exit;
        } else {
            $_SESSION['alert'] = ["type" => "danger", "msg" => "Incorrect password!"];
        }
    } else {
        $_SESSION['alert'] = ["type" => "danger", "msg" => "Account not found!"];
    }
    $stmt->close();
    header("Location: auth.php");
    exit;
}
?>
