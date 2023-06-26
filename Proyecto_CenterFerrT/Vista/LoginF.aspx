<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginF.aspx.cs" Inherits="Proyecto_CenterFerrT.Vista.LoginF" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="css/Login.css" rel="stylesheet" />
    <script src="../Scripts/sweetalert.min.js"></script>
    <script src="../Scripts/sweetalert-dev.js"></script>
    <link href="../Styles/sweetalert.css" rel="stylesheet" />
    <%--    <link href="../Styles/sweetalert.css" rel="stylesheet" />--%>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="vh-100">
                <div class="container-fluid h-custom">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-md-9 col-lg-6 col-xl-5">
                            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp" />
                                class="img-fluid" alt="Sample image">
                        </div>
                        <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">

                            <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
                                <p class="lead fw-normal mb-0 me-3">Sign in with</p>
                                <button type="button" class="btn btn-primary btn-floating mx-1">
                                    <i class="fab fa-facebook-f"></i>
                                </button>

                                <button type="button" class="btn btn-primary btn-floating mx-1">
                                    <i class="fab fa-twitter"></i>
                                </button>

                                <button type="button" class="btn btn-primary btn-floating mx-1">
                                    <i class="fab fa-linkedin-in"></i>
                                </button>
                            </div>

                            <div class="divider d-flex align-items-center my-4">
                                <p class="text-center fw-bold mx-3 mb-0">Or</p>
                            </div>

                            <!-- Email input -->
                            <div class="form-outline mb-4">
                                <asp:TextBox ID="txtDocument" placeholder="Documento: " CssClass="form-control form-control-lg" runat="server" />



                            </div>

                            <!-- Password input -->
                            <div class="form-outline mb-3">
                                <asp:TextBox ID="txtClav" placeholder="Clave: " CssClass="form-control form-control-lg" type="password" runat="server"></asp:TextBox>


                            </div>

                            <div class="d-flex justify-content-between align-items-center">
                                <!-- Checkbox -->
                                <div class="form-check mb-0">
                                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
                                    <label class="form-check-label" for="form2Example3">
                                        Remember me
                                    </label>
                                </div>
                                <a href="RecuperaContraseña.aspx" class="text-body">Olvidaste tu contraseña?</a>
                            </div>

                            <div class="text-center text-lg-start mt-4 pt-2">
                                <asp:Button ID="btnIngresar" CssClass="btn btn-primary btn-lg btn-block" runat="server" Text="INGRESAR" OnClick="btnIngresar_Click" />
                                <p class="small fw-bold mt-2 pt-1 mb-0">
                                    No tienes cuenta? <a href="RegistrarUsuarios.aspx"
                                        class="link-danger">Registrate</a>
                                </p>
                            </div>


                        </div>
                    </div>
                </div>
                <center>

                    <footer class="pt-5 my-5 text-muted border-top">
                        Centerfer.com  &middot; &copy; 2023
                    </footer>
                </center>

            </section>
        </div>
    </form>
</body>
</html>
