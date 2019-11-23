<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="message2.aspx.cs" Inherits="sang.message2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 312px;
            height: 54px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
        <p>
            &nbsp;</p>
        <p>
            <textarea id="TextArea1" runat="server" class="auto-style1" name="S1" cols="20" rows="1"></textarea></p>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Envoyer" OnClick="Button1_Click" />
    
    </div>
    </form>
</body>
</html>
