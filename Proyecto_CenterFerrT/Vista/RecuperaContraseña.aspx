<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecuperaContraseña.aspx.cs" Inherits="Proyecto_CenterFerrT.Vista.RecuperaContraseña" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/sweetalert.min.js"></script>
    <script src="../Scripts/sweetalert-dev.js"></script>
    <link href="../Styles/sweetalert.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <center>
            <div class="contenedor">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcE8Sh4Xaf3EsbEE-j-3ZhfsjHhd_Qln9wgSUK7GgMeg&s" style="margin-left: 40px; height: 100%" />
                <div class="opciones">
                    <asp:Label ID="lblEmail" runat="server" Text="Correo electrónico" Style="margin-left: 20px"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtEmail" runat="server" Style="margin-left: 10px"></asp:TextBox>
                    <asp:Button ID="btnRecuperar" runat="server" Text="Recuperar Contraseña" Style="margin-left: 10px" class="btn btn-primary" data-bs-target="#myModal" OnClick="btnRecuperar_Click" />
                    <br />
                    <br />
                    <asp:Button ID="btnVolver" runat="server" Style="margin-left: 10px" Text="Volver" class="btn btn-primary" data-bs-target="#myModal" OnClick="btnVolver_Click" />

                </div>
            </div>
        </center>
    </form>
</body>
</html>
