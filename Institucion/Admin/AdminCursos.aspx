<%@ Page Title="Admin de cursos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminCursos.aspx.cs" Inherits="Institucion.Admin.AdminCursos" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Crear un nuevo curso</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Nombre" CssClass="col-md-2 control-label">Nombre</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Nombre" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Nombre"
                    CssClass="text-danger" ErrorMessage="El campo nombre es obligatorio." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Area" CssClass="col-md-2 control-label">Area</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Area" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Area"
                    CssClass="text-danger" ErrorMessage="El campo de Area es obligatorio." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Descripcion" CssClass="col-md-2 control-label">Descripción</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Descripcion" CssClass="form-control" TextMode="MultiLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Descripcion"
                    CssClass="text-danger" ErrorMessage="El campo de Descripcion es obligatorio." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Max" CssClass="col-md-2 control-label">Máximo de estudiantes</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Max" CssClass="form-control" TextMode="Number" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Max"
                    CssClass="text-danger" ErrorMessage="El campo de Max es obligatorio." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Habilitado" CssClass="col-md-2 control-label">Habilitado</asp:Label>
            <div class="col-md-10">
                <asp:CheckBox runat="server" ID="Habilitado" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Crear" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>
