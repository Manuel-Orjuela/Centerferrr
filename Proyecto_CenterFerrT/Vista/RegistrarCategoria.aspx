<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Site1.Master" AutoEventWireup="true" CodeBehind="RegistrarCategoria.aspx.cs" Inherits="Proyecto_CenterFerrT.Vista.RegistrarCategoria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    <script src="../Scripts/sweetalert.min.js"></script>
    <link href="../Styles/sweetalert.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-3">
        <br />
        <br />
        <br />
        <br />
        <br />
        <h2 style="color: black; text-align: center">REGISTRA NUEVA CATEGORIA!</h2>



        <div class="mb-3" style="color: black">

            <asp:Label ID="lblNombreC" runat="server">Nombre Categoria</asp:Label>
            <asp:TextBox ID="txtNombreC" runat="server" CssClass="form-control"></asp:TextBox>

        </div>

        <div class="mb-3" style="color: black">
            <asp:Label ID="lblImagenC" runat="server">Seleccione la Imagen</asp:Label>
            <br />
            <asp:FileUpload ID="flpImagenC" runat="server" />

        </div>

        <div class="mb-3" style="color: black">
            <asp:Label ID="lblDescripcionC" runat="server">Descripcion de Categoria</asp:Label>
            <asp:TextBox ID="txtDescripcionC" runat="server" CssClass="form-control"></asp:TextBox>

        </div>

        <asp:Button ID="btnRegistrar" runat="server" class="btn btn-primary" data-bs-target="#myModal" Text="Registrar" OnClick="btnRegistrar_Click" />

    </div>

</asp:Content>
