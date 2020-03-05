<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
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
     padding-left: 300px;
    
   	 	 
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
<h1>Donor Fund Report</h1>
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
<form action="<%=request.getContextPath() %>/getDonorReport" method= POST >    
      <!-- HTML --> 
      <p>Enter Stop Date: <input type="text" id="datepicker-1" name="startDate"></p>
      <p>Enter Start Date: <input type="text" id="datepicker-2" name = "stopDate"></p>
      <input type="submit" value="Pick Dates">   
</form>
</center>
<footer>
SeacritterWebServices
</footer>

</body>
</html> 
