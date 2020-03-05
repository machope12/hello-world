<html>
<head>
<title>Donation Page</title>
 
<SCRIPT type=text/javascript>
 
function checkFields(input)
{ 
  var value = document.getElementById('amount_other').value; 
  var fieldCheck   = true;
  var fieldsNeeded = "\nA value must be entered in the following field(s):\n\n\t"; 
    if (input.elements["fname"].value == "")
 {    
       fieldsNeeded += "First Name" + "\n\t";   
       fieldCheck = false;    
 }
 if (input.elements["lname"].value == ""){     
       fieldsNeeded += "Last Name" + "\n\t";
       fieldCheck = false;}
 
    if (input.elements["UMstreet"].value == ""){     
       fieldsNeeded += "Street Address" + "\n\t";
       fieldCheck = false;}
    if (input.elements["city"].value == ""){     
       fieldsNeeded += "City" + "\n\t";
       fieldCheck = false;} 
    if (input.elements["UMstate"].value == ""){     
       fieldsNeeded += "State" + "\n\t";
       fieldCheck = false;} 
    if (input.elements["UMzip"].value == ""){     
       fieldsNeeded += "Zip" + "\n\t";
       fieldCheck = false;} 
    if (input.elements["UMcard"].value == ""){     
       fieldsNeeded += "Card Card Number" + "\n\t";
       fieldCheck = false;}   
    if (input.elements["UMexpir"].value == ""){     
       fieldsNeeded += "Expiration Date" + "\n\t";
       fieldCheck = false;}  
    if (input.elements["UMcvv2"].value == ""){     
       fieldsNeeded += "Card Id" + "\n\t";
       fieldCheck = false;}
    if (input.elements["UMname"].value == ""){     
       fieldsNeeded += "Name on Card" + "\n\t";
       fieldCheck = false;} 
    
    var found = 0;
 var UMdescriptionInputs = document.getElementsByName("UMdescription");
 
 for (var j = 0; j < UMdescriptionInputs.length; j++) {
    if (UMdescriptionInputs[j].checked === true)
  {  
         
  var found = 1;
        break;
    }
   } 
 
 if (found == 0)
 {
     fieldsNeeded += "Type of Description" + "\n\t"
 }
 
 var found = 0;
 var UMamountInputs = document.getElementsByName("UMamount");
 
 for (var j = 0; j < UMamountInputs.length;j++) 
 
     
 {  
  if  (UMamountInputs[j].checked === true && UMamountInputs[j].value  == 'other')
   {
      
    var found = 1;
         
   
   if (UMamountInputs[j].value  == 'other')    
  {
     
     
     if (value <1)
      {
           alert('You have to put in  the other_amount value');
        return false;
      }      
       
      document.getElementById('other').value = value;      
      var found = 1;      
      break;    
     }
     else
     {         
      if (value>0)
      {
       alert('You have to check the other_amount button');
       return false;
      }
      else
      {       
          var found = 0;
             break;
      }
      
     }
     
     
     
      
   
   
   } 
  else if (UMamountInputs[j].checked === true)
   {
   
     
      found = 1
   break;
   }
   
   
  
   } 
  
 if (found == 0)
   {
       fieldsNeeded += "Type of Amount" + "\n\t"
   } 
   
 
 
  if (fieldCheck == true){  
        
 
    return true;
  }
  // SOME REQUIRED FIELDS ARE MISSING VALUES
  else
  {      
    alert ( fieldsNeeded);   
    return false;
  }   
 
}
</SCRIPT>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
#Layer6 {
 position:absolute;
 left:200px;
 top:173px;
 width:328px;
 height:273px;
 z-index:1;
 font-size:14px;
}
#Layer7 {
 position:absolute;
 left:431px;
 top:172px;
 width:495px;
 height:270px;
 z-index:2;
}
#Layer1 {
 position:absolute;
 left:95px;
 top:-1px;
 width:955px;
 height:103px;
 z-index:3;
}
#Layer2 {
 position:absolute;
 left:105px;
 top:514px;
 width:308px;
 height:425px;
 z-index:4;
 display:none;
}
 
#memorial { 
 
 display:none;
}
#Layer3 {
 position:absolute;
 left:821px;
 top:286px;
 width:78px;
 height:71px;
 z-index:4;
}
#Layer4 {
 position:absolute;
 left:84px;
 top:172px;
 width:66px;
 height:32px;
 z-index:5;
}
#Layer5 {
 position:absolute;
 left:299px;
 top:238px;
 width:148px;
 height:57px;
 z-index:5;
}
#Layer8 {
 position:absolute;
 left:836px;
 top:266px;
 width:66px;
 height:40px;
 z-index:5;
}
#Layer9 {
 position:absolute;
 left:800px;
 top:318px;
 width:100px;
 height:61px;
 z-index:6;
}
#Layer10 {
 position:absolute;
 left:820px;
 top:183px;
 width:119px;
 height:36px;
 z-index:7;
}
#Layer11 {
 position:absolute;
 left:853px;
 top:475px;
 width:105px;
 height:57px;
 z-index:8;
}
#Layer12 {
 position:absolute;
 left:822px;
 top:203px;
 width:72px;
 height:19px;
 z-index:8;
 font-size: 16px;
 font-weight: bold;
 color: #0099FF;
}

a:link {
 color: #000000;
 text-decoration: none;
}
a:visited {
 color: #000000;
 text-decoration: none;
}
a:hover {
 color: #000000;
 text-decoration: none;
}
a:active {
 color: #000000;
 text-decoration: none;
}
#Layer13 {
 position:absolute;
 left:818px;
 top:203px;
 width:127px;
 height:33px;
 z-index:5;
}
#Layer14 {
 position:absolute;
 left:810px;
 top:250px;
 width:92px;
 height:24px;
 z-index:6;
 background-color: #FFFFFF;
}
.style1 {
 color: #9900CC;
 font-weight: bold;
 font-size: 12px;
}
.style2 {
 color: #000000;
 font-family: Arial, Helvetica, sans-serif;
 font-size: 10px;
}
.style4 {color: #333333}
-->
</style>
</head>
 
<body>

<div id="Layer1"><img src="${pageContext.request.contextPath}/resources/images/headerimage1.jpg" width="468" height="160"><img src="${pageContext.request.contextPath}/resources/images/headerimage2.jpg" width="176" height="160"><img src="${pageContext.request.contextPath}/resources/images/headerimage3.jpg" width="256" height="160"></div>
 
<div id="Layer3"><span id="siteseal">
<script type="text/javascript" src="https://seal.godaddy.com/getSeal?sealID=sDpce4zu7Cv4qebJwBUGA7XiAeHFSPhJLPhkURKSrzC57E7n7K6FFvW1ar"></script><br/>
<a style="font-family: arial; font-size: 9px" href="http://www.godaddy.com/hosting/web-hosting.aspx" target="_blank"></a></span></div>
 


<form  name="form1" id="form1" action="https://www.usaepay.com/gate.php" method="post" onSubmit="return checkFields(this)">
 <input type="hidden" name="UMkey" value="pVo6PXQuWsBRrZFk743f8wpJSg6o3UJR">
 <input type="hidden" name="UMticket" value="101">
 <input type="hidden" name="UMcustreceipt" value="Yes">
 <input type="hidden" name="UMredirApproved" value="https://www.seacritterwebservices.com/Donor/acknowledge">
 



 
<div id="Layer6">
<div><strong>Please select the type of donation</strong>: </div>  
  <label>
       <input type="radio" name="UMdescription" value="Direct Contribution to ACJF"  onClick="applyClass()" >
  Direct Contribution to ACJF</label>
  <br/>   
 
 <input type="radio" name="UMdescription" value="Pioneers of Justice" onClick="applyClass()" >
  Pioneers of Justice 
 <br> 
 
 <input type="radio" name="UMdescription" value="Advocates of Justice" onClick="applyClass()" >
  Advocates of Justice </label><br>
 
 <input type="radio" name="UMdescription" value="Memorial" onClick="applyClass1()"  >
  Memorial
 <br>
 
<input type="radio" name="UMdescription" value="Honor" onClick="applyClass1()"  > 
Honor<br> 
 
 <div id ="gala" style="display: none">
 <br>
 <label style="font-weight:bold">Pick a Sponsorship Level </label>
 <br>
   
 <input type="radio" name="UMamount" value="10000"> 
 Marquee Sponsor – $10,000</label><br>
 
        <input type="radio" name="UMamount" value="5000">
        Platinum Sponsor – $5,000
      <br>
   
        <input type="radio" name="UMamount" value="3000">
        Gold Sponsor – $3,000
      <br>
        <input type="radio" name="UMamount" value="2000">
        Silver Sponsor – $2,000
  <br> 
  <input type="radio" name="UMamount" value="1000" alt="UAHC campers enjoy a meal in the camp cafeteria">
 
        Bronze Sponsor – $1,000
  
  <br> <input type="radio" name="UMamount" value="500">
        Friends – $500
  <br>
  
 
  <input type="radio" name="UMamount" value=" ">
        Individual Ticket - $125.00
        
  <label>&nbsp;&nbsp;&nbsp;
  Number of Tickets
  <input type = "text" name = "ticket" size="1"  ONKEYUP="document.form1.calc.value =document.form1.ticket.value *125;calc2()" style="font-size:10px">
  </label>
  <div style="padding-left:211px; float:left;font-size:10px">
  Amount $
  <input type = "text" name = "calc" size="3"  style="font-size:10px"/> 
  

  </div>
 


  
  
    </div>
 
  
 <div id="amount" style="display: none">
 <br><br>
 <strong>Amount of Donation: </strong><br>   
       
        <input type="radio" name="UMamount" value="25">
        $25.00</label>
      <br>
      
        <input type="radio" name="UMamount" value="50">
        $50.00
      <br>
     
        <input type="radio" name="UMamount" value="100">
        $100.00
      <br>
      
 <input type="radio" name="UMamount" value="250"> 
 $250.00
      <br>
    
 <input type="radio" name="UMamount" value="500"> 
 $500.00</label>
      <br>
     
        <input type="radio" name="UMamount" value="1000">
        $1,000.00
      <br>
   
     
       <input type="radio" name="UMamount"   id ="other" value="other">
        <input name="amount_other" id ="amount_other" type="text" size="10"  onFocus="donationButton()">      
        Other Amount<br /> <br>
 
 
     <div>   
 <br>
 
 
 <br>  
 
 <strong>This donation is made by</strong>:
 <select  name="UMshipcompany">
      <option value="-1"></option>
      <option value="Individual">Individual</option>
      <option value="Firm">Firm</option>
    </select><br><br>
 </div> 
  <div id ="memorial" >
 
  <br>
 <div style="font-size:11px; font-weight:bold">Name of Person in Memory/Honor of: </div>
 <input type="text" name="UMshipfname" value=""><br><br>
 <table style="font-size:11px">
 <tr>
 <td  colspan="3">
 <div style="font-size:11px; font-weight:bold">Acknowledgement to be sent to: </div> 
 </td>
 </tr>
    <tr> 
 <td>First Name </td>
  <td>   <input type = "text" name = "UMbillfname"/>  </td>
 </tr>
 <tr> 
 <td> Last Name
 <td><input type = "text" name = "UMbilllname"/></td>
 </td>
 </tr>
 <tr>
 <td> Address </td>
 <td>
 <input type = "text" name = "UMbillstreet "/>
 </td>
 </tr>
 <tr>
 <td> City </td>
 <td>
 <input type = "text" name = "UMbillcity"/>
 </td>
 </tr>
 <tr>
 <td> State </td>
 <td>
 <input type = "text" name = "UMbillstate"/>
 </td>
 </tr>
 <tr>
 <td> Zip </td>
 <td>
 <input type = "text" name = "UMbillzip"/>
 </td>
 </tr>
 </table>   
 </div>   
  </div>
 </div>  
<div id="Layer7">
  <table width="543" border="0" style="font-size:14px;">
    <tr>
      <td height="32" colspan="2"><div align="center"><strong><u>Donor Information </u></strong></div></td>
    </tr>
    <tr>
      <td width="189"><div align="right">First Name </div></td>
      <td width="298"><input type="text" name="fname"></td>
    </tr>
    <tr>
      <td><div align="right">Last Name </div></td>
      <td><input type="text" name="lname"></td>
    </tr>
    <tr>
      <td><div align="right">Firm Name </div></td>
      <td><input type="text" name="firm"></td>
    </tr>
    <tr>
      <td><div align="right">Address</div></td>
      <td><input type="text" name="UMstreet"></td>
    </tr>
    <tr>
      <td><div align="right">City</div></td>
      <td><input type="text" name="city"></td>
    </tr>
    <tr>
      <td><div align="right">State</div></td>
      <td><input type="text" name="UMstate"></td>
    </tr>
    <tr>
      <td><div align="right">Zip</div></td>
      <td><input type="text" name="UMzip"></td>
    </tr>
    <tr>
      <td><div align="right">Email</div></td>
      <td><input type="text" name="UMcustemail"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
    <tr>
      <td height="32" colspan="2"><div align="center"><strong><u>Credit Card Information</u> </strong></div></td>
    </tr>
    <tr>
      <td><div align="right">Please Select Credit Card </div></td>
      <td><input type="radio" name="cardtype" value="Visa">
        Visa Card
        <input type="radio" name="cardtype" value="MasterCard">
        Master Card
        <input type="radio" name="cardtype" value="Amex">
        America Express</td>
    </tr>
    <tr>
      <td><div align="right">Credit Card Number </div></td>
      <td><input type="text" name="UMcard"></td>
    </tr>
    <tr>
      <td><div align="right">Expiration Date </div></td>
      <td><input type="text" name="UMexpir">
        MMYY</td>
    </tr>
    <tr>
      <td><div align="right">Name on the Card </div></td>
      <td><input type="text" name="UMname"></td>
    </tr>
    <tr>
      <td><div align="right">Card ID (CVV2/CID) </div></td>
      <td><input type="text" name="UMcvv2">
        <a href="cvv.htm">What is the Card ID?</a></td>
    </tr>
    <tr>
      <td><div align="right">
          <input name="submit" type=submit value="Submit" />
      </div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</div>
</form>
</body>
</html>
 
<script language="JavaScript">
 

function applyClass() {
 document.getElementById("memorial").style.display='none'
 document.getElementById("gala").style.display='none'
 document.getElementById("amount").style.display='block'
 
}
 

function applyClass1() {
 
 document.getElementById("memorial").style.display='block'
 document.getElementById("gala").style.display='none'
 document.getElementById("amount").style.display='block'
}
 

function applyClass2() {
 document.getElementById("gala").style.display='none'
 document.getElementById("memorial").style.display='none'
 document.getElementById("amount").style.display='none'
 
}
 
function applyClass4() {
 
 document.getElementById("memorial").style.display='none'
 document.getElementById("amount").style.display='none'
 document.getElementById("gala").style.display='block'
}
 
 
 
function calc2() {
 document.form1.UMamount[6].value = document.form1.calc.value; 
}
 

function donationButton1()
{ 
 document.form1.UMamount[20].checked=true;
}
 
 
 
</script>
 
 
 
