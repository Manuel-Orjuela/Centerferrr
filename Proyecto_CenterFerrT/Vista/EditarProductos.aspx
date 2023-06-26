<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Site1.Master" AutoEventWireup="true" CodeBehind="EditarProductos.aspx.cs" Inherits="Proyecto_CenterFerrT.Vista.EditarProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/features/">
        <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    <script src="../Scripts/sweetalert.min.js"></script>
    <link href="../Styles/sweetalert.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <div class="container mt-3">
        <br />
        <br />
        <br />
        <br />
        <br />
        <h2 style="color: black; text-align: center">ACTUALIZA TUS DATOS DE TUS PRODUCTOS!</h2>
         <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <div class="mb-3" style="color: black">
            <div class="mb-3" style="color: black">
            <br />
            <asp:Label ID="LblCodigoProducto" runat="server" Text=""></asp:Label>
            <br />
            <asp:TextBox ID="txtCodigoProducto" placeholder="Nuevo codigo de Producto" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
            <br />
             <asp:Label ID="lblCodigo" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="lblNombreP" runat="server" Text=""></asp:Label>
            <asp:TextBox ID="txtNombreProducto" placeholder="Nuevo nombre de Producto: " runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="mb-3" style="color: black">
            <br />
            <asp:Label ID="lblCantidad" runat="server" Text=""></asp:Label>
            <br />
            <asp:TextBox ID="txtCantidadStock" placeholder="Nuevo cantidad de Producto" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="mb-3" style="color: black">
            <div class="mb-3">
                <br />
                <asp:Label ID="lblPrecio" runat="server" Text=""></asp:Label>
                <br />
                <asp:TextBox ID="txtPrecio" placeholder="Nuevo precio de Producto" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="mb-3" style="color: black">
                <br />
                <asp:Label ID="lblDescripcion" runat="server" Text=""></asp:Label>
                <br />
                <asp:TextBox ID="txtDescripcion" placeholder="Nueva descripción de Producto" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3" style="color: black">
                <br />
                <asp:Label ID="lblMarca" runat="server" Text=""></asp:Label>
                <br />
                <asp:TextBox ID="txtMarca" placeholder="Nueva marca de Producto" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <asp:Button ID="btnActualizar" runat="server" class="btn btn-primary" Text="Registrar" OnClick="btnActualizar_Click" />
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </div>
</asp:Content>
