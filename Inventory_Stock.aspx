<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Inventory_Stock.aspx.cs" Inherits="Inventory_Managament.Inventory_Stock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style9 {
            font-size: xx-large;
            color: #FFFFFF;
            background-color: #808080;
        }

        .auto-style25 {
            width: 649px;
            color: #FFFFFF;
            border-left-style: solid;
            border-left-width: 1px;
            border-right: 1px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 1px;
            border-bottom: 1px solid #C0C0C0;
            background-color: #808080;
        }

        .auto-style27 {
            width: 215px;
        }

        .grid-container {
            max-height: 450px; /* Adjust the height as needed */
            overflow-y: auto; /* Enable only vertical scrollbar */
            overflow-x: hidden; /* Hide horizontal scrollbar */
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        &nbsp;
    </p>
    <p>
        <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text=".  Inventory  ."></asp:Label>
        </strong>
    <p>
        <table class="auto-style25" style="margin: 0px auto 0px auto">
            <tr>
                <td class="auto-style27">ProductID</td>
                <td class="auto-style27">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
        <br />
    <div class="grid-container">
        <strong>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style9"></asp:Label>
        </strong>
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" HorizontalAlign="Center" AutoGenerateColumns="False" Width="60%">
            <columns>
                <asp:TemplateField HeaderText=" Product ID ">
                    <itemtemplate>
                        <%#Eval("ProductID") %>
                    </itemtemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText=" Product Name ">
                    <itemtemplate>
                        <%#Eval("ProductName") %>
                    </itemtemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText=" Quantity ">
                    <itemtemplate>
                        <%#Eval("ProductQuantity") %> left
                    </itemtemplate>
                </asp:TemplateField>
            </columns>
            <footerstyle backcolor="#C6C3C6" forecolor="Black" />
            <headerstyle backcolor="#4A3C8C" font-bold="True" forecolor="#E7E7FF" />
            <pagerstyle backcolor="#C6C3C6" forecolor="Black" horizontalalign="Right" />
            <rowstyle backcolor="#DEDFDE" forecolor="Black" />
            <selectedrowstyle backcolor="#9471DE" font-bold="True" forecolor="White" />
            <sortedascendingcellstyle backcolor="#F1F1F1" />
            <sortedascendingheaderstyle backcolor="#594B9C" />
            <sorteddescendingcellstyle backcolor="#CAC9C9" />
            <sorteddescendingheaderstyle backcolor="#33276A" />
        </asp:GridView>
    </div>

</asp:Content>
