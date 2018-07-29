<%-- 
    Document   : signup
    Created on : 11 Oct, 2015, 11:41:21 PM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Sign Up</title>
  <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
  
      <script type="text/javascript">
  
    function checkForm(form)
    {
      re = /^\_$/;
      if(!re.test(form.Name.value)) {
        alert("Error: Name must contain only letters!");
        form.Name.focus();
        return false;
      }
//      re = /_^\w+$/;
//      if(!re.test(form.Roll_No.value)) {
//        alert("Error: Roll-no must contain only letters, numbers!");
//        form.Roll_No.focus();
//        return false;
//      }
  
      if(form.pwd1.value != "" && form.pwd1.value == form.pwd2.value) {
        if(form.pwd1.value.length < 6) {
          alert("Error: Password must contain at least six characters!");
          form.pwd1.focus();
          return false;
        }
        if(form.pwd1.value == form.Name.value) {
          alert("Error: Password must be different from Username!");
          form.pwd1.focus();
          return false;
        }
        //
  //      re = /[0-9]/;
  //      if(!re.test(form.pwd1.value)) {
  //        alert("Error: password must contain at least one number (0-9)!");
  //        form.pwd1.focus();
  //        return false;
  //      }
  //      re = /[a-z]/;
  //      if(!re.test(form.pwd1.value)) {
  //        alert("Error: password must contain at least one lowercase letter (a-z)!");
  //        form.pwd1.focus();
  //        return false;
  //      }
  //      re = /[A-Z]/;
  //      if(!re.test(form.pwd1.value)) {
  //        alert("Error: password must contain at least one uppercase letter (A-Z)!");
  //        form.pwd1.focus();
  //        return false;
        
  //		}
      } else {
        alert("Error: Please check that you've entered and confirmed your password!");
        form.pwd1.focus();
        return false;
      }
  
      alert("Your passwords match");
      return true;
    }
  
  </script>
      <script src="js/jquery-2.1.4.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      
      <div class="container">
      <div class="signup-box form-group">
      <form action="sg" method="post" onsubmit="return checkForm(this)">
          
        <div class="univrollno-div">
          <label for="Univ Roll No"><strong class="rollno-label">University Roll No</strong></label>
          <input class="form-control" spellcheck="false" name="Roll_No" id="roll-no" value=""   Type="text" placeholder="  Type your University Roll No" required="required" size="15">
        </div>
        <div class="name-div">
          <label for="Name"><strong class="name-label">Name</strong></label>
          <input class="form-control" spellcheck="false" name="Name" id="Name" value=""   Type="text" placeholder="  Type your full name" required="required" size="40">
        </div>
        <div class="email-div">
          <label for="Email"><strong class="email-label">Email</strong></label>
          <input class="form-control" spellcheck="false" name="Email" id="Email" value=""   Type="email" placeholder="  abc@xyz.com" required="required" size="50">
        </div>
          <div class="gender-div">
          <label for="Gender"><strong class="gender-label">Gender</strong></label>
          <input class="form-control" spellcheck="false" name="gender" id="Name" value=""   Type="text" placeholder="Specify your gender" required="required" size="1">
        </div>
          <div class="contactnumber-div">
          <label for="contactnumber"><strong class="contactnumber-label">Contact Number</strong></label>
          <input class="form-control" spellcheck="false" name="phn" id="Name" value=""   Type="text" placeholder="  Type your number" required="required" size="10">
        </div>
          <div class="year-div">
          <label for="Year"><strong class="Year-label">Year</strong></label>
          <input class="form-control" spellcheck="false" name="year" id="Name" value=""   Type="text" placeholder="  Specify your present year" required="required" size="10">
        </div>
        <div class="pwd1-div">
          <label for="pwd1"><strong class="pwd1-label">Password</strong></label>
          <input class="form-control" name="pwd1" id="pwd1"   Type="password" placeholder="  Type your password" required="required" size="24">
        </div>
        <div class="re  Typepwd1-div">
          <label for="Re  Typepwd1"><strong class="Re  Typepwd1-label">Re  Type Password</strong></label>
          <input class="form-control" name="pwd2" id="pwd2"   Type="password" placeholder="  Retype your password" required="required" size="24">
        </div>
        <input class="button button-submit" name="signUp" id="signUp" value="Sign up"   Type="submit">
      </form>
    </div>
  </div>
  
  
  </body>
  </html>
