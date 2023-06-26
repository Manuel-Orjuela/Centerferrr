<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Proyecto_CenterFerrT.Vista.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/features/">
    <link href="css/Carrousel.css" rel="stylesheet" />
    <!-- Bootstrap core CSS -->
    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="p-5 bg-primary text-white text-center" style="margin-left: 100px; margin-right: 100px; overflow: hidden;">
        <h1>¡Conozca la más amplia gama de productos de Ferreteria!</h1>
        <p>Llegó el momento de crecer juntos!</p>
    </div>

    <div style="position: static; align-content: center">
        <div class="col-md-5 p-lg-5 mx-auto my-5">
            <h1 class="display-4 fw-normal" style="color: black">Conoce CENTERFFER</h1>
            <p class="lead fw-normal" style="text-align: center">En Centerfer abrimos la posiblididad para que todos nuestros usuarios tengan una amplia gama de matteriales de construccion como lo son hierro, tejas, pvc , pintura, cemento, impermedables, etc.</p>

        </div>
        <div class="product-device shadow-sm d-none d-md-block"></div>
        <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
    </div>

    <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
        <div style="border-radius: 15px"class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
            <div class="my-3 py-3">
                <h2 class="display-5">Herramientas</h2>
                <p class="lead">Útil para realizar tareas o actividades específicas de trabajo..</p>
            </div>
            <div class="bg-light shadow-sm mx-auto" style="width: 70%; height: 300px; border-radius: 21px 21px 0 0;">
                <img src="https://www.metalocus.es/sites/default/files/styles/mopis_news_carousel_item_desktop/public/metalocus_sinaldaba_ferreteria-malasa_19.jpg?itok=olHhbVIp" style="height: 90%; width: 90%; margin-top: 31px" alt="Alternate Text" />
                   
            </div>
        </div>
        <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
            <div class="my-3 p-3">
                <h2 class="display-5">Material de Contrucción</h2>
                <p class="lead">Elementos necesarios para construir, renovar o reparar edificaciones y estructuras.</p>
            </div>
            <div class="bg-dark shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
                <img src="https://www.eloficial.ec/wp-content/uploads/2019/07/SALA-FV-3.png" style="height: 80%; margin-top: 31px" alt="Alternate Text" />
            </div>
        </div>
    </div>

    <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
        <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
            <div class="my-3 p-3">
                <h2 class="display-5">Articulos de plamería</h2>
                <p class="lead">
                    Productos para sistemas de tuberías y fontanería en hogares y negocios.
                </p>
            </div>
            <div class="bg-dark shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
                <img src="https://fvandina.com/wp-content/uploads/2022/01/sala-quevedo-6.jpg" style="height: 80%; margin-top: 31px" alt="Alternate Text" />
            </div>
        </div>
        <div style="border-radius:15px" class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
            <div  class="my-3 py-3">
                <h2 class="display-5">Suministros eléctricos</h2>
                <p class="lead">
                    Productos para instalaciones eléctricas y sistemas de iluminación en construcciones.
                </p>
            </div>
            <div class="bg-light shadow-sm mx-auto" style="width: 70%; height: 300px; border-radius: 21px 21px 0 0;">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHQXd5YNFeXpLT-crvQa4_zTxRXPcVsxjdtw&usqp=CAU" style="height: 80%; margin-top: 31px" alt="Alternate Text" />
            </div>
        </div>
    </div>
    <%--  //////////////////////--%>
    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
        <symbol id="bootstrap" viewBox="0 0 118 94">
            <title>Bootstrap</title>
            <path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z"></path>
        </symbol>
        <symbol id="home" viewBox="0 0 16 16">
            <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z" />
        </symbol>
        <symbol id="speedometer2" viewBox="0 0 16 16">
            <path d="M8 4a.5.5 0 0 1 .5.5V6a.5.5 0 0 1-1 0V4.5A.5.5 0 0 1 8 4zM3.732 5.732a.5.5 0 0 1 .707 0l.915.914a.5.5 0 1 1-.708.708l-.914-.915a.5.5 0 0 1 0-.707zM2 10a.5.5 0 0 1 .5-.5h1.586a.5.5 0 0 1 0 1H2.5A.5.5 0 0 1 2 10zm9.5 0a.5.5 0 0 1 .5-.5h1.5a.5.5 0 0 1 0 1H12a.5.5 0 0 1-.5-.5zm.754-4.246a.389.389 0 0 0-.527-.02L7.547 9.31a.91.91 0 1 0 1.302 1.258l3.434-4.297a.389.389 0 0 0-.029-.518z" />
            <path fill-rule="evenodd" d="M0 10a8 8 0 1 1 15.547 2.661c-.442 1.253-1.845 1.602-2.932 1.25C11.309 13.488 9.475 13 8 13c-1.474 0-3.31.488-4.615.911-1.087.352-2.49.003-2.932-1.25A7.988 7.988 0 0 1 0 10zm8-7a7 7 0 0 0-6.603 9.329c.203.575.923.876 1.68.63C4.397 12.533 6.358 12 8 12s3.604.532 4.923.96c.757.245 1.477-.056 1.68-.631A7 7 0 0 0 8 3z" />
        </symbol>
        <symbol id="table" viewBox="0 0 16 16">
            <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm15 2h-4v3h4V4zm0 4h-4v3h4V8zm0 4h-4v3h3a1 1 0 0 0 1-1v-2zm-5 3v-3H6v3h4zm-5 0v-3H1v2a1 1 0 0 0 1 1h3zm-4-4h4V8H1v3zm0-4h4V4H1v3zm5-3v3h4V4H6zm4 4H6v3h4V8z" />
        </symbol>
        <symbol id="people-circle" viewBox="0 0 16 16">
            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
            <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
        </symbol>
        <symbol id="grid" viewBox="0 0 16 16">
            <path d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zM2.5 2a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zM1 10.5A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z" />
        </symbol>
        <symbol id="collection" viewBox="0 0 16 16">
            <path d="M2.5 3.5a.5.5 0 0 1 0-1h11a.5.5 0 0 1 0 1h-11zm2-2a.5.5 0 0 1 0-1h7a.5.5 0 0 1 0 1h-7zM0 13a1.5 1.5 0 0 0 1.5 1.5h13A1.5 1.5 0 0 0 16 13V6a1.5 1.5 0 0 0-1.5-1.5h-13A1.5 1.5 0 0 0 0 6v7zm1.5.5A.5.5 0 0 1 1 13V6a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-.5.5h-13z" />
        </symbol>
        <symbol id="calendar3" viewBox="0 0 16 16">
            <path d="M14 0H2a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zM1 3.857C1 3.384 1.448 3 2 3h12c.552 0 1 .384 1 .857v10.286c0 .473-.448.857-1 .857H2c-.552 0-1-.384-1-.857V3.857z" />
            <path d="M6.5 7a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm-9 3a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm-9 3a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
        </symbol>
        <symbol id="chat-quote-fill" viewBox="0 0 16 16">
            <path d="M16 8c0 3.866-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.584.296-1.925.864-4.181 1.234-.2.032-.352-.176-.273-.362.354-.836.674-1.95.77-2.966C.744 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7zM7.194 6.766a1.688 1.688 0 0 0-.227-.272 1.467 1.467 0 0 0-.469-.324l-.008-.004A1.785 1.785 0 0 0 5.734 6C4.776 6 4 6.746 4 7.667c0 .92.776 1.666 1.734 1.666.343 0 .662-.095.931-.26-.137.389-.39.804-.81 1.22a.405.405 0 0 0 .011.59c.173.16.447.155.614-.01 1.334-1.329 1.37-2.758.941-3.706a2.461 2.461 0 0 0-.227-.4zM11 9.073c-.136.389-.39.804-.81 1.22a.405.405 0 0 0 .012.59c.172.16.446.155.613-.01 1.334-1.329 1.37-2.758.942-3.706a2.466 2.466 0 0 0-.228-.4 1.686 1.686 0 0 0-.227-.273 1.466 1.466 0 0 0-.469-.324l-.008-.004A1.785 1.785 0 0 0 10.07 6c-.957 0-1.734.746-1.734 1.667 0 .92.777 1.666 1.734 1.666.343 0 .662-.095.931-.26z" />
        </symbol>
        <symbol id="cpu-fill" viewBox="0 0 16 16">
            <path d="M6.5 6a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z" />
            <path d="M5.5.5a.5.5 0 0 0-1 0V2A2.5 2.5 0 0 0 2 4.5H.5a.5.5 0 0 0 0 1H2v1H.5a.5.5 0 0 0 0 1H2v1H.5a.5.5 0 0 0 0 1H2v1H.5a.5.5 0 0 0 0 1H2A2.5 2.5 0 0 0 4.5 14v1.5a.5.5 0 0 0 1 0V14h1v1.5a.5.5 0 0 0 1 0V14h1v1.5a.5.5 0 0 0 1 0V14h1v1.5a.5.5 0 0 0 1 0V14a2.5 2.5 0 0 0 2.5-2.5h1.5a.5.5 0 0 0 0-1H14v-1h1.5a.5.5 0 0 0 0-1H14v-1h1.5a.5.5 0 0 0 0-1H14v-1h1.5a.5.5 0 0 0 0-1H14A2.5 2.5 0 0 0 11.5 2V.5a.5.5 0 0 0-1 0V2h-1V.5a.5.5 0 0 0-1 0V2h-1V.5a.5.5 0 0 0-1 0V2h-1V.5zm1 4.5h3A1.5 1.5 0 0 1 11 6.5v3A1.5 1.5 0 0 1 9.5 11h-3A1.5 1.5 0 0 1 5 9.5v-3A1.5 1.5 0 0 1 6.5 5z" />
        </symbol>
        <symbol id="gear-fill" viewBox="0 0 16 16">
            <path d="M9.405 1.05c-.413-1.4-2.397-1.4-2.81 0l-.1.34a1.464 1.464 0 0 1-2.105.872l-.31-.17c-1.283-.698-2.686.705-1.987 1.987l.169.311c.446.82.023 1.841-.872 2.105l-.34.1c-1.4.413-1.4 2.397 0 2.81l.34.1a1.464 1.464 0 0 1 .872 2.105l-.17.31c-.698 1.283.705 2.686 1.987 1.987l.311-.169a1.464 1.464 0 0 1 2.105.872l.1.34c.413 1.4 2.397 1.4 2.81 0l.1-.34a1.464 1.464 0 0 1 2.105-.872l.31.17c1.283.698 2.686-.705 1.987-1.987l-.169-.311a1.464 1.464 0 0 1 .872-2.105l.34-.1c1.4-.413 1.4-2.397 0-2.81l-.34-.1a1.464 1.464 0 0 1-.872-2.105l.17-.31c.698-1.283-.705-2.686-1.987-1.987l-.311.169a1.464 1.464 0 0 1-2.105-.872l-.1-.34zM8 10.93a2.929 2.929 0 1 1 0-5.86 2.929 2.929 0 0 1 0 5.858z" />
        </symbol>
        <symbol id="speedometer" viewBox="0 0 16 16">
            <path d="M8 2a.5.5 0 0 1 .5.5V4a.5.5 0 0 1-1 0V2.5A.5.5 0 0 1 8 2zM3.732 3.732a.5.5 0 0 1 .707 0l.915.914a.5.5 0 1 1-.708.708l-.914-.915a.5.5 0 0 1 0-.707zM2 8a.5.5 0 0 1 .5-.5h1.586a.5.5 0 0 1 0 1H2.5A.5.5 0 0 1 2 8zm9.5 0a.5.5 0 0 1 .5-.5h1.5a.5.5 0 0 1 0 1H12a.5.5 0 0 1-.5-.5zm.754-4.246a.389.389 0 0 0-.527-.02L7.547 7.31A.91.91 0 1 0 8.85 8.569l3.434-4.297a.389.389 0 0 0-.029-.518z" />
            <path fill-rule="evenodd" d="M6.664 15.889A8 8 0 1 1 9.336.11a8 8 0 0 1-2.672 15.78zm-4.665-4.283A11.945 11.945 0 0 1 8 10c2.186 0 4.236.585 6.001 1.606a7 7 0 1 0-12.002 0z" />
        </symbol>
        <symbol id="toggles2" viewBox="0 0 16 16">
            <path d="M9.465 10H12a2 2 0 1 1 0 4H9.465c.34-.588.535-1.271.535-2 0-.729-.195-1.412-.535-2z" />
            <path d="M6 15a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 1a4 4 0 1 1 0-8 4 4 0 0 1 0 8zm.535-10a3.975 3.975 0 0 1-.409-1H4a1 1 0 0 1 0-2h2.126c.091-.355.23-.69.41-1H4a2 2 0 1 0 0 4h2.535z" />
            <path d="M14 4a4 4 0 1 1-8 0 4 4 0 0 1 8 0z" />
        </symbol>
        <symbol id="tools" viewBox="0 0 16 16">
            <path d="M1 0L0 1l2.2 3.081a1 1 0 0 0 .815.419h.07a1 1 0 0 1 .708.293l2.675 2.675-2.617 2.654A3.003 3.003 0 0 0 0 13a3 3 0 1 0 5.878-.851l2.654-2.617.968.968-.305.914a1 1 0 0 0 .242 1.023l3.356 3.356a1 1 0 0 0 1.414 0l1.586-1.586a1 1 0 0 0 0-1.414l-3.356-3.356a1 1 0 0 0-1.023-.242L10.5 9.5l-.96-.96 2.68-2.643A3.005 3.005 0 0 0 16 3c0-.269-.035-.53-.102-.777l-2.14 2.141L12 4l-.364-1.757L13.777.102a3 3 0 0 0-3.675 3.68L7.462 6.46 4.793 3.793a1 1 0 0 1-.293-.707v-.071a1 1 0 0 0-.419-.814L1 0zm9.646 10.646a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708zM3 11l.471.242.529.026.287.445.445.287.026.529L5 13l-.242.471-.026.529-.445.287-.287.445-.529.026L3 15l-.471-.242L2 14.732l-.287-.445L1.268 14l-.026-.529L1 13l.242-.471.026-.529.445-.287.287-.445.529-.026L3 11z" />
        </symbol>
        <symbol id="chevron-right" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z" />
        </symbol>
        <symbol id="geo-fill" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999zm2.493 8.574a.5.5 0 0 1-.411.575c-.712.118-1.28.295-1.655.493a1.319 1.319 0 0 0-.37.265.301.301 0 0 0-.057.09V14l.002.008a.147.147 0 0 0 .016.033.617.617 0 0 0 .145.15c.165.13.435.27.813.395.751.25 1.82.414 3.024.414s2.273-.163 3.024-.414c.378-.126.648-.265.813-.395a.619.619 0 0 0 .146-.15.148.148 0 0 0 .015-.033L12 14v-.004a.301.301 0 0 0-.057-.09 1.318 1.318 0 0 0-.37-.264c-.376-.198-.943-.375-1.655-.493a.5.5 0 1 1 .164-.986c.77.127 1.452.328 1.957.594C12.5 13 13 13.4 13 14c0 .426-.26.752-.544.977-.29.228-.68.413-1.116.558-.878.293-2.059.465-3.34.465-1.281 0-2.462-.172-3.34-.465-.436-.145-.826-.33-1.116-.558C3.26 14.752 3 14.426 3 14c0-.599.5-1 .961-1.243.505-.266 1.187-.467 1.957-.594a.5.5 0 0 1 .575.411z" />
        </symbol>
    </svg>
    <main>
        <h1 class="visually-hidden">Features examples</h1>

        <div class="container px-4 py-5" id="featured-3">
            <h2 class="pb-2 border-bottom">Los mejores servicios contigo!</h2>
            <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
                <div class="feature col">
                    <h2>Venta de productos y suministro</h2>
                    <p>El servicio principal de una ferretería es proporcionar una amplia variedad de productos y suministros para la construcción, reparación y mejoras en el hogar. Esto incluye herramientas, materiales de construcción, productos de ferretería, pinturas, accesorios, sistemas de fontanería, eléctricos y más. Una ferretería debe contar con un inventario diverso y bien surtido para satisfacer las necesidades de sus clientes.</p>
                </div>
                <div class="feature col">
                    <div class="feature-icon bg-primary bg-gradient">
                    </div>
                    <h2>Asesoramiento ténico y conocimiento experto</h2>
                    <p>Una ferretería puede ofrecer asesoramiento técnico y conocimientos expertos para ayudar a los clientes a tomar decisiones informadas sobre los productos y herramientas más adecuadas para sus proyectos. Los empleados capacitados y con experiencia pueden brindar información sobre características, usos, ventajas y limitaciones de los productos, así como recomendar soluciones prácticas y eficientes.</p>

                </div>
                <div class="feature col">
                    <div class="feature-icon bg-primary bg-gradient">
                    </div>
                    <h2>Servicio de corte y penalización</h2>
                    <p>Algunas ferreterías también ofrecen servicios de corte y personalización de materiales como madera, vidrio, tuberías, cables eléctricos, entre otros. Esto permite a los clientes obtener los materiales a la medida exacta que necesitan para sus proyectos, lo cual ahorra tiempo y esfuerzo. Estos servicios añaden valor a la experiencia del cliente y les brindan soluciones personalizadas.</p>

                </div>
            </div>
        </div>
        <div class="container px-4 py-5" id="custom-cards">
           

            <div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5">
                <div class="col">
                    <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-5 shadow-lg" style="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUhTcRpR2NElmaGwZBzXvYTlmUmKZGP0_DiJo3FB1fRpr-Yx7mGmkYRLxT2VEaj9IR0H0&usqp=CAU');">
                        <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
                            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Personaliza el interior de tu casa</h2>
                            <ul class="d-flex list-unstyled mt-auto">
                                <li class="me-auto">
                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUhTcRpR2NElmaGwZBzXvYTlmUmKZGP0_DiJo3FB1fRpr-Yx7mGmkYRLxT2VEaj9IR0H0&usqp=CAU" alt="Bootstrap" width="32" height="32" class="rounded-circle border border-white">
                                </li>
                                <li class="d-flex align-items-center me-3">

                                    <small>Earth</small>
                                </li>
                                <li class="d-flex align-items-center">

                                    <small></small>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-5 shadow-lg" style="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7cJzTuPW7doKl4D26jEK0KNiGkxEKf64xBAm3lnEdwa5eWOu1rirmHSxbo4CVxZpX3z0&usqp=CAU');">
                        <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
                            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Revive tu cocina</h2>
                            <ul class="d-flex list-unstyled mt-auto">
                                <li class="me-auto">
                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7cJzTuPW7doKl4D26jEK0KNiGkxEKf64xBAm3lnEdwa5eWOu1rirmHSxbo4CVxZpX3z0&usqp=CAU" alt="Bootstrap" width="32" height="32" class="rounded-circle border border-white">
                                </li>
                                <li class="d-flex align-items-center me-3">
                                    <svg class="bi me-2" width="1em" height="1em">
                                        <use xlink:href="#geo-fill" />
                                    </svg>
                                    <small>Pakistan</small>
                                </li>
                                <li class="d-flex align-items-center">
                                    <svg class="bi me-2" width="1em" height="1em">
                                        <use xlink:href="#calendar3" />
                                    </svg>
                                    <small></small>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-5 shadow-lg" style="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL8iz6ndfN5OKJ6UJ4w_L9dxXAHH6ZBOr1sXtrwaZNTkwN_CaYt55MoszfCyzwhSGUjKA&usqp=CAU');">
                        <div class="d-flex flex-column h-100 p-5 pb-3 text-shadow-1">
                            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Lo mejor en muebles</h2>
                            <ul class="d-flex list-unstyled mt-auto">
                                <li class="me-auto">
                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL8iz6ndfN5OKJ6UJ4w_L9dxXAHH6ZBOr1sXtrwaZNTkwN_CaYt55MoszfCyzwhSGUjKA&usqp=CAU" alt="Bootstrap" width="32" height="32" class="rounded-circle border border-white">
                                </li>
                                <li class="d-flex align-items-center me-3">
                                    <svg class="bi me-2" width="1em" height="1em">
                                        <use xlink:href="#geo-fill" />
                                    </svg>
                                    <small>California</small>
                                </li>
                                <li class="d-flex align-items-center">
                                    <svg class="bi me-2" width="1em" height="1em">
                                        <use xlink:href="#calendar3" />
                                    </svg>
                                    <small></small>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            </div>



            <div class="b-example-divider"></div>

            <div class="container px-4 py-5" id="hanging-icons">
                <h2 class="pb-2 border-bottom">La mejor asesoria!</h2>
                <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
                    <div class="col d-flex align-items-start">
                        <div class="icon-square bg-light text-dark flex-shrink-0 me-3">
                        </div>
                        <div>
                            <h2>Asesoria en seleeción de productos</h2>
                            <p>Muchos clientes pueden sentirse abrumados por la amplia variedad de productos disponibles en una ferretería. Un tipo de asesoría útil es ayudar a los clientes a seleccionar los productos adecuados para sus necesidades. Esto implica comprender sus requisitos y brindar recomendaciones sobre las herramientas, materiales o equipos más adecuados para llevar a cabo sus proyectos.</p>

                        </div>
                    </div>
                    <div class="col d-flex align-items-start">
                        <div class="icon-square bg-light text-dark flex-shrink-0 me-3">
                        </div>
                        <div>
                            <h2>Asesoria en proyectos de construcción o mejoras en e hogar</h2>
                            <p>Muchos clientes de ferreterías están involucrados en proyectos de construcción o mejoras en el hogar. En este caso, la ferretería puede ofrecer asesoramiento especializado sobre cómo abordar proyectos específicos. Los empleados pueden ayudar a los clientes a planificar sus proyectos, brindar recomendaciones sobre los materiales y herramientas necesarios, y brindar consejos prácticos para llevar a cabo las tareas de manera eficiente y segura.</p>


                        </div>
                    </div>
                    <div class="col d-flex align-items-start">
                        <div class="icon-square bg-light text-dark flex-shrink-0 me-3">
                        </div>
                        <div>
                            <h2>Asesoria en seguridad y normativas</h2>
                            <p>Las ferreterías pueden proporcionar asesoría en materia de seguridad y cumplimiento normativo. Esto implica informar a los clientes sobre las medidas de seguridad necesarias al utilizar ciertos productos o herramientas, y educarlos sobre las normativas vigentes en su área. Por ejemplo, pueden brindar información sobre el uso adecuado de equipos de protección personal, la manipulación segura de productos químicos o el cumplimiento de las regulaciones locales en la construcción.</p>


                        </div>
                    </div>
                </div>
            </div>

            <div class="b-example-divider"></div>

            <div class="b-example-divider"></div>
    </main>
 
     <center><h2 class="pb-2 border-bottom">Nuestra sala de Exposicion</h2></center>
    <br />
    <br />
    <br />
    <br />
    <br />
    <div>
        <center>
            <div class="contenedor">
                <div class="carrus">
                    <div class="carousel__face"><span></span></div>
                    <div class="carousel__face"><span></span></div>
                    <div class="carousel__face"><span></span></div>
                    <div class="carousel__face"><span></span></div>
                    <div class="carousel__face"><span></span></div>
                    <div class="carousel__face"><span></span></div>
                    <div class="carousel__face"><span></span></div>
                    <div class="carousel__face"><span></span></div>
                    <div class="carousel__face"><span></span></div>
                 
                </div>
            </div>
        </center>
    </div>
    <center>
        <br />
        <br />
        <div class="social-icons" style="position: static">
            <a href="#" class="icon">
                <img style="width: 20px; height: 20px;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxLV0rHXO5vDUmZ3GBKNUZg0oWXSHnAVgm4Q&usqp=CAU" alt="Facebook">
            </a>
            <a href="#" class="icon">
                <img style="width: 20px; height: 20px;" src="data:image/png;base64,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" alt="Twitter">
            </a>
            <a href="#" class="icon">
                <img style="width: 20px; height: 20px;" src="data:image/png;base64,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" alt="Instagram">
            </a>
        </div>
    </center>
    <br />
    <br />
    <br />
    <center>
        <footer class="pt-5 my-5 text-muted border-top">
            Centerfer.com  &middot; &copy; 2023
 
        </footer>
    </center>

    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>


    <br />
    <br />

</asp:Content>
