<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="Institucion.Cursos.Detalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

    
    <br />
    <br />

    
    Lista de estudiantes que están inscritos a este curso.<br />
    <br />
&nbsp;<asp:GridView ID="GridView1" runat="server" class="table">
    </asp:GridView>
</asp:Content>
