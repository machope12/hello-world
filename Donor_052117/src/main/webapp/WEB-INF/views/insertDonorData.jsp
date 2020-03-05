<!DOCTYPE html>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  




<html>
<head>
<style>
body {width: 800px; margin: 20px auto; /* center */ padding: 20px;
		 border: 1px solid black;}

header {
    background-color:black;
    color:white;
    text-align:center;
    padding:5px;	 
}
nav {
    line-height:20px;
    background-color:#eeeeee;
    height:300px;
    width:200px;
    float:left;
    padding:5px;
    display: inline-block;
    list-style-type: none;
	      
}

section{
	  
     
     padding-top: 30px;
     padding-right: 30px;
     padding-bottom: 50px;
     margin-left: 300px;
    
   	 	 
}

footer {
    background-color:black;
    color:white;
    clear:both;
    text-align:center;
    padding:5px;	 	 
}
</style>
</head>
<body>

<header>
 <h1> Main Page </h1>
</header>

<nav>

	Funds Operations<br><br>
 
<a href="<%=request.getContextPath() %>/insert">Add Donor Fund</a><br>
<a href="<%=request.getContextPath() %>/getList">List of Donor Funds</a><br>
<a href="<%=request.getContextPath() %>/DatePicker">Donor Fund Report</a><br>
<a href="<%=request.getContextPath() %>/getFunds">Individual Donor Report</a><br>
<a href="<%=request.getContextPath() %>/viewDonor">Insert Donor Data</a><br>

 

</nav>
<form:errors path="fund.*"/> 

<section>
<div>
<form action="<%=request.getContextPath() %>/insertFund"  method="post" >
		<a>Pick a Donor Advised Fund</a><br>
 	 	<select name="indivfund">
 			    		<c:forEach items="${list}" var="map">
					    <c:forEach items="${map}" var="entry">				      
					        <option value="${entry.key}">${entry.value}</option>					    
					    </c:forEach>
					    </c:forEach>					    
	     </select> <br> <br>
	     <input type="text" name="Date2" required placeholder="Date"> (2010/01/03)<br><br>  		     
		<input type="text" name="donation" required placeholder="Donor Amount"><br><br>   
    	<textarea  name="memo" rows="15" cols="35"  placeholder="Memo"></textarea> <br><br>
		
		
		Pick Donor Type 
  		<input type="radio" name="group1" value="credit"> Credit
		<input type="radio" name="group1" value="debit" > Debit<br>  
		<input type="submit" name="Submit" value="Submit">
 	 	</form>
 	 	</div>
</section>

<footer>
Copyright © W3Schools.com
</footer>

</body>
</html>
