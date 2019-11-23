<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="sang.login" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" class="table">

                      <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="CIN" CssClass="txt" ForeColor="Black"></asp:Label></td>

                    <td>
                        <asp:TextBox ID="TextBox01" runat="server" CssClass="txt"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Mot de passe" CssClass="txt" ForeColor="Black"></asp:Label></td>

                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="txt"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td align="center">
                        <asp:Button ID="Button1" runat="server" Text="Connexion" CssClass="btn" OnClick="Button1_Click" /></td>
                </tr>

                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="txt" NavigateUrl="~/inscription.aspx">Crée un compte</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" CssClass="txtt" ForeColor="Black"></asp:Label></td>
                </tr>

            </table>
    </div>
    </form>
</body>
</html>
