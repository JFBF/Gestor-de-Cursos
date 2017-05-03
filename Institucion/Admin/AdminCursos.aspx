<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminCursos.aspx.cs" Inherits="Institucion.Admin.AdminCursos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
    <EditItemTemplate>
        Id:
        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
        <br />
        Nombre:
        <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
        <br />
        Area:
        <asp:TextBox ID="AreaTextBox" runat="server" Text='<%# Bind("Area") %>' />
        <br />
        Descripcion:
        <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
        <br />
        GUID:
        <asp:TextBox ID="GUIDTextBox" runat="server" Text='<%# Bind("GUID") %>' />
        <br />
        Max:
        <asp:TextBox ID="MaxTextBox" runat="server" Text='<%# Bind("Max") %>' />
        <br />
        IdInstitucion:
        <asp:TextBox ID="IdInstitucionTextBox" runat="server" Text='<%# Bind("IdInstitucion") %>' />
        <br />
        Habilitado:
        <asp:CheckBox ID="HabilitadoCheckBox" runat="server" Checked='<%# Bind("Habilitado") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
    </EditItemTemplate>
    <InsertItemTemplate>
        Nombre:
        <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
        <br />
        Area:
        <asp:TextBox ID="AreaTextBox" runat="server" Text='<%# Bind("Area") %>' />
        <br />
        Descripcion:
        <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
        <br />
        GUID:
        <asp:TextBox ID="GUIDTextBox" runat="server" Text='<%# Bind("GUID") %>' />
        <br />
        Max:
        <asp:TextBox ID="MaxTextBox" runat="server" Text='<%# Bind("Max") %>' />
        <br />
        IdInstitucion:
        <asp:TextBox ID="IdInstitucionTextBox" runat="server" Text='<%# Bind("IdInstitucion") %>' />
        <br />
        Habilitado:
        <asp:CheckBox ID="HabilitadoCheckBox" runat="server" Checked='<%# Bind("Habilitado") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
    </InsertItemTemplate>
    <ItemTemplate>
        Id:
        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
        <br />
        Nombre:
        <asp:Label ID="NombreLabel" runat="server" Text='<%# Bind("Nombre") %>' />
        <br />
        Area:
        <asp:Label ID="AreaLabel" runat="server" Text='<%# Bind("Area") %>' />
        <br />
        Descripcion:
        <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Bind("Descripcion") %>' />
        <br />
        GUID:
        <asp:Label ID="GUIDLabel" runat="server" Text='<%# Bind("GUID") %>' />
        <br />
        Max:
        <asp:Label ID="MaxLabel" runat="server" Text='<%# Bind("Max") %>' />
        <br />
        IdInstitucion:
        <asp:Label ID="IdInstitucionLabel" runat="server" Text='<%# Bind("IdInstitucion") %>' />
        <br />
        Habilitado:
        <asp:CheckBox ID="HabilitadoCheckBox" runat="server" Checked='<%# Bind("Habilitado") %>' Enabled="false" />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Curso] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Curso] ([Nombre], [Area], [Descripcion], [GUID], [Max], [IdInstitucion], [Habilitado]) VALUES (@Nombre, @Area, @Descripcion, @GUID, @Max, @IdInstitucion, @Habilitado)" SelectCommand="SELECT * FROM [Curso]" UpdateCommand="UPDATE [Curso] SET [Nombre] = @Nombre, [Area] = @Area, [Descripcion] = @Descripcion, [GUID] = @GUID, [Max] = @Max, [IdInstitucion] = @IdInstitucion, [Habilitado] = @Habilitado WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Nombre" Type="String" />
        <asp:Parameter Name="Area" Type="String" />
        <asp:Parameter Name="Descripcion" Type="String" />
        <asp:Parameter Name="GUID" Type="String" />
        <asp:Parameter Name="Max" Type="String" />
        <asp:Parameter Name="IdInstitucion" Type="Int32" />
        <asp:Parameter Name="Habilitado" Type="Boolean" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Nombre" Type="String" />
        <asp:Parameter Name="Area" Type="String" />
        <asp:Parameter Name="Descripcion" Type="String" />
        <asp:Parameter Name="GUID" Type="String" />
        <asp:Parameter Name="Max" Type="String" />
        <asp:Parameter Name="IdInstitucion" Type="Int32" />
        <asp:Parameter Name="Habilitado" Type="Boolean" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
        <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
        <asp:BoundField DataField="GUID" HeaderText="GUID" SortExpression="GUID" />
        <asp:BoundField DataField="Max" HeaderText="Max" SortExpression="Max" />
        <asp:BoundField DataField="IdInstitucion" HeaderText="IdInstitucion" SortExpression="IdInstitucion" />
        <asp:CheckBoxField DataField="Habilitado" HeaderText="Habilitado" SortExpression="Habilitado" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:Content>
