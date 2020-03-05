<!DOCTYPE html>
<html>
<head>
<style>
body {width: 800px; margin: 20px auto; /* center */ padding: 20px;
		 border: 1px solid #00AAA0;
		 background-color:#8ED2C9 ;}

header {    
    color:white;    
    border: 1px solid #8ED2C9;
     background-image: url("${pageContext.request.contextPath}/resources/images/cute-sea-creatures-album-turtle-101011.jpg");
  	background-repeat: no-repeat;  	 
     background-position:right; 
    font-size: 250%;
  	 height:250px;    	 
}

nav
{
margin-top:15px;
}

<div>{
  float:left;  
}

.flex-container {
    display: -webkit-flex;
    display: flex;
    -webkit-align-items: flex-start;
    align-items: flex-start;
    width: 800px;
    height: 250px;
   font-family: "Palatino Linotype", "Book Antiqua";
}

.flex-item {
	padding-left:5px;
	padding-right:5px;   
    width: 800px;   
    margin-top: 20px;
    text-align:left;
    font-size: 16px;
    height: 10px;    
}
section {        
    background-color:white;
    height: 500px;
    color:black;   	 	 
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
<div> SeaCritter Web Services : Develops ecommerce sites for small business</div>
</header> 

<nav>

</nav>


<section>
	<div class="flex-container">
  
  <div class="flex-item"><b> Web Development Services </b> <div>
  <ul>  
  <li><a href="<%=request.getContextPath() %>/Design_Development">Web Design and Development</a><br></li>   
  <li><a href="<%=request.getContextPath() %>/Database">Database Development</a><br></li>   
  <li><a href="#home">Web Hosting Services</a></li>
</ul>
</div>
  </div>
  <div class="flex-item"><div><b>Bio</b><br><br>I offer many web development services with my main focus being Java programming. Over the 9 years of being a Air Force Contractor, I have developed many skills and services to offer to my clients. Because of this I can offer full service web development that includes everything from domain registration, secure certificates, payment gateway set up, database development, web hosting, website development and programming. This is ideal for small business and individuals trying to build their web presence but not sure where to begin.</div></div>
  <div class="flex-item"><div><b>Costs</b> <br><br>Since I'm new to freelancing the only cost I'm asking for is the domain name and cost of  
the server. The website design and development will be initially free. Just <a href="mailto:m_hollinger@knology.net">EMail</a>
 the specifications
of your website and I'll discuss the project with you.</div></div>
</div>
</section>

<footer>
SeaCritterWebServices.com
</footer>

</body>
</html>
