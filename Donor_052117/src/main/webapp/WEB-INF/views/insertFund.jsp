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
section{
	  
     
     padding-top: 30px;
     padding-right: 30px;
     padding-bottom: 50px;
     margin-left: 300px;
    
   	 	 
}

div{




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
section{
	  
     
     padding-top: 30px;
     padding-right: 30px;
     padding-bottom: 50px;
     margin-left: 300px;
    
   	 	 
}

div{




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
<h1>Add Donor Fund</h1>
</header>

<nav>
Funds Operations<br><br>

<a href="<%=request.getContextPath() %>/insert">Add Donor Fund</a><br>
<a href="<%=request.getContextPath() %>/getList">List of Donor Funds</a><br>
<a href="<%=request.getContextPath() %>//DatePicker">Donor Fund Report</a><br>
<a href="<%=request.getContextPath() %>/getFunds">Individual Donor Report</a><br>
<a href="<%=request.getContextPath() %>/viewDonor">Insert Donor Data</a><br>

</nav>

<section>
<div>
<form action="<%=request.getContextPath() %>/insert" method= POST >  
    <input type="text" name="nameOfFund" required placeholder="Name of Fund"><br><br>   
    <textarea  name="description" cols="35"  placeholder="Description"></textarea> <br><br>
    <textarea  name="notes" cols="35" placeholder="Enter Notes"></textarea><br><br>  
    <input type="submit" value="Add DAF Fund">   
</form>
</div>
</section>
<footer>

 
Copyright © W3Schools.com
</footer>

</body>
</html> 
