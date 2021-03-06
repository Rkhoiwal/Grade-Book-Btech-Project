<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Profile_Edit</title>
<link href="css/bootstrap.min.css" rel="stylesheet" />
      <link href="css/dashboard.css" rel="stylesheet">
      <link href="css/pform.css" rel="stylesheet" />
      <script type="text/javascript" src="js/jquery.min.js"></script>
      <script type="text/javascript" src="js/bootstrap.min.js"></script>

</head>

<body>
	  <div class="container">
        <nav role="navigation" class="navbar navbar-default">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button   Type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="#" class="navbar-brand" style="color:#999">MidTerm Result</a>
        </div>
        <!-- Collection of nav links and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav" style="float:right">
                <li><a href="#openModal">SignIn</a></li>
                <li><a href="#">AboutUs</a></li>
            </ul>
        </div>
    	</nav>
	</div>
<!--<div id="openModal" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<div class="login-box form-group">
    		<h2>Sign in <strong></strong></h2>
    		<form action="ProfileDao" method="post">
      			<div class="email-div">
        			<label for="Email"><strong class="email-label">Email</strong></label>
        			<input name="Email" class="form-control" id="Email" value=""  required="required" Type="email" autofocus>
      			</div>
      			<div class="passwd-div">
        			<label for="Passwd"><strong class="passwd-label">Password</strong></label>
        			<input name="Passwd" class="form-control" id="Passwd"   Type="password"  required="required">
      			</div>
      			<input class="button button-submit" name="signIn" id="signIn" value="Sign in"   Type="submit"  required="required">
    		</form>
    <br />
    		<ul style="list-style-type:none">
      			<li> <a id="forgot_password" href="forgotpassword.html"> Can't access your account? </a> </li>
    		</ul>
		</div>
	</div>
</div>-->
      <div class="container-fluid">
       <div class="col-md-9 col-md-offset-3 col-md-10 col-md-offset-2 main" style="border:1px solid #dddddd">
               <h1 class="page-header">Form</h1>
               <div class="col-md-12 personal-info">
                  <div class="alert alert-info alert-dismissable">
                     <h3>Personal info</h3>
                     <form class="form-horizontal" action="ProfileDao" method="post"  id="sign_up">
                        <div class="form-group">
                           <label class="col-md-2 control-label">Name:</label>
                           <div class="col-md-8">
                              <input type="text" class="form-control" id="name" name="name" >
                              <br>
                              <span id="namevalidate" style="color:#F00"> </span>
                           </div>
                        </div>
<!--                        <div class="form-group">
                           <label class="col-md-2 control-label">Last name:</label>
                           <div class="col-md-8">
                              <input type="text" class="form-control" id="lname" name="lname">
                           <span id="lnamevalidate" style="color:#F00"> </span>
                         
                           </div>
                        </div>-->
                        <div class="form-group">
                           <label class="col-md-2 control-label">Father Name:</label>
                           <div class="col-md-8">
                              <input type="text" class="form-control" id="fname" name="fname">
                           <span id="fnamevalidate" style="color:#F00"> </span>
                         
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="col-md-2 control-label">Enrollement Number:</label>
                           <div class="col-md-8">
                              <input type="text" class="form-control"  id="enr" name="enr">
                           <span id="enrvalidate" style="color:#F00"> </span>
                         
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="col-md-2 control-label">Batch :</label>
                           <div class="col-md-8">
                              <input type="text" class="form-control"  id="batch" name="batch">
                           <span id="batchvalidate" style="color:#F00"> </span>
                         
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="col-md-2 control-label">Year:</label>
                           <div class="col-md-8">
                              <select class="form-control" id="year" name="year">
                                <option value="">Select Year </option>
                                 <option value="I">I</option>
                                 <option value="II">II</option>
                                 <option value="III">III</option>
                                 <option value="IV">IV</option>
                              </select>
                           <span id="yearvalidate" style="color:#F00"> </span>
                         
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="col-md-2 control-label">Semester:</label>
                           <div class="col-md-8">
                              <select class="form-control" id="sem" name="sem">
                                 <option value=""> Select Semester </option>
                                 <option value="I">I</option>
                                 <option value="II">II</option>
                                 <option value="III">III</option>
                                 <option value="IV">IV</option>
                                 <option value="V">V</option>
                                 <option value="VI">VI</option>
                                 <option value="VII">VII</option>
                                 <option value="VIII">VIII</option>
                              </select>
                           <span id="semvalidate" style="color:#F00"> </span>
                         
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="col-md-2 control-label">Sex:</label>
                           <div class="col-md-8">
                              <select class="form-control" id="sex" name="sex">
                                 <option value=""> Select Gender </option>
                                 <option value="Female">Female</option>
                                 <option value="Male">Male</option>
                              </select>
                              <span id="sexvalidate" style="color:#F00"> </span>
                         
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="col-md-2 control-label">Age:</label>
                           <div class="col-md-8">
                              <input type="text" class="form-control"  id="age" name="age">
                           <span id="agevalidate" style="color:#F00"> </span>
                         
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="col-md-2 control-label">Email:</label>
                           <div class="col-md-8">
                              <input type="email" class="form-control"  id="email" name="email">
                           <span id="emailvalidate" style="color:#F00"> </span>
                         
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="col-md-2 control-label">Phone Number:</label>
                           <div class="col-md-8">
                              <input type="text" class="form-control"  id="phone" name="phone">
                           <span id="phonevalidate" style="color:#F00"> </span>
                         
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="col-md-2 control-label">Father Phone Number:</label>
                           <div class="col-md-8">
                              <input type="text" class="form-control" id="fphone" name="fphone" required>
                           <span id="fphonevalidate" style="color:#F00"> </span>
                         
                           </div>
                        </div>

                       
<!--                        <div class="form-group">
                           <label class="col-md-2 control-label">Password:</label>
                           <div class="col-md-8">
                              <input type="password" class="form-control" id="pwd" name="pwd">
                           <span id="pwdvalidate" style="color:#F00"> </span>
                         
                           </div>
                        </div>-->
                        <div class="form-group">
                           <label class="col-md-2 control-label"></label>
                           <div class="col-md-8">
                              <input type="submit" class="btn btn-default" value="Submit"  onClick="myFunction()">
                           </div>
                        </div>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </div>
   </body>
</html>
