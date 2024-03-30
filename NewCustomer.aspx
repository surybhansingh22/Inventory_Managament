<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.Master" AutoEventWireup="true" CodeBehind="NewCustomer.aspx.cs" Inherits="Inventory_Managament.NewCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style9 {
            font-size: xx-large;
            color: #FFFFFF;
            background-color: #808080;
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
        }
        .auto-style23 {
            height: 35px;
            width: 388px;
        }
        .auto-style24 {
            margin-left: 0px;
        }
        .auto-style19 {
            height: 36px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        &nbsp;</p>
    <p>
        <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text=".  New Customer ."></asp:Label>
        </strong>
    </p>
    <p>
        <br />
        <table class="auto-style8" style="margin: 0px auto 0px auto; width: 70%;">
            <tr>
                <td class="auto-style22">Customer ID</td>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style24"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">Customer&nbsp; Name</td>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style24"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Add Customer" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </p>

</asp:Content>
