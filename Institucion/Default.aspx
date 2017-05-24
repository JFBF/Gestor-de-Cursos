<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Institucion._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>INSTITUTO TAPITA</h1>
        <p class="lead">El Instituro Tapita es un instituto muy moderno y avanzado. Las aulas son cuadradas y rectangulares y todas están muy iluminadas con abundantes ventanas. Entre otras cosas, todas tienen en común una pizarra, percheros, tablones de anuncios, armarios y como no mesas y sillas. Las paredes son blancas y están decoradas con dibujos realizados por alumnos del centro.</p>
        <asp:Image class="Image1" runat="server" Height="130px" ImageUrl="~/Imagen/logo.jpg" runat="server" Width="160px" AlternateText="Imagen no disponible"  />
        <p><a href="https://www.youtube.com/channel/UCZgheSr5gb1c4ueSQm06-dg" class="btn btn-primary btn-lg">Más información en YOUTUBE &raquo;</a></p>
    </div>

    <div class="row">  
        <div class="lead">
            <h2>Descubreno en FACEBOOK</h2>
            <p>
                El instituto se destaca por la enseñanza de calidad, enfatizando los videos para crecer en YOUTUBE, es recomendable visitar el canal 3CQ como ejemplo de un constante mejoramiento.
                Los invito a nuestra Página de Facebook.
            </p>
            <p>
                <a class="btn btn-default" href="https://www.facebook.com/3CQ-274148156336057/">Página de Facebook &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
