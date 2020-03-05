<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
 pageEncoding="ISO-8859-1"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<html>  
<head>  
<title>Being Java Guys | Spring DI Hello World</title>  
<style>  
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
<script>   
function doAjax(x) {	
    $.ajax({
      url: '${pageContext.request.contextPath}/time',
      data: ({name : x}),
      success: function(data) {
    	  alert('Press F5 to update database')      
      }
    });
  }
function doAjax1(){
	
	window.location.href=contextPath+"/donation";      //If you want to go to a new page
	};
	
  </script>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.js"></script>
</head>  
<body>  
<header>
<h1>List of Donor Advised Funds</h1>
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
<c:set var="name" scope="application" value="${fund.daf_Id}"/>
 <table border="1">  
   <tr>     
   <td class="heading">Name of Fund</td>  
    <td class="heading">Description</td>  
    <td class="heading">Notes</td> 
    <td class="heading">Active</td>     
   </tr>  
   <c:forEach var="fund" items="${fundList}">  
    <tr>    
     <td>${fund.nameOfFund} </td>  
     <td>${fund.description}</td>
	 <td>${fund.notes}</td> 
     <td><a href="#" onclick="doAjax('${fund.daf_Id}')">${fund.activeStatus}</a></td>
      
        
   </c:forEach>  
   <tr><td colspan="7">
  
</td>
</tr>  
  </table>  
 </center>   
</body>  
</html>  
