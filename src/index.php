<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>GoDaddy ATM</title>
    <meta name="description" content="GoDaddy ATM official page.">
    <meta name="author" content="Nestor Angulo de Ugarte">
    <link rel="shortcut icon" type="image/png" href="favicon.png"/>

    <!-- CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    
    <!-- Custom styles for this template -->
    <link href="css/styles.css" rel="stylesheet">
    <link href="css/sticky-footer-navbar.css" rel="stylesheet">

    <!-- JS -->
    <script src="https://kit.fontawesome.com/b92341d19b.js" crossorigin="anonymous"></script>
</head>
<body class="d-flex flex-column h-100">
    <header>
    <!-- Fixed navbar -->
    <nav class="navbar navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">GoDaddy ATM</a>
    </nav>
    </header>

    <!-- Begin page content -->
    <main role="main" class="flex-shrink-0">
    <div class="container">
        <h1 class="mt-5">Welcome to the GoDaddy ATM . <i class="fas fa-dollar-sign"></i></h1>
        <p class="lead">Enter your account number to get started:</p>
        <p><form class="form" action="landing.php" method="post">
            <div class="row">
                <div class="form-group col-sm">
                    <label for="account" class="sr-only">Account #</label>
                    <input type="number" class="form-control" name="account" id="account" placeholder="Your account number" aria-describedby="accountHelpBlock" required autofocus>
                    <small id="accountHelpBlock" class="form-text text-muted">
                        <?php
                            if(isset($_GET['error']) && $_GET['error'] == 'login'){
                                echo '<span id="helpText" class="text-danger">The account doesn\'t exist. Try a valid one.</span>';
                            } else {
                        ?>
                        <span id="helpText">The account have to be a number and have to exist.</span>
                        <?php }?>
                    </small>
                </div>
                <div class="col-sm">
                    <button type="submit" class="btn btn-primary sm-2">Login</button>
                </div>
            </div>
          </form></p>
    </div>
    </main>

    <footer class="footer mt-auto py-3">
    <div class="container">
        <span class="text-muted">GoDaddy Test for Dev Immersion - Dec 2019</span>
    </div>
    </footer>

    <!-- JS libs -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>