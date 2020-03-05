<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
 pageEncoding="ISO-8859-1"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<html>  
<head>  
<title>Donor Page Totals</title>  
<style> 
<head>
      <meta charset="utf-8">
      <title>jQuery UI Datepicker functionality</title>
      <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
      <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
      <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

      <!-- Javascript -->
      <script>
         $(function() {
            $( "#datepicker-1" ).datepicker();
            $( "#datepicker-2" ).datepicker();
         });
      </script>
   
 
body {width: 800px; margin: 20px auto; /* center */ padding: 20px;
		 border: 1px solid black;}
  
td {  
 font-size: 12px;  
 color: black;  
 width: 110px;  
 height: 22px;  
 text-align: center;  
}  
.heading {  
font-size: 12px;  
 color: white;  
 font: bold;  
 background-color:black;  
 border: thick;  
} 
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
div{
	  
     float:left;
     padding-top: 30px;
     padding-right: 30px;
     padding-bottom: 50px;
     padding-left: 180px;
    
   	 	 
}
footer {
    background-color:black
    color:white;
    clear:both;
    text-align:center;
    padding:5px;	 	 
} 
</style>  
</head>  
<body>
  
<header>
<h1>Donor Report Fund List</h1>
</header>

<nav>
Funds Operations<br><br>

<a href="<%=request.getContextPath() %>/insert">Add Donor Fund</a><br>
<a href="<%=request.getContextPath() %>/getList">List of Donor Funds</a><br>
<a href="<%=request.getContextPath() %>/DatePicker">Donor Fund Report</a><br>
<a href="<%=request.getContextPath() %>/getFunds">Individual Donor Report</a><br>
<a href="<%=request.getContextPath() %>/viewDonor">Insert Donor Data</a><br>

</nav>

<center>  
  
 <br><br>
 
 <table border="1">  
   <tr> 
   
   <td class="heading">Name of Fund</td>  
    <td class="heading">Credit Sum</td>  
    <td class="heading">Debit Sum</td>  
    <td class="heading">Total</td> 
    
   </tr>  
   <c:forEach var="fund" items="${fundList}">  
    <tr>     
     <td>${fund.nameOfFund}</td> 
     <td>${fund.sumCredit}</td>       
	 <td>${fund.sumDebit}</td>	 
     <td>${fund.total}</td>
    </tr>  
   </c:forEach>  
   
  </table>  
  
 </center>  
</body>  
</html>  
