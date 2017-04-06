<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OPBasedscore.aspx.cs" Inherits="OPBasedscore" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <%-- To calculate student performance: The local storage time duration is mins and secs are retrieved.
        The total time in secs is calculated and divided by the total seconds (max. duration of the entire exam) 
        The score is also divided by max score. The performance is calculated by the formula
        performance = Math.round(((time + score) * 100) / 2)--%>
     <script language="javascript" type="text/javascript">
         function timeCalc(i)
         {
             var min = localStorage.getItem("min");
             var sec = localStorage.getItem("sec")
             min = (min < 10 ? "0" + min : min);
             sec = (sec < 10 ? "0" + sec : sec);
             document.getElementById("Label2").innerHTML = "Score:"+i+"/10";
             var total = (((min * 60) + sec));
             var time = (600 - total) / 600;
             var score = ((i / 10));
             var performance = Math.round(((time + score) * 100) / 2);

             if (i < 4) {
                 document.getElementById("Label3").innerHTML = "Fail,Prepare Better!";
             }
             else if (i >= 4 && i < 10) 

                
                     document.getElementById("Label3").innerHTML = "Performance:" + performance + "%";              
             
             else if (i == 10) {
                   document.getElementById("Label3").innerHTML = "Excellent" + performance + "%";
                 
                 }

             }
         </script>
</head>
<body background="pictures/img22.jpg">
    <form id="form1" runat="server">
    <div>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 408px; position: absolute;
            top: 200px" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="XX-Large" ForeColor="DarkMagenta"></asp:Label> <br /><br />
        
        <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 406px; position: absolute;
            top: 271px" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="XX-Large" ForeColor="DarkMagenta"></asp:Label>
        <asp:Button ID="Button1" runat="server" ForeColor="Maroon" Style="z-index: 102; left: 368px;
            position: absolute; top: 328px; width: 222px;" Text="Click To Go To Home Page" PostBackUrl="~/StudentHome.aspx" />
        &nbsp;&nbsp;<br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong><span
            style="font-size: 36pt; color: #8b0000; font-family: Monotype Corsiva; text-decoration: underline">Result</span></strong>
    
    </div>
    </form>
</body>

    
</html>
