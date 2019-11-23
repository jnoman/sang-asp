
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="message1.aspx.cs" Inherits="sang.message1" %>

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
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
            <Columns>
                <asp:CommandField SelectText="Envoyer message" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
