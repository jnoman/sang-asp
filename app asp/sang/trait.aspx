<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trait.aspx.cs" Inherits="sang.trait" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        body{
            background: linear-gradient(7deg,#e52e5c,#e62f4e,#e62e2e,#ec1f1f);
            background-repeat:no-repeat;
        }
        .table {
            margin-bottom: 18%;
            margin-top:18%;
        }

        .txt {
            color: #f1f1f1;
            font-size: 20px;

        }

        .txtt {
            color: darkseagreen;
            font-size: 20px;
        }

        .btn {
            background-color: #f1f1f1;
            color: black;
            font-size: 16px;
            padding: 16px 30px;
            border: none;
            border-radius: 5px;
            text-align: center;
        }

            .btn:hover {
                background-color: black;
                color: white;
            }
        .auto-style1 {
            position: relative;
            overflow: hidden;
            width: 283px;
            left: 0px;
            top: 0px;
        }
         #dv{
             position: relative;
             background-image:url(src/im.png);
             height: 40vw;
             background-repeat: no-repeat;
             background-position: center top;
             background-size: contain;
         }
         .auto-style6 {
             left: 1px;
             top: 0px;
         }
       
         
        
         
        
       
         
         .auto-style5 {

             position: absolute;
             top: 50%;
             left: 2%;
             background-color: black;
             color: white;
             font-size: 20px;
             padding: 20px 9px;
             cursor: pointer;
             border-radius: 5px;
             text-align: center;
             width: 208px;
         }
                
         
         .auto-style4 {

             position: absolute;
             top: 50%;
             left: 20%;
             background-color: black;
             color: white;
             font-size: 20px;
             padding: 20px 9px;
             cursor: pointer;
             border-radius: 5px;
             text-align: center;
             width: 204px;
         }
         </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <header>


        
             <table class="auto-style1">
                 <tr><td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                     
                     <td>
                         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/message1.aspx">message</asp:HyperLink>
                     </td>
                 </tr>
             </table>


        
        </header>
    
     <div id="dv" class="auto-style6">
        
         <br />
         <br />
        
    <asp:Button ID="Button1" runat="server" Text="Recherche donneurs" Cssclass="auto-style5" OnClick="Button1_Click"/>
        
    <asp:Button ID="Button2" runat="server" Text="Donne sang" Cssclass="auto-style4" OnClick="Button2_Click"/>
        <br />
         

    </div>
    </form>
</body>
</html>
