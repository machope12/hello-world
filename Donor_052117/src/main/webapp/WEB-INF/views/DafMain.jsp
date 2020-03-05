<!DOCTYPE html>
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
section {
    text-align:center;
    width:350px;
    float:left;
    padding:50px;	 	 
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

<section>
<h1>Donor Advised Funds</h1>
<h1>Choose Item from the Menu</h1>
</section>

<footer>
Copyright © W3Schools.com
</footer>

</body>
</html>
