<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Site1.Master" AutoEventWireup="true" CodeBehind="ListarProductos.aspx.cs" Inherits="Proyecto_CenterFerrT.Vista.ListarProductos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="css/listaProveedores.css" rel="stylesheet" />
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/features/">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <h1 style="color: black">Listado de Productos</h1>
    <br />
    <br />
    <center>
    <asp:Label ID="Label1" runat="server" Style="margin-left: 30px; color: black" Text="Buscar por Nombre:"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="txtNombre" Style="margin-left: 30px;" runat="server"></asp:TextBox>
    <br />
    <br />
    
    <asp:Button ID="btnBusqueda" Style="margin-left: 30px;" class="btn btn-primary" data-bs-target="#myModal" runat="server" Text="Buscar" OnClick="btnBusqueda_Click" />
    <br />
    <br />
    </center>
    <asp:GridView ID="GvBusqueda" AutoGenerateColumns="false" runat="server" Style="margin-left: 30px; margin-right: 30px; width: 95%;" GridLines="None" AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" PageSize="5">
        <Columns>
            <asp:BoundField DataField="codigoProducto" HeaderText="Codigo" />
            <asp:BoundField DataField="nombreProducto" HeaderText="Nombre" />
            <asp:BoundField DataField="cantidadStock" HeaderText="Cantidad Stock" />
            <asp:BoundField DataField="precioVenta" HeaderText="Precio de Venta" />
            <asp:BoundField DataField="imgProducto" HeaderText="Imagen" />
            <asp:BoundField DataField="descripcion" HeaderText="Descripción" />
            <asp:BoundField DataField="marca" HeaderText="Marca" />
            <asp:BoundField DataField="idCategoria" HeaderText="Categoria" />

        </Columns>
    </asp:GridView>
    <asp:GridView ID="GvListaProductos" AutoGenerateColumns="False" Style="margin-left: 30px; margin-right: 30px; width: 95%;" runat="server" GridLines="None" AllowPaging="True" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" OnSelectedIndexChanged="GvListaProductos_SelectedIndexChanged">


        <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        <Columns>
            <asp:BoundField DataField="codigoProducto" HeaderText="Codigo" />
            <asp:BoundField DataField="nombreProducto" HeaderText="Nombre" />
            <asp:BoundField DataField="cantidadStock" HeaderText="Cantidad Stock" />
            <asp:BoundField DataField="precioVenta" HeaderText="Precio de Venta" />
            <asp:BoundField DataField="imgProducto" HeaderText="Imagen" />
            <asp:BoundField DataField="descripcion" HeaderText="Descripción" />
            <asp:BoundField DataField="marca" HeaderText="Marca" />
            <asp:BoundField DataField="idCategoria" HeaderText="Categoria" />
            <asp:CommandField SelectText="Editar información" ShowSelectButton="true" HeaderText="Más opciones" />
            <asp:BoundField />

        </Columns>

        <PagerStyle CssClass="pgr"></PagerStyle>
    </asp:GridView>


</asp:Content>
