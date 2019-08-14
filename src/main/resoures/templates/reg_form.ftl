<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration form's Main</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.8/angular.min.js"></script>
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
</head>
<body ng-app="registration_form" ng-controller="RegCtrl">

<div class="container" style="margin-top: 60px">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default" >
                <div class="panel-heading">
                    <h3 class="panel-title">Registration Form</h3>
                </div>
                <div class="panel-body">
                    <h3 id="resultMessage">{{message}}</h3>
                    <form style="margin-bottom: 30px" name="form" autocomplete="off" novalidate
                          ng-submit="form.$valid && sendForm(auth)">
                        <div class="form-group">
                            <label for="exampleInputName">First name</label>
                            <input type="text"
                                   class="form-control"
                                   id="exampleInputName"
                                   placeholder="First Name"
                                   required
                                   ng-model="auth.name">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputLogin">Login</label>
                            <input type="text"
                                   class="form-control"
                                   id="exampleInputLogin"
                                   placeholder="Login"
                                   required
                                   ng-model="auth.login">
                        </div>
                        <button type="submit" class="btn btn-success" style="margin-top:30px"
                                ng-disabled="form.$invalid">
                            Registration
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="/js/reg_form.js"></script>
</body>
</html>