<%-- 
    Document   : ForgetPassword
    Created on : 11 Oct, 2015, 11:45:13 PM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Forgot Password</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<script src="js/jquery-2.1.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<div class="container">
		<div class="signup-box form-group">
    		<form action="third" method="post">
      			<div class="univrollno-div">
        			<label for="Univ Roll No"><strong class="rollno-label">University Roll No</strong></label>
        			<input class="form-control" spellcheck="false" name="Roll_No" id="roll-no" value=""   Type="text" placeholder="Type your University Roll No">
      			</div>
      			<div class="email-div">
        			<label for="Email"><strong class="email-label">Email</strong></label>
        			<input class="form-control" spellcheck="false" name="Email" id="Email" value=""   Type="email" placeholder="Type your e-mail">
      			</div>
                <br />
                <div class="form-group">
	  			<div class="question-div dropdown">
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownforques" aria-haspopup="true" aria-expanded="true" data-toggle="dropdown"> 
                    <!--<label for="Question"><strong class="question-label">Question</strong></label>-->
                    Select a question!
                    <span class="caret"></span>
                    </button>
        			<ul class="dropdown-menu" aria-labelledby="dropdownforques">
                    	<li><a href="#">Who was your childhood hero?</a></li>
                        <li class="divider"></li>
                        <li><a href="#1">Where was your first trip outside your hometown?</a></li>
                        <li class="divider"></li>
                        <li><a href="#2">Name of place where your grandparents live?</a></li>
                        <li class="divider"></li>
                        <li><a href="#3">When you were young, what did you want to be when you grew up?</a></li>
                        <li class="divider"></li>
                        <li><a href="#4">What was the last name of your favorite teacher?</a></li>
                    </ul>
      			</div>
        			<input class="form-control" spellcheck="false" name="Answer" id="Answer" value="" Type="text" placeholder="Write your answer.">
                    <br />
                    <button class="btn btn-default" type="submit" formnovalidate="formnovalidate">Submit</button>
                </div>
                
                
      		</form>
      </div>
   </div>

</body>
</html>

