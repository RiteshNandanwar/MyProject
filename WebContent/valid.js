/**
 * 
 */
function formValidation(form)
{
	var fname=document.patientform.fname.value;
	var lname=document.patientform.lname.value;
	var mobile=document.patientform.mobile.value;
	var email=document.patientform.email.value;
	var aadhar=document.patientform.aadhar.value;
	var password1=document.patientform.password1.value;
	var password2=document.patientform.password2.value;
	
	var letter=/^[a-zA-Z]+$/;
	var email=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if(!fname.match(letter))
	{
		document.getElementById("fnm").innerHTML="* please enter letters only";  
		  return false;  
	}
	else
	{  
		return true;
	}  
	
	if(!lname.match(letter))
	{
		document.getElementById("lnm").innerHTML="* please enter letters only";  
		  return false;  
	}
	else
	{  
		return true;
	}  
	

	if(isNaN(mobile))
	{
		document.getElementById("mb").innerHTML="* please enter numbers only";  
		  return false;  
	}
	else
	{  
		return true;
	}  
	
	if(mobile>10)
	{
		document.getElementById("mb").innerHTML="* 10 digits only";  
		  return false;  
	}
	else
	{  
		return true;
	}  
	
	if(!email.match(email))
	{
		document.getElementById("em").innerHTML="* invalid email address";  
		  return false;  
	}
	else
	{  
		return true;
	}  
	
	if(isNaN(aadhar))
	{
		document.getElementById("adh").innerHTML="* please enter numbers only";  
		  return false;  
	}
	else
	{  
		return true;
	}  
	
	if(aadhar>12)
	{
		document.getElementById("adh").innerHTML="* 12 digits only";  
		  return false;  
	}
	else
	{  
		return true;
	}  
	
	if(password1 != password2)
	{
		document.getElementById("ps").innerHTML="* password not match";  
		  return false;  
	}
	else
	{  
		return true;
	}  
	
}


function dil(form)
{
   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields")
		   document.F1.fname.focus()
		   return false
		}
   }
 if(!isNaN(document.F1.fname.value))
   {
       alert("User Name  must  be  char's & can't be null")
	   document.F1.fname.value=""
	   document.F1.dfame.focus()
	   return false
   }
 if(!isNaN(document.F1.lname.value))
	 {
	     alert("User Name  must  be  char's & can't be null")
		   document.F1.lname.value=""
		   document.F1.lname.focus()
		   return false
	 }
  
   
	 if(!isNaN(document.F1.disname.value))
   {
       alert("DISTRIBUTER NAME  must  be  char's & can't be null")
	   document.F1.disname.value=""
	   document.F1.disname.focus()
	   return false
   }
   
    if(!isNaN(document.F1.adderess.value))
   {
       alert("adderess field  must  be  char's & can't be null")
	   document.F1.adderess.value=""
	   document.F1.adderess.focus()
	   return false
   }
   if(!isNaN(document.F1.cityname.value))
   {
       alert("cityname field  must  be  char's & can't be null")
	   document.F1.cityname.value=""
	   document.F1.cityname.focus()
	   return false
   }
	
	 if(!isNaN(document.F1.statename.value))
   {
       alert("statename field  must  be  char's & can't be null")
	   document.F1.statename.value=""
	   document.F1.statename.focus()
	   return false
   }
	
	if(!isNaN(document.F1.phone.value))
   {
	   if(document.F1.phone.value >9999999999 )
	   {
		 alert("ye kabhi nhi aayegi")
		 document.F1.phone.value=""
		 document.F1.phone.focus()
         return false   
	   }
   }
   else
   {
       alert("This  field  must  be  number")
	   document.F1.phone.value=""
	   return false
   }
	
	 if(document.F1.password.value!=document.F1.repassword.value)
	    {
		   alert("Check Confirm PWD"); 
		   document.F1.password1.value=""
		   document.F1.password2.focus()	
		   return false
		}
		
	  
   
   

   return true   
   }
