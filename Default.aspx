<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication4._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>WinSoft Project - Mohamed Musa</h1>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Department Table</h2>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceDepartment" Width="388px" OnRowCommand="GridView1_RowCommand" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="DCode" HeaderText="DCode" SortExpression="DCode" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        <asp:CommandField ButtonType="Button" ShowEditButton="true" ShowDeleteButton="false" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [DCode], [Department] FROM [Department_Table]"></asp:SqlDataSource>
            </p>
            <p>
                &nbsp;</p>
        </div>
        </div>
    
    <div class="row">
        <div class="col-md-4">
            <h2>Names Table</h2>
            <p>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" datasourceid="SqlDataSourceNames" Width="388px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="NCode" HeaderText="NCode" SortExpression="NCode" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    </Columns>
                </asp:GridView>
      
                <asp:SqlDataSource ID="SqlDataSourceNames" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [NCode], [Name] FROM [Names_Table]"></asp:SqlDataSource>
            </p>
            <p>
                &nbsp;</p>
        </div>
    </div>
    <div>      
      
    </div>   
</asp:Content>
