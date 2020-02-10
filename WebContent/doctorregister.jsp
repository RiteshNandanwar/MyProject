<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Doctor Registration Form</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<script type="text/javascript" src="valid.js"></script>
	</head>
	<head>
<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   
   if(!isNaN(document.F1.mobile.value))
   {
	   if(document.F1.mobile.value >9999999999 )
	   {
		 alert("	! Only 10 Digits ")
		 document.F1.mobile.value=""
		 document.F1.mobile.focus()
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
	<form method="post" id="register" action="DoctorRegistration1" name=F1 onSubmit="return dil(this)">
		
		<label> First Name :</label><br>
		<input type="text" name="fname" placeholder="Enter Your First Name" id="name" REQUIRED>
		<span id="fnm" style="color:#990033;"></span><br><br>
		
				
		<label> Last Name :</label><br>
		<input type="text" name="lname" placeholder="Enter Your Last Name" id="name" REQUIRED>
		<span id="lnm" style="color:#990033;"></span><br><br>
		
		<input type="radio" name="gender" value="male" REQUIRED>&nbsp; Male
		<input type="radio" name="gender" value="female" REQUIRED>&nbsp; Female
		<input type="radio" name="gender" value="other" REQUIRED>&nbsp; Other<br><br>
	
		
		<label>Mobile :</label><br>
		<input type="text" name="mobile" id="name" REQUIRED>
		<span id="mb" style="color:#990033;"></span><br><br>
		
		<label> Email Address :</label><br>
		<input type="text" name="email" placeholder="eg-youremail@gmail.com" id="name" REQUIRED>
		<span id="em" style="color:#990033;"></span><br><br>
		
		<label> License Number :</label><br>
		<input type="text" name="license" id="name" REQUIRED>
		<span id="adh" style="color:#990033;"></span><br><br>
		
		<label> City :</label><br>
		<select name="city" id="name" REQUIRED>
			<option value="Amravati">Amravati</option>
			<option value="Nagpur">Nagpur</option>
			<option value="Pune">Pune</option>
			<option value="Amravati">Chandrapur</option>
			<option value="Amravati">Mumbai</option>
			<option value="Amravati">Akola</option>
			<option value="Amravati">Paratwada</option>
			<option value="Amravati">Badnera</option>
		</select><br><br>
		
		<label> Specialization In :</label><br>
		<select name="speci" id="name" REQUIRED>
			<option value="Anesthesiology">Anesthesiology</option>
			<option value="Dermatology">Dermatology</option>
			<option value="Diagnostic">Diagnostic</option>
			<option value="Neurologist">Neurologist</option>
			<option value="Pediatrician">Pediatrician</option>
			<option value="Psychiatrist">Psychiatrist</option>
			<option value="Allergist">Allergist</option>
			<option value="Podiatrist">Podiatrist</option>
		</select><br><br>
		
		<label> Highest Degree :</label><br>
		<input type="text" name="degree" id="name" REQUIRED><br><br>
		
		
		<label> Experience :</label><br>
		<input type="text" name="exp"  placeholder="In yers" id="name" REQUIRED><br><br>
		
		
		
		
		<label> Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>&nbsp;
		<input type="password" name="password1" placeholder="Enter Password" REQUIRED><br><br>
				
		<label> Confirm Password :</label>&nbsp;
		<input type="password" name="password2" placeholder="Confirm Password" REQUIRED><br><br>
		
			
		<div align="center"><input type="reset" value="clear" id="sub">&nbsp;&nbsp;<input type="submit" value="Register" id="sub"></div>
	</form>
	</div>
</body>
</html>