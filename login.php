<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--== FAVICON ==-->
        <link rel="shortcut icon" href="" type="">

        <!--== BOXICONS ==-->
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        
        <!--== CSS ==-->
        <link rel="stylesheet" href="css/login.css">
        
        <title>Sign In</title>
    </head>
    <body>
        <div class="container" id="main">
            <div class="sign-up">
                <form action="proses.php" method="post" enctype="multipart/form-data" name="form1" id="form1">
                    <h1>Create Account</h1>
                    <div class="social-container">
                        <a href="#" class="social"><i class='bx bxl-google'></i></a>
                        <a href="#" class="social"><i class='bx bxl-apple'></i></a>
                        <a href="#" class="social"><i class='bx bxl-facebook'></i></a>
                    </div>

                    <p>Or use your email for registration</p>

                    <input type="text" name="nama" id="nama" placeholder="Nama" required="">
                    <input type="email" name="email" id="email" placeholder="Email" required="">
                    <input type="password" name="password" id="password" placeholder="Password" required="">

                    <button type="submit" name="sign_up" id="sign_up" class="button">Sign Up</button>
                </form>
            </div>

            <div class="sign-in">
                <form action="proses.php" method="post" enctype="multipart/form-data" name="form1" id="form1">
                    <h1>Sign In</h1>
                    <div class="social-container">
                        <a href="#" class="social"><i class='bx bxl-google'></i></a>
                        <a href="#" class="social"><i class='bx bxl-apple'></i></a>
                        <a href="#" class="social"><i class='bx bxl-facebook'></i></a>
                    </div>

                    <p>Or use your account</p>

                    <input type="email" name="email" id="email" placeholder="Email" required="">
                    <input type="password" name="password" id="password" placeholder="Password" required="">
                    <a href="#">Forget your password</a>

                    <button type="submit" name="sign_in" id="sign_in" class="button">Sign In</button>
                </form>
            </div>

            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-left">
                        <h1>Welcome to Animal Care!!</h1>
                        <p>To keep connected with us please login with your personal info</p>
                        <button id="SignIn">Sign In</button>
                    </div>

                    <div class="overlay-right">
                        <h1>Hello Friends!</h1>
                        <p>Enter your personal details and start journey with us</p>
                        <button id="SignUp">Sign Up</button>
                    </div>
                </div>
            </div>
        </div>

        <!--=============== MAIN JS ===============-->
        <script src="js/log.js"></script>
    </body>
</html>