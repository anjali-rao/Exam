<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegAck.aspx.cs" Inherits="RegAck" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <%-- Displayed upon succeessful registration --%>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Firebrick"
        Style="z-index: 100; left: 168px; position: absolute; top: 424px" Text="your registered number is:"
        Width="224px"></asp:Label>
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Firebrick"
        Style="z-index: 101; left: 416px; position: absolute; top: 424px"
        Width="136px"></asp:Label>
    &nbsp;&nbsp;<br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong><span style="font-size: 32pt;
        color: darkseagreen; font-family: Monotype Corsiva"> &nbsp; Successfully
        Registered<br />
    </span></strong>
    <asp:Button ID="Button1" runat="server" ForeColor="#004000" PostBackUrl="~/Home.aspx"
        Style="z-index: 103; left: 280px; position: absolute; top: 512px" Text="Click   To    Login"
        Width="224px" />
    
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

</asp:Content>

