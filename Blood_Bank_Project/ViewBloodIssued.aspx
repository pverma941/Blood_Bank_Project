﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="True" CodeBehind="ViewBloodIssued.aspx.cs" Inherits="Blood_Bank_Project.ViewBloodIssued" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="blood_issue_id" DataSourceID="SqlDataSource1" GridLines="None">
            <Columns>
                <asp:BoundField DataField="blood_issue_id" HeaderText="blood_issue_id" InsertVisible="False" ReadOnly="True" SortExpression="blood_issue_id" />
                <asp:BoundField DataField="request_id" HeaderText="request_id" SortExpression="request_id" />
                <asp:BoundField DataField="issued_by" HeaderText="issued_by" SortExpression="issued_by" />
                <asp:BoundField DataField="issued_date" HeaderText="issued_date" SortExpression="issued_date" />
                <asp:BoundField DataField="issued_to" HeaderText="issued_to" SortExpression="issued_to" />
                <asp:BoundField DataField="amount_paid" HeaderText="amount_paid" SortExpression="amount_paid" />
                <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_blood_issued] WHERE [blood_issue_id] = @blood_issue_id" InsertCommand="INSERT INTO [tbl_blood_issued] ([request_id], [issued_by], [issued_date], [issued_to], [amount_paid], [user_id]) VALUES (@request_id, @issued_by, @issued_date, @issued_to, @amount_paid, @user_id)" SelectCommand="SELECT * FROM [tbl_blood_issued]" UpdateCommand="UPDATE [tbl_blood_issued] SET [request_id] = @request_id, [issued_by] = @issued_by, [issued_date] = @issued_date, [issued_to] = @issued_to, [amount_paid] = @amount_paid, [user_id] = @user_id WHERE [blood_issue_id] = @blood_issue_id">
            <DeleteParameters>
                <asp:Parameter Name="blood_issue_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="request_id" Type="Int32" />
                <asp:Parameter Name="issued_by" Type="String" />
                <asp:Parameter Name="issued_date" Type="DateTime" />
                <asp:Parameter Name="issued_to" Type="String" />
                <asp:Parameter Name="amount_paid" Type="Double" />
                <asp:Parameter Name="user_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="request_id" Type="Int32" />
                <asp:Parameter Name="issued_by" Type="String" />
                <asp:Parameter Name="issued_date" Type="DateTime" />
                <asp:Parameter Name="issued_to" Type="String" />
                <asp:Parameter Name="amount_paid" Type="Double" />
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="blood_issue_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>