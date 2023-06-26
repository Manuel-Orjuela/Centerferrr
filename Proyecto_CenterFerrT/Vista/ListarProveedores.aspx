<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Site1.Master" AutoEventWireup="true" CodeBehind="ListarProveedores.aspx.cs" Inherits="Proyecto_CenterFerrT.Vista.ListarProveedores" %>

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
    <h1 class="title" style="color: black">LISTA DE TUS PROVEEDORES!</h1>
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
            <asp:BoundField  DataField ="nombreProveedor" HeaderText="Nombre del Proveedor"/>
            <asp:BoundField  DataField ="telefono" HeaderText="Telefono"/>
            <asp:BoundField  DataField ="departamentoUbicacion" HeaderText="Departamento de Ubicación"/>
            <asp:BoundField  DataField ="ciudadUbicacion" HeaderText="Ciudad de Ubicación"/>
            <asp:BoundField  DataField ="direccion" HeaderText="Dirección"/>
            <asp:BoundField  DataField ="correo" HeaderText="Correo"/>
        </Columns>
    </asp:GridView>
    <asp:GridView ID="GvListaProveedores" AutoGenerateColumns="false"  Style="margin-left: 30px; margin-right: 30px; width: 95%;" runat="server" GridLines="None" AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt">
        <Columns>
            <asp:BoundField  DataField ="nombreProveedor" HeaderText="Nombre del Proveedor"/>
            <asp:BoundField  DataField ="telefono" HeaderText="Telefono"/>
            <asp:BoundField  DataField ="departamentoUbicacion" HeaderText="Departamento de Ubicación"/>
            <asp:BoundField  DataField ="ciudadUbicacion" HeaderText="Ciudad de Ubicación"/>
            <asp:BoundField  DataField ="direccion" HeaderText="Dirección"/>
            <asp:BoundField  DataField ="correo" HeaderText="Correo"/>   
        </Columns>
    </asp:GridView>
    
    <center>
        <footer class="pt-5 my-5 text-muted border-top">
            Centerfer.com  &middot; &copy; 2023
        </footer>
    </center>
</asp:Content>
