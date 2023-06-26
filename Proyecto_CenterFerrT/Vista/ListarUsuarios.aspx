<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Site1.Master" AutoEventWireup="true" CodeBehind="ListarUsuarios.aspx.cs" Inherits="Proyecto_CenterFerrT.Vista.ListarUsuarios" %>

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
    <h1 class="title" style="color: black">LISTA DE TUS USUARIOS!</h1>
    <center>
     <asp:Label ID="Label1" runat="server" Style="margin-left: 30px; color: black" Text="Buscar por documento:"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="txtDocumento" Style="margin-left: 30px;" runat="server"></asp:TextBox>
    <br />
    <br />

    <asp:Button ID="btnBusqueda" Style="margin-left: 30px;" class="btn btn-primary" data-bs-target="#myModal" runat="server" Text="Buscar" OnClick="btnBusqueda_Click" />
    <br />
    <br />
        </center>
    <asp:GridView ID="GvBusqueda" AutoGenerateColumns="false" runat="server" Style="margin-left: 30px; margin-right: 30px; width: 95%;" GridLines="None" AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" PageSize="5">
        <Columns>
            <asp:BoundField DataField="documento" HeaderText="Documento" />
            <asp:BoundField DataField="nombre" HeaderText="Nombre" />
            <asp:BoundField DataField="apellido" HeaderText="Apellido" />
            <asp:BoundField DataField="genero" HeaderText="Genero" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="clave" HeaderText="Clave" />
            <asp:BoundField DataField="telefono" HeaderText="Teléfono" />

        </Columns>
    </asp:GridView>
    <center>
        <asp:GridView ID="GvListaUsuarios" AutoGenerateColumns="False"  runat="server" GridLines="None" AllowPaging="True" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" PageSize="5">
            <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField DataField="documento" HeaderText="Documento" />
                <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="apellido" HeaderText="Apellido" />
                <asp:BoundField DataField="genero" HeaderText="Genero" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:BoundField DataField="clave" HeaderText="Clave" />
                <asp:BoundField DataField="telefono" HeaderText="Teléfono" />
            </Columns>
            <PagerStyle CssClass="pgr"></PagerStyle>
        </asp:GridView>
        </center>
 
   
    <center>
        <footer class="pt-5 my-5 text-muted border-top">
            Centerfer.com  &middot; &copy; 2023
 
        </footer>
    </center>
</asp:Content>
