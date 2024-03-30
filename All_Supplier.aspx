﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.Master" AutoEventWireup="true" CodeBehind="All_Supplier.aspx.cs" Inherits="Inventory_Managament.All_Supplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            font-size: xx-large;
            color: #FFFFFF;
            background-color: #808080;
        }

        .grid-container {
            max-height: 350px; /* Adjust the height as needed */
            overflow-y: auto; /* Enable only vertical scrollbar */
            overflow-x: hidden; /* Hide horizontal scrollbar */
            width: 100%;
        }

            .grid-container::-webkit-scrollbar {
                width: 0px; /* Adjust the width as needed */
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;
    </p>
    <p>
        <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text=".  All Supplier  ."></asp:Label>
        </strong>
        <p>
            <table class="auto-style25" style="margin: 0px auto 0px auto">
                <tr>
                    <td class="auto-style27">Supplier ID</td>
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
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" HorizontalAlign="Center" AutoGenerateColumns="False" Width="60%">
                    <Columns>
                        <asp:TemplateField HeaderText =" Supplier ID ">
                            <ItemTemplate>
                                <%#Eval("Supplier_ID") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText =" Supplier Name ">
                            <ItemTemplate>
                                <%#Eval("Supplier_Name") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText =" Profile ">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Img/" + Eval("Profile_pic") %>' Width="75" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
            </div>
        </p>
</asp:Content>
