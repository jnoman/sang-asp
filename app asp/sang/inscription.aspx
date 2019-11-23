<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inscription.aspx.cs" Inherits="sang.inscription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
          body{
            background: linear-gradient(7deg,#e52e5c,#e62f4e,#e62e2e,#ec1f1f);
            background-repeat:no-repeat;
        }
        .table {
            margin-bottom: 18%;
            margin-top:18%;
        }

        .txt {
            color: black;
            font-size: 20px;
        }

         .auto-style1 {
             font-size: 20px;
         }
         .auto-style2 {
            font-size: 20px;
            height: 35px;
        }
        .auto-style3 {
            height: 35px;
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

   </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
                  <tr>
                    <td class="auto-style1">
                        CIN</td>

                    <td>
                        <asp:TextBox ID="TextBox01" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox01" ErrorMessage="champ obligatoire"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Nom" CssClass="txt"></asp:Label></td>

                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="champ obligatoire"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Prenom" CssClass="txt"></asp:Label></td>

                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="champ obligatoire"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        Sexe</td>

                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="187px">
                            <asp:ListItem>Homme</asp:ListItem>
                            <asp:ListItem>Femme</asp:ListItem>
                        </asp:DropDownList>
                     </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        Age</td>

                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="age doit etre entre 18 et 65" MaximumValue="65" MinimumValue="18" Type="Integer"></asp:RangeValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="champ obligatoire"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        Poids</td>

                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="poid doit etre superieur a 50 kg" MaximumValue="200" MinimumValue="50" Type="Integer"></asp:RangeValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="champ obligatoire"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        Type sang</td>

                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="187px">
                        </asp:DropDownList>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="DropDownList2" ErrorMessage="choisir votre type de sang" Operator="NotEqual" ValueToCompare="--choisir votre type de sang--"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        Ville</td>

                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" Height="22px" Width="187px">
                        </asp:DropDownList>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="DropDownList3" ErrorMessage="choisir votre ville" Operator="NotEqual" ValueToCompare="--choisir votre ville--"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        Telephone</td>

                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="champ obligatoire"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        Email</td>

                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="champ obligatoire"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style1">
                        Mot de passe</td>

                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="champ obligatoire"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 
                 <tr>
                    <td class="auto-style2">
                        Malade</td>

                    <td class="auto-style3">
                        &nbsp;<asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" Checked="True" GroupName="mm" Text="non" OnCheckedChanged="RadioButton2_CheckedChanged" />
&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" GroupName="mm" Text="oui" OnCheckedChanged="RadioButton1_CheckedChanged" />
                        </td>
                </tr>
                 
                 <tr>
                    <td class="auto-style2">
                        &nbsp;</td>

                    <td class="auto-style3">
                        <asp:TextBox id="TextBox8" TextMode="multiline" Columns="50" Rows="5" runat="server" Visible="False" /></td>
                </tr>
                 
                 <tr>
                    <td class="auto-style2">
                        &nbsp;</td>

                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style1"> </td>
                 </tr>
               <tr>
                        
                        <td> </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Confirmer" CssClass="btn" OnClick="Button1_Click"  />
                             &nbsp;
                             </td>
                </tr>

            </table>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
