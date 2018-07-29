<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Homepage New</title>

<link href="css/myhomepagecss.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
</head>

<body>

	
    <script src="js/jquery-2.1.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <br>
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
<div id="openModal" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<div class="login-box form-group">
    		<h2>Sign in <strong></strong></h2>
    		<form action="first" method="post">
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
</div> 
<div class="container">
	<div class="signup-box form-group col-lg-4">
    <form action="sg" method="post">
      <div class="univrollno-div">
        <label for="Univ Roll No"><strong class="rollno-label">University Roll No</strong></label>
        <input class="form-control" spellcheck="false" name="Roll_No" id="roll-no" value=""   Type="text" placeholder="    Type your University Roll No" required>
      </div>
      <div class="name-div">
        <label for="Name"><strong class="name-label">Name</strong></label>
        <input class="form-control" spellcheck="false" name="Name" id="Name" value=""   Type="text" placeholder="  Type your full name" required>
      </div>
      <div class="email-div">
        <label for="Email"><strong class="email-label">Email</strong></label>
        <input class="form-control" spellcheck="false" name="Email" id="Email" value=""   Type="email" placeholder="  Type your e-mail" required>
      </div>
      <div class="passwd-div">
        <label for="Passwd"><strong class="passwd-label">Password</strong></label>
        <input class="form-control" name="Passwd" id="Passwd"   Type="password" placeholder="  Type your password" required>
      </div>
      <div class="re  Typepasswd-div">
        <label for="Re  TypePasswd"><strong class="Re  Typepasswd-label">Re Type Password</strong></label>
        <input class="form-control" name="Re  TypePasswd" id="ReTypePasswd"   Type="password" placeholder="  Retype your password" required>
      </div>
      <input class="button button-submit" name="signUp" id="signUp" value="Sign up"   Type="submit">
    </form>
  </div>
    <div id="myCarousel" class="carousel slide col-lg-8" data-ride="carousel">
    <!-- Indicators -->
    	<ol class="carousel-indicators">
    		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		    <li data-target="#myCarousel" data-slide-to="1"></li>
		    <li data-target="#myCarousel" data-slide-to="2"></li>
    		<li data-target="#myCarousel" data-slide-to="3"></li>
  		</ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" id="carousel_id" role="listbox">
    <div class="item active">
      <img src="img/foursquare-badge.png" alt="Chania">
    </div>

    <div class="item">
      <img src="img/user_avatar.jpg" alt="Chania">
    </div>

    <div class="item">
      <img src="img/user_avatar_s.jpg" alt="Flower">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>

 

</body>
</html>
