<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cursos.aspx.cs" Inherits="Institucion.Cursos.Cursos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" 
        autogenerateselectbutton="True"
        DataSourceID="SqlDataSource1" CssClass="table" AllowPaging="True" DataKeyNames="Id">
        <Columns>
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
            <asp:BoundField DataField="Max" HeaderText="Max" SortExpression="Max" />
            <asp:CheckBoxField DataField="Habilitado" HeaderText="Habilitado" SortExpression="Habilitado" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        </Columns>

        <selectedrowstyle backcolor="LightCyan"
         forecolor="DarkBlue"
         font-bold="true"/> 
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Nombre], [Area], [Descripcion], [Max], [Habilitado], [Id] FROM [Curso] WHERE ([Habilitado] = @Habilitado)">
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="Habilitado" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="botonDetalle" runat="server" Height="71px" OnClick="botonDetalle_Click" Text="Inscribirse" Width="124px" />


<br />
<br />
<br />
<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>


</asp:Content>
