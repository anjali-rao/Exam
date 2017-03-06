<%@ Page Language="C#" MasterPageFile="~/Instructor.master" AutoEventWireup="true" CodeFile="StudentDetailsInstructor.aspx.cs" Inherits="StudentDetailsInstructor" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%-- The instructor can view the student details --%>
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" BackColor="LightCyan" BorderColor="ControlLight"
        BorderStyle="Inset" Height="552px" Style="z-index: 100; left: 8px; position: absolute;
        top: 288px" Width="968px">
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
        <asp:Image ID="Image1" runat="server" Height="96px" ImageUrl="~/pictures/img4.jpg"
             Width="136px" style="z-index: 102; left: 0px; position: absolute; top: 0px" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span
            style="font-size: 24pt; color: #003399; font-family: Monotype Corsiva; text-decoration: underline">Student
            <asp:GridView ID="GridView1" runat="server" Style="z-index: 101; left: 0px; position: absolute;
                top: 136px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Size="Medium" Height="144px" Width="184px" Font-Underline="False">
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <RowStyle ForeColor="#000066" />
                <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
           <%-- Table to view student details --%>
                 </asp:GridView>
            Details </span>
    </asp:Panel>
</asp:Content>

