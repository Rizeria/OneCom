<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Welcome</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link href="../plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <!-- Ionicons -->
        <link href="../plugins/ionicons-2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css"/>
        <!-- Theme style -->
        <link rel="stylesheet" href="dist/css/AdminLTE.css" type="text/css"/>
        <!-- iCheck -->
        <link rel="stylesheet" href="plugins/iCheck/square/blue.css"  type="text/css"/>
    </head>
    <!-- class="hold-transition login-page"-->
    <!--background="img/bg.jpg"-->
    <body>
        <div class="login-box">
            <div class="login-logo">
                <a href="#"><b>One</b>Computer</a>
            </div>
            <!-- /.login-logo -->
            <div class="login-box-body">
                <p class="login-box-msg">Welcome</p>
                <form action="login_checker.php" method="post">
                    <div class="form-group has-feedback">
                        <input type="text" tpye="username" name="username" class="form-control" placeholder="Username" required >
                        <span class="glyphicon glyphicon-user form-control-feedback" ></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password"  name="password" class="form-control" placeholder="Password" required>
                        <span class="glyphicon glyphicon-lock form-control-feedback"  ></span>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <button type="submit" class="btn btn-block btn-primary btn-lg"  >Login</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
<!--id="password"--> 