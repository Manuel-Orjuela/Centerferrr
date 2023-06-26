<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Site1.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="Proyecto_CenterFerrT.Vista.Productos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="css/StyleSheet1.css" rel="stylesheet" />
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <h1 style="color:black">Productos</h1>
    <br />
    <br />
    <div class="container">
        <div class="row justify-content-evenly" runat="server">
            <asp:Repeater ID="reptProduc" runat="server">
                <ItemTemplate>
                    <div class="card col-2" style="width: 210px;  position:static">
                        <asp:Image runat="server" ID="ProdImage" CssClass="card imag" style="position:static; width:20px; height:20px;" ImageUrl='<%# Eval("imgProducto") %>' />
                        <div class="card-body text-justify">
                            <h4 class="card-title">
                                <b>
                                    <asp:Label runat="server" style="color: black" ID="lblCodigo" Text='<%# Eval("nombreProducto") %>'></asp:Label>
                                </b>
                            </h4>
                            <p class="card-text">
                                <b>
                                    <asp:Label runat="server" ID="lblDescripcion" style="color: black"  Text='<%# Eval("descripcion") %>'></asp:Label>
                                </b>
                            </p>
                            <p class="card-text">
                                <b>
                                    <asp:Label runat="server" ID="lblprecio" style="color: black"  Text='<%# Eval("precioVenta") %>'></asp:Label>
                                </b>
                            </p>
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
