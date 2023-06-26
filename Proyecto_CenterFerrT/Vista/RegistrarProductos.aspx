<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Site1.Master" AutoEventWireup="true" CodeBehind="RegistrarProductos.aspx.cs" Inherits="Proyecto_CenterFerrT.Vista.RegistrarProductos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-3">
        <br />
        <br />
        <br />
        <br />
        <br />
        <h2 style="color: black; text-align: center">REGISTRA TUS PRODUCTOS!</h2>

        <div class="mb-3 mt-3" style="color: black">
            <asp:Label ID="lblCodigo" runat="server">Codigo Producto</asp:Label>
            <asp:TextBox ID="txtCodigoP" runat="server" CssClass="form-control"></asp:TextBox>
            <%--<input type="text" class="form-control" id="txtCodigoP" placeholder="Codigo " name="email">--%>
        </div>

        <div class="mb-3" style="color: black">

            <asp:Label ID="lblNombreP" runat="server">Nombre producto</asp:Label>
            <asp:TextBox ID="txtNombreP" runat="server" CssClass="form-control"></asp:TextBox>
            <%--    <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">--%>
        </div>

        <div class="mb-3" style="color: black">

            <asp:Label ID="lblCantidad" runat="server">Cantidad</asp:Label>
            <asp:TextBox ID="txtCantidad" runat="server" CssClass="form-control"></asp:TextBox>
            <%--    <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">--%>
        </div>

        <div class="mb-3" style="color: black">
            <div class="mb-3">
                <asp:Label ID="lblPrecioP" runat="server">Precio Producto</asp:Label>
                <asp:TextBox ID="txtPrecioP" runat="server" CssClass="form-control"></asp:TextBox>
                <%--    <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">--%>
            </div>
            <div class="mb-3" style="color: black">
                <asp:Label ID="lblImagen" runat="server">Seleccione la Imagen</asp:Label>
                <br />
                <asp:FileUpload ID="flpImagen" runat="server" />
                <%--    <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">--%>
            </div>

            <div class="mb-3" style="color: black">
                <asp:Label ID="lblDescripcionP" runat="server">Descripcion del producto</asp:Label>
                <asp:TextBox ID="txtDescripcionP" runat="server" CssClass="form-control"></asp:TextBox>
                <%--    <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">--%>
            </div>
             <div class="mb-3" style="color: black">
                <asp:Label ID="lblMarca" runat="server">Marca del Producto</asp:Label>
                <asp:TextBox ID="txtMarca" runat="server" CssClass="form-control"></asp:TextBox>
                <%--    <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">--%>
            </div>
            <div class="mb-3" style="color: black">
                <asp:Label ID="lblFuncionalidad" runat="server">Funcionalidad principal del Producto</asp:Label>
                <asp:TextBox ID="txtFuncionalidad" runat="server" CssClass="form-control"></asp:TextBox>
                <%--    <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">--%>
            </div>

            <div class="mb-3" style="color: black">
                <asp:Label ID="lblCategoria" runat="server">Seleccione Categoria</asp:Label>
                <asp:DropDownList ID="ddlCategoria" runat="server"></asp:DropDownList>
                <%--    <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">--%>
            </div>


            <asp:Button ID="btnRegistrar" runat="server" class="btn btn-primary" data-bs-target="#myModal" Text="Registrar" OnClick="btnRegistrar_Click" />

        </div>
    </div>

    <center>
        <footer class="pt-5 my-5 text-muted border-top">
            Centerfer.com  &middot; &copy; 2023
 
        </footer>
    </center>
</asp:Content>
