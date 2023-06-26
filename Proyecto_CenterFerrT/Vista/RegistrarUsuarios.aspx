<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Site1.Master" AutoEventWireup="true" CodeBehind="RegistrarUsuarios.aspx.cs" Inherits="Proyecto_CenterFerrT.Vista.RegistrarUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    <br />
    <br />
    <div class="container mt-3">


        <h2 style="color: black; text-align: center">REGISTRO DE USUARIOS</h2>

        <div class="mb-3 mt-3" style="color: black">
            <asp:Label ID="lblDocumento" runat="server">Documento</asp:Label>
            <input type="text" id="txtDocumento" name="txtDocumento" runat="server" class="form-control">
        </div>

        <div class="mb-3" style="color: black">

            <asp:Label ID="lblNombre" runat="server">Nombre Usuario</asp:Label>
            <input type="text" id="txtNombre" name="txtNombre" runat="server" class="form-control" required>
        </div>

        <div class="mb-3" style="color: black">
            <asp:Label ID="lblApellido" runat="server">Apellido</asp:Label>
            <input type="text" id="txtApellido" name="txtApellido" runat="server" class="form-control" required>
        </div>

        <div class="mb-3" style="color: black">
            <asp:Label ID="lblGenero" runat="server">Genero</asp:Label>
            <input type="text" id="txtGenero" name="txtGenero" runat="server" class="form-control" required>
        </div>

        <div class="mb-3" style="color: black">
            <asp:Label ID="lblEmail" runat="server">Email</asp:Label>
            <input type="text" id="txtEmail" name="txtEmail" runat="server" class="form-control" required>
        </div>

        <div class="mb-3" style="color: black">
            <asp:Label ID="lblClave" runat="server">Clave</asp:Label>
            <input type="password" id="txtClave" name="txtClave" runat="server" class="form-control" required>
        </div>

        <div class="mb-3" style="color: black">
            <asp:Label ID="lblTelefono" runat="server">Teléfono</asp:Label>
            <input type="text" id="txtTelefono" name="txtTelefono" runat="server" class="form-control" required>
        </div>

        <div class="mb-3" style="color: black">

            <asp:Label ID="lblRol" runat="server">Seleccione Rol</asp:Label>
            <asp:DropDownList ID="ddlRol" CssClass="form-control" runat="server"></asp:DropDownList>

        </div>

        <div class="mb-3">

            <button type="submit" id="search" runat="server" class="btn btn-primary" data-bs-target="#myModal" onserverclick="search_ServerClick">Enviar</button>
        </div>
        <div class="mb-3">
            <asp:Button ID="btnVolver" runat="server" Style="margin-left: 80%" Text="Volver" class="btn btn-primary" data-bs-target="#myModal" OnClick="btnVolver_Click" />
        </div>
    </div>
    <center>
        <footer class="pt-5 my-5 text-muted border-top">
            Centerfer.com  &middot; &copy; 2023
 
        </footer>
    </center>

</asp:Content>
