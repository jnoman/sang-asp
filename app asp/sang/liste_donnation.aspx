﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="liste_donnation.aspx.cs" Inherits="sang.admin" %>

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
        .auto-style2 {
            margin-left: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <header>


        
             


        
        </header>
    <div>

            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" CssClass="auto-style2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField SelectText="valide" ShowSelectButton="True" />
                    <asp:CommandField DeleteText="non valide" SelectText="non valide" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        



    </div>
    
    </div>
    </form>
</body>
</html>
