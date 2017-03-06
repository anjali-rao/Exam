<%@ Page Language="C#" MasterPageFile="~/Instructor.master" AutoEventWireup="true" CodeFile="AddQueinstructor.aspx.cs" Inherits="AddQueinstructor" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <%-- The instructor can add questions. The instructor adds questions and its answers. --%>

    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 360px; position: absolute;
        top: 592px" Width="208px" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="X-Large" ForeColor="#004000"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999"
        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" Font-Size="Small"
        ForeColor="Black" Height="16px" Style="z-index: 103; left: 216px; position: absolute;
        top: 640px" Width="536px">

        <%-- Display added Questions --%>

        <FooterStyle BackColor="#CCCCCC" />
        <RowStyle BackColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" Height="304px" Style="z-index: 102; left: 240px;
        position: absolute; top: 264px" Width="432px">
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        &nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="RoyalBlue" Style="z-index: 100;
            left: 56px; position: absolute; top: 120px" Text="Question"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="RoyalBlue" Style="z-index: 106;
            left: 64px; position: absolute; top: 184px" Text="Answer" Width="48px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 102; left: 216px; position: absolute;
            top: 112px" TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Style="z-index: 103; left: 88px; position: absolute;
            top: 256px" Text="Add" Height="30px" Width="70px" OnClick="Button1_Click1"  />
        <asp:Button ID="Button2" runat="server" Style="z-index: 104; left: 304px; position: absolute;
            top: 256px" Text="Cancel" Height="30px" Width="70px" />
        <span style="font-size: 24pt; color: #006600; font-family: Monotype Corsiva; text-decoration: underline">
            Add Questions
            <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 105; left: 216px; position: absolute;
                top: 176px" TextMode="MultiLine"></asp:TextBox>
        </span></asp:Panel>
</asp:Content>

