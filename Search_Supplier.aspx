<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Search_Supplier.aspx.cs" Inherits="Inventory_Managament.Search_Supplier" %>
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
            border-left-style: solid;
            border-left-width: 1px;
            border-right: 1px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 1px;
            border-bottom: 1px solid #C0C0C0;
            background-color: #808080;
            color: #FFFFFF;
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
        .auto-style13 {
            width: 387px;
            height: 36px;
        }
        .auto-style14 {
            width: 388px;
            height: 36px;
        }
        .auto-style19 {
            height: 36px;
        }
        .auto-style25 {
            width: 388px;
        }
        .auto-style26 {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        &nbsp;</p>
    <p>
        <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text=".  Search Supplier  ."></asp:Label>
        </strong>
    </p>
    <p>
        <br />
        <table class="auto-style8" style="margin: 0px auto 0px auto; width: 70%;">
            <tr>
                <td class="auto-style22">Supplier ID</td>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style24"></asp:TextBox>
                </td>
                <td class="auto-style25" rowspan="3">
                    <asp:Image ID="Image1" runat="server" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style26" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Supplier Name</td>
                <td class="auto-style14">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    Supplier ID</td>
                <td class="auto-style19">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td class="auto-style19">
                    Supplier Photo</td>
            </tr>
        </table>
    </p>

</asp:Content>
