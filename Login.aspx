<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Inventory_Managament.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         body {
     background-image: url("inventory.jpg");
     background-size: 100%;
     background-repeat: no-repeat;
 }
    
        .auto-style9 {
            font-size: xx-large;
            color: #FFFFFF;
            background-color: #808080;
        }
        .auto-style8 {
            width: 184px;
            }
        .auto-style8 {
            width: 779px;
            height: 108px;
            color: #FFFFFF;
            border-left-style: solid;
            border-left-width: 1px;
            border-right: 1px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 1px;
            border-bottom: 1px solid #C0C0C0;
            background-color: #808080;
        }
        .auto-style22 {
            height: 35px;
            width: 387px;
            text-align: center;
        }
        .auto-style23 {
            height: 35px;
            width: 388px;
            text-align: center;
        }
        .auto-style24 {
            margin-left: 0px;
        }
        .auto-style19 {
            height: 36px;
            text-align: center;
        }
        .auto-style25 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

    <p>
        &nbsp;</p>
    <p class="auto-style25">
        <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text=".  Login  ."></asp:Label>
        </strong>
    </p>
    <p>
        <br />
        <table class="auto-style8" style="margin: 0px auto 0px auto">
            <tr>
                <td class="auto-style22">Admin ID</td>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style24"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">Password</td>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style24" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </p>

        </div>
    </form>
</body>
</html>
