<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Site3.Master" AutoEventWireup="true" CodeBehind="CategoriasUsuario.aspx.cs" Inherits="Proyecto_CenterFerrT.Vista.CategoriasUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/features/">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <h1 style="color: black">¡DIVERSIDAD DE CATEGORIAS!</h1>
    <br />
    <div class="container">
        <div class="row justify-content-evenly">
            <asp:Repeater ID="reptProduc" runat="server">
                <ItemTemplate>
                    <div class="card col-2" style="width: 250px; position: static">
                        <asp:Image runat="server" ID="ProdImage" class="card-img-top imgs" Style="width: 100%" ImageUrl='<%# Eval("imagen") %>' />
                        <div class="card-body text-justify">
                            <h4 class="card-title" style="color: black">
                                <b>
                                    <asp:Label runat="server" ID="lblCodigo" Style="color: black" Text='<%# Eval("nombreCategoria") %>'></asp:Label>
                                </b>
                            </h4>
                            <p class="card-text">
                                <b>
                                    <asp:Label runat="server" Style="color: black" ID="lblDescripcion" Text='<%# Eval("descripcion") %>'></asp:Label>
                                </b>

                                <div>
                                    <a href="ProductosUsuario.aspx?idCategoria=<%# Eval("idCategoria") %>" class="btn btn-primary">Ver Productos</a>
                                </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <center>
        <footer class="pt-5 my-5 text-muted border-top">
            Centerfer.com  &middot; &copy; 2023
 
        </footer>
    </center>

</asp:Content>
