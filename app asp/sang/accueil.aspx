<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accueil.aspx.cs" Inherits="sang.accueil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <style>
         body{
             background-color:#f5f5f5;
            
         }
         #dv{
             position: relative;
             background-image:url(bin/im.png);
             height: 40vw;
             background-repeat: no-repeat;
             background-position: center top;
             background-size: contain;
         }
      .btn {
                 position: absolute;
                 top: 50%;
                 left: 12%;
                 background-color: black;
                 color: white;
                 font-size: 20px;
                 padding: 20px 9px;
                 border: none;
                 cursor: pointer;
                 border-radius: 5px;
                 text-align: center;
             }
      .auto-style4:hover {
                  background-color: #d62d26;
                  color: black;
                 }
          .auto-style5:hover {
                  background-color: #d62d26;
                  color: black;
                 }
         .auto-style1 {
             width: 100%;
         }
         .auto-style2 {
             width: 497px;
             text-align: right;
         }
         .auto-style3 {
             width: 500px;
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
         .auto-style6 {
             left: 1px;
             top: 0px;
         }
       
         
        
         
        
       
         
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>


        
             <table class="auto-style1">
                 <tr>
                     <td class="auto-style3">&nbsp;</td>
                     <td class="auto-style2">
                         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/inscription.aspx">Inscription</asp:HyperLink>
&nbsp;&nbsp;&nbsp; </td>
                     <td>
                         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
                     </td>
                 </tr>
             </table>


        
        </header>
     <div id="dv" class="auto-style6">
        
    <asp:Button ID="Button1" runat="server" Text="Recherche donneurs" Cssclass="auto-style5" OnClick="Button1_Click"/>
        
    <asp:Button ID="Button2" runat="server" Text="Donne sang" Cssclass="auto-style4" OnClick="Button2_Click"/>
    </div>
    </form>
</body>
</html>
