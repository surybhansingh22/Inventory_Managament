<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Sell.aspx.cs" Inherits="Inventory_Managament.Sell" %>
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
        .auto-style25 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        &nbsp;</p>
    <p>
        <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text=".  Sell ."></asp:Label>
        </strong>
    </p>
    <p>
        <br />
        <table class="auto-style8" style="margin: 0px auto 0px auto; width: 70%;">
            <tr>
                <td class="auto-style22">Product ID</td>
                <td class="auto-style22">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style24"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">Product Name</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style24"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Product Quantity</td>
                <td class="auto-style19">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style24"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Selling Date</td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style24"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Customer ID</td>
                <td class="auto-style19">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style24"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    Price Per Piece</td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style24"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:LinkButton ID="LinkButton12" runat="server" CssClass="auto-style25" OnClick="LinkButton12_Click" >Total Price</asp:LinkButton>
                </td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style24"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19" colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="Sell Product" OnClick="Button1_Click"  />
                </td>
            </tr>
        </table>
    </p>

</asp:Content>
