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
     background-image: url("${pageContext.request.contextPath}/resources/images/bonefish.png");
  	background-repeat: no-repeat;  	 
     background-position:center; 
    font-size: 250%;
  	 height:250px;
  	 text-align:center;    	 
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
    height: 300px;
    color:black;  
    text-align:center; 	 	 
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
<div> Web Design and Development</div>
</header>
<nav>

</nav>


<section>
	<div class="flex-container">
  
  <div class="flex-item"><div><b>Web Design</b><br><br>Web design is the customer-facing part of the website. A web designer is concerned with how a site looks and how the customers interact with it. Web designers use various design programs such as Adobe Photoshop to create the layout and other visual elements of the website.

I will design the site along with the support of a graphic artist using HTML5, CSS, JSTL, AJAX, JSON and JSP working with your ideas to build website functionality, if you have a designer I will gladly work with their design.

 
  </div></div>
  <div class="flex-item"><div><b>Web Development</b> <br><br>Web development is the back-end of the website, the programming and interactions on the pages. A web developer focuses on how a site works and how the customers get things done on it.
  I will develop the site using a Struts Framework, java is the programming language able to develop graphs, convert data into pdf and excel files and many other functions. 
  </div></div>
</div>
</section>

<footer>
SeaCritterWebServices.com
</footer>

</body>
</html>
