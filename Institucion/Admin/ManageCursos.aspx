<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageCursos.aspx.cs" Inherits="Institucion.Admin.ManageCursos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CssClass="table">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
            <asp:BoundField DataField="GUID" HeaderText="GUID" SortExpression="GUID" />
            <asp:BoundField DataField="Max" HeaderText="Cupos disponibles" SortExpression="Max" />
            <asp:BoundField DataField="IdInstitucion" HeaderText="IdInstitucion" SortExpression="IdInstitucion" />
            <asp:CheckBoxField DataField="Habilitado" HeaderText="Habilitado" SortExpression="Habilitado" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Curso] WHERE [Id] = @original_Id AND [Nombre] = @original_Nombre AND [Area] = @original_Area AND [Descripcion] = @original_Descripcion AND [GUID] = @original_GUID AND [Max] = @original_Max AND [IdInstitucion] = @original_IdInstitucion AND [Habilitado] = @original_Habilitado" InsertCommand="INSERT INTO [Curso] ([Nombre], [Area], [Descripcion], [GUID], [Max], [IdInstitucion], [Habilitado]) VALUES (@Nombre, @Area, @Descripcion, @GUID, @Max, @IdInstitucion, @Habilitado)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Curso]" UpdateCommand="UPDATE [Curso] SET [Nombre] = @Nombre, [Area] = @Area, [Descripcion] = @Descripcion, [GUID] = @GUID, [Max] = @Max, [IdInstitucion] = @IdInstitucion, [Habilitado] = @Habilitado WHERE [Id] = @original_Id AND [Nombre] = @original_Nombre AND [Area] = @original_Area AND [Descripcion] = @original_Descripcion AND [GUID] = @original_GUID AND [Max] = @original_Max AND [IdInstitucion] = @original_IdInstitucion AND [Habilitado] = @original_Habilitado">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Nombre" Type="String" />
            <asp:Parameter Name="original_Area" Type="String" />
            <asp:Parameter Name="original_Descripcion" Type="String" />
            <asp:Parameter Name="original_GUID" Type="String" />
            <asp:Parameter Name="original_Max" Type="String" />
            <asp:Parameter Name="original_IdInstitucion" Type="Int32" />
            <asp:Parameter Name="original_Habilitado" Type="Boolean" />
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
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Nombre" Type="String" />
            <asp:Parameter Name="original_Area" Type="String" />
            <asp:Parameter Name="original_Descripcion" Type="String" />
            <asp:Parameter Name="original_GUID" Type="String" />
            <asp:Parameter Name="original_Max" Type="String" />
            <asp:Parameter Name="original_IdInstitucion" Type="Int32" />
            <asp:Parameter Name="original_Habilitado" Type="Boolean" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
