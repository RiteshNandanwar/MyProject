<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Patient Registration Form</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
	<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   
   if(!isNaN(document.F1.aadhar.value))
   {
	   if(document.F1.aadhar.value >1000000000000 )
	   {
		 alert("	! Only 12 Digits ")
		 document.F1.aadhar.value=""
		 document.F1.aadhar.focus()
         return false   
	   }
   }
   if(document.F1.password1.value!=document.F1.password2.value)
   {
	   alert("Check Confirm Password"); 
	   document.F1.password2.value=""
	   document.F1.password2.focus()	
	   return false
	}
return true;
}	
	
	
</script>	
	
<jsp:include page="main.jsp" />		
<jsp:include page="title.jsp" />
<body style="background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)), url(1.jpg);">
	
	<h1 class="regi">Registration Form</h1>
	<div class="register">
	<form method="post" id="register" action="PatientRegistration" name=F1 onSubmit="return dil(this)" enctype='multipart/form-data'>
		
		<label> First Name :</label><br>
		<input type="text" name="fname" placeholder="Enter Your First Name" id="name" REQUIRED>
		<span id="fnm" style="color:#990033;"></span><br><br>
		
				
		<label> Last Name :</label><br>
		<input type="text" name="lname" placeholder="Enter Your Last Name" id="name" REQUIRED>
		<span id="lnm" style="color:#990033;"></span><br><br>
		
		<input type="radio" name="gender" value="male" REQUIRED>&nbsp; Male
		<input type="radio" name="gender" value="female" REQUIRED>&nbsp; Female
		<input type="radio" name="gender" value="other" REQUIRED>&nbsp; Other<br><br>
	
		
		<label> Mobile Number :</label><br>
		<input type="text" name="mobile" id="name" REQUIRED>
		<span id="mb" style="color:#990033;"></span><br><br>
		
		<label> Email Address :</label><br>
		<input type="text" name="email" placeholder="eg-youremail@gmail.com" id="name" REQUIRED>
		<span id="em" style="color:#990033;"></span><br><br>
		
		<label> Aadhar Number :</label><br>
		<input type="text" name="aadhar" placeholder="12 digit Aadhar Number" id="name" REQUIRED>
		<span id="adh" style="color:#990033;"></span><br><br>
		
		<label> City :</label><br>
		<input type="text" name="city" id="name" REQUIRED>
		<span id="ct" style="color:#990033;"></span><br><br>
		
		<label> Address :</label><br>
		<input type="text" name="address" id="name" REQUIRED><br><br>
		
		
		<label> Date of Birth :</label><br>
		<input type="date" name="dob"  id="dob" REQUIRED><br><br>
		
		
		
		
		
		<label> Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>&nbsp;
		<input type="password" name="password1" placeholder="Enter Password" id="name" REQUIRED><br><br>
				
		<label> Confirm Password :</label>&nbsp;
		<input type="password" name="password2" placeholder="Confirm Password" id="name" REQUIRED		><br><br>
		<span id="ps" style="color:#990033;"></span>
		
		<div align="center"><input type="reset" value="clear" id="sub">&nbsp;&nbsp;<input type="submit" value="Register" id="sub"></div>
		
	</form>
	</div>
</body>
</html>