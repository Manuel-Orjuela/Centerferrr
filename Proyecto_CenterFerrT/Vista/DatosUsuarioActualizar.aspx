<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Site3.Master" AutoEventWireup="true" CodeBehind="DatosUsuarioActualizar.aspx.cs" Inherits="Proyecto_CenterFerrT.Vista.DatosUsuarioActualizar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Styles/sweetalert.css" rel="stylesheet" />
    <script src="../Scripts/sweetalert.min.js"></script>
    <script src="../Scripts/sweetalert-dev.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-3">
        <br />
        <br />
        <br />
        <br />
        <br />
        <h2 style="color: black; text-align: center">ACTUALIZA TUS DATOS!</h2>

        <div class="mb-3" style="color: black">

            <br />
             <asp:Label ID="lblDocumento" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            <asp:TextBox ID="txtNombre" placeholder="Digita tu nombre actualizado: " runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="mb-3" style="color: black">
            <br />
            <asp:Label ID="lblApellido" runat="server" Text=""></asp:Label>
            <br />
            <asp:TextBox ID="txtApellido" placeholder="Digita tu apellido actualizado" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="mb-3" style="color: black">
            <div class="mb-3">
                <br />
                <asp:Label ID="lblGenero" runat="server" Text=""></asp:Label>
                <br />
                <asp:TextBox ID="txtGenero" placeholder="Digita tu genero actualizado" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="mb-3" style="color: black">
                <br />
                <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                <br />
                <asp:TextBox ID="txtEmail" placeholder="Digita tu email actualizado" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3" style="color: black">
                <br />
                <asp:Label ID="lblTelefono" runat="server" Text=""></asp:Label>
                <br />
                <asp:TextBox ID="txtTelefono" placeholder="Digita tu telefono actualizado" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <asp:Button ID="btnActualizar" runat="server" class="btn btn-primary" Text="Registrar" OnClick="btnActualizar_Click" />

        </div>
    </div>
</asp:Content>
