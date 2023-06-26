<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Site3.Master" AutoEventWireup="true" CodeBehind="ProductosUsuario.aspx.cs" Inherits="Proyecto_CenterFerrT.Vista.ProductosUsuario" %>

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
    <h1>¡LOS MEJORES PRODUCTOS!</h1>
    <div class="row justify-content-evenly" runat="server">
        <asp:Repeater ID="reptProduc" runat="server">
            <ItemTemplate>
                <div class="card col-2" style="width: 210px; position: static">
                    <asp:Image runat="server" ID="ProdImage" CssClass="card imag" Style="position: static; width: 20px; height: 20px;" ImageUrl='<%# Eval("imgProducto") %>' />
                    <div class="card-body text-justify">
                        <h4 class="card-title">
                            <b>
                                <asp:Label runat="server" Style="color: black" ID="lblCodigo" Text='<%# Eval("nombreProducto") %>'></asp:Label>
                            </b>
                        </h4>
                        <p class="card-text">
                            <b>
                                <asp:Label runat="server" ID="lblDescripcion" Style="color: black" Text='<%# Eval("descripcion") %>'></asp:Label>
                            </b>
                        </p>
                        <p class="card-text">
                            <b>
                                <asp:Label runat="server" ID="lblprecio" Style="color: black" Text='<%# Eval("precioVenta") %>'></asp:Label>
                            </b>
                        </p>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <center>
        <footer class="pt-5 my-5 text-muted border-top">
            Centerfer.com  &middot; &copy; 2023
 
        </footer>
    </center>




    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</asp:Content>
