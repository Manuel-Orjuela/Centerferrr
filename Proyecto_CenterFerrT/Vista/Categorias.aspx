<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Site1.Master" AutoEventWireup="true" CodeBehind="Categorias.aspx.cs" Inherits="Proyecto_CenterFerrT.Vista.Categorias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Categoria.css" rel="stylesheet" />
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    <link href="css/Categoria.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="css/StyleSheet1.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />

    <div class="contenedorprincipal">
        <div class="container">
            <div class="row justify-content-evenly">
                <asp:Repeater ID="reptProduc" runat="server">
                    <ItemTemplate>


                        <div class="card col-2" style="width: 210px; position: static">
                            <div class="card-body">
                                <h4 class="card-title" ><%# Eval("nombreCategoria") %></h4>
                            </div>
                            <img class="card-img-top imgs" src='<%# Eval("imagen") %>' alt="Card image" style="width: 100%">
                            <div class="card-body text-justify">
                                <p class="card-text" ><%# Eval("descripcion") %></p>
                            </div>
                            <div>
                                <a href="Productos.aspx?idCategoria=<%# Eval("idCategoria") %>" class="btn btn-primary">Ver Productos</a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
    <center>
        <footer class="pt-5 my-5 text-muted border-top">
            Centerfer.com  &middot; &copy; 2023
 
        </footer>
    </center>

</asp:Content>
