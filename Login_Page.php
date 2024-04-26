<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Login</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>

<body>
  <section class="bg-dark vh-100">
    <nav class="navbar navbar-expand-xxl bg-danger navbar-dark px-5 py-2">
      <a href="Landing_Page.php" class="navbar-brand">
        <h2>Jobly</h2>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navmenu">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navmenu">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a href="CreateAccount_Page.php" class="nav-link">&nbsp;&nbsp;&nbsp;&nbsp;Create Account
              &nbsp;&nbsp;&nbsp;&nbsp;</a>
          </li>
          <li class="nav-item">
            <a href="Login_Page.php" class="nav-link">&nbsp;&nbsp;&nbsp;&nbsp;Sign In &nbsp;</a>
          </li>
        </ul>
      </div>
    </nav>
    <div class="container">
      <div class="row d-flex justify-content-center align-items-center mt-5 pt-5">
        <div class="col-md-8 col-lg-7 col-xl-6 mt-5 pt-5">
          <img src="svg/engineering team.svg" class="img-fluid" alt="" />
        </div>
        <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1 mt-5 pt-5">
          <form>
            <!-- Email input -->
            <div class="form-outline my-5">
              <label class="form-label text-danger">
                <h3>Email</h3>
              </label>
              <input type="email" class="form-control form-control-lg" placeholder="iamnoob@example.com" />
            </div>

            <!-- Password input -->
            <div class="form-outline my-5">
              <label class="form-label text-danger">
                <h3>Password</h3>
              </label>
              <input type="password" class="form-control form-control-lg" />
            </div>

            <div class="d-flex justify-content-center align-items-center mt-5 mb-2">
              <button type="submit" class="btn btn-danger btn-lg btn-block">
                Sign in
              </button>
            </div>

            <div class="d-flex justify-content-center mt-5">
              <p class="text-warning h5">Don't have an account?</p>
            </div>

            <div class="d-flex justify-content-center align-items-center mt-2">
              <button class="btn btn-danger btn-lg btn-block">
                <a href="CreateAccount_Page.php" class="text-white" style="text-decoration: none">Create Account</a>
              </button>
            </div>

            <!-- Submit button -->
          </form>
        </div>
      </div>
    </div>
  </section>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>