<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroProveedor.aspx.cs" Inherits="Proyecto_CenterFerrT.Vista.RegistroProveedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    <script src="../Scripts/sweetalert.min.js"></script>
    <link href="../Styles/sweetalert.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />

    <div class="container mt-3">
        <h2 style="color: black; text-align: center">REGISTRAR UN PROVEEDOR!</h2>
        <div class="mb-3 mt-3" style="color: aliceblue">
            <asp:Label ID="lblNombrePro" runat="server" Style="color: black">Nombre Proveedor</asp:Label>
            <%--<asp:TextBox ID="txtDocumento" runat="server" CssClass="form-control"></asp:TextBox>--%>
            <input type="text" id="txtNombrePro" name="txtNombrePro" runat="server" class="form-control" />
        </div>

        <div class="mb-3" style="color: black">

            <asp:Label ID="lblContacto" runat="server">Contacto Proveedor</asp:Label>
            <%--     <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>--%>
            <input type="text" id="txtContactoPro" name="txtContactoPro" runat="server" class="form-control">
        </div>

        <div class="mb-3" style="color: black">
            <asp:Label ID="lblDepartamento" runat="server">Departamento</asp:Label>
            <%-- <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control"></asp:TextBox>--%>
            <input type="text" id="txtDepartamentoPro" name="txtDepartamentoPro" runat="server" class="form-control">
        </div>

        <div class="mb-3" style="color: black">
            <asp:Label ID="lblCiudadPro" runat="server">Ciudad </asp:Label>
            <%--  <asp:TextBox ID="txtGenero" runat="server" CssClass="form-control"></asp:TextBox>--%>
            <input type="text" id="txtCiudadPro" name="txtCiudadPro" runat="server" class="form-control">
        </div>

        <div class="mb-3" style="color: black">
            <asp:Label ID="lblDireccion" runat="server">Direcciòn</asp:Label>
            <%--<asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>--%>
            <input type="text" id="txtDireccionPro" name="txtDireccionPro" runat="server" class="form-control">
        </div>

        <div class="mb-3" style="color: black">
            <asp:Label ID="lblCorreo" runat="server">Correo</asp:Label>
            <%--<asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>--%>
            <input type="text" id="txtCorreoPro" name="txtCorreoPro" runat="server" class="form-control">
        </div>

        <div class="mb-3" style="color: black">
            <asp:Label ID="lblClave" runat="server">Clave</asp:Label>
            <%-- <asp:TextBox ID="txtClave" runat="server" type="password" CssClass="form-control"></asp:TextBox>--%>
            <input type="password" id="txtClavePro" name="txtClavePro" runat="server" class="form-control">
        </div>

        <div class="mb-3" style="color: black">
            <asp:Button ID="Button1" runat="server" Text="REGISTRAR!" class="btn btn-primary" data-bs-target="#myModal" OnClick="Button1_Click" />
            <%-- <asp:Button ID="btnRegistrar" runat="server" CssClass="btn-outline-warning" Text="Registrar" OnClick="btnRegistrar_Click" />--%>
        </div>
    </div>
    <center>
        <footer class="pt-5 my-5 text-muted border-top">
            Centerfer.com  &middot; &copy; 2023
 
        </footer>
    </center>
</asp:Content>
