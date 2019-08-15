<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src= "https://ajax.googleapis.com/ajax/libs/angularjs/1.7.8/angular.min.js"></script>
    <script src= "http://code.jquery.com/jquery-1.8.3.js"></script>
</head>
<body ng-app="registration_form" ng-controller="RegCtrl">

<div class="container" style="margin-top: 60px">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default" >
                <div class="panel-heading" >
                    <h3 class="panel-title" style="display: inline-block">Registration Form</h3>
                    <div class="dropdown" style="float: right; display: inline-block">
                            <a href="#">UA</a>
                            <a href="#">EN</a>
                    </div>
                </div>
                <div class="panel-body">
                    <h3 id="resultMessage">{{message}}</h3>
                    <form style="margin-bottom: 30px" name="form" autocomplete="off" novalidate
                          ng-submit="form.$valid && sendForm(auth)">
                        <div class="form-group">
                            <label id ="inputNameLabel1" for="exampleInputName1">First name</label>
                            <input type="text"
                                   class="form-control"
                                   id="exampleInputName1"
                                   placeholder="First Name"
                                   required
                                   ng-model="auth.firstName">
                        </div>
                        <div class="form-group" >
                            <label for="exampleInputName">Last name</label>
                            <input type="text"
                                   class="form-control"
                                   id="exampleInputName"
                                   placeholder="Last Name"
                                   required
                                   ng-model="auth.lastName">
                        </div>
<#--                        <div class="form-group">-->
<#--                            <label for="exampleInputLogin">Login</label>-->
<#--                            <input type="text"-->
<#--                                   class="form-control"-->
<#--                                   id="exampleInputLogin"-->
<#--                                   placeholder="Login"-->
<#--                                   required-->
<#--                                   ng-model="auth.login">-->
<#--                        </div>-->
                        <div class="form-group">
                            <label id = "exampleInputEmailLabel" for="exampleInputEmail">Email address</label>
                            <input type="email"
                                   class="form-control"
                                   id="exampleInputEmail"
                                   placeholder="Email"
                                   required
                                   ng-model="auth.email">

                        </div>
<#--                        <div class="form-group">-->
<#--                            <label id = "exampleInputEmailLabel1" for="exampleInputEmail1">Email address</label>-->
<#--                            <input type="email"-->
<#--                                   class="form-control"-->
<#--                                   id="exampleInputEmail1"-->
<#--                                   placeholder="Email"-->
<#--                                   required-->
<#--                                   ng-model="auth.email">-->

<#--                        </div>-->
                        <div class="form-group">
                            <label id = "exampleInputPasswordLabel" for="exampleInputPassword">Password</label>
                            <input type="password"
                                   class="form-control"
                                   id="exampleInputPassword"
                                   placeholder="Password"
                                   required
                                   ng-model="auth.password">

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