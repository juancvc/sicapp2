<%@page session="true"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title> SICAPP WEB</title>
<!-- Bootstrap core CSS-->
<link
	href="${pageContext.request.contextPath}/app-assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom fonts for this template-->
<link
	href="${pageContext.request.contextPath}/app-assets/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Custom styles for this template
<link
	href="${pageContext.request.contextPath}/app-assets/css/sb-admin.css"
	rel="stylesheet">-->

<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/app-assets/images/ico/icoTeamSoftti32x32.png">
	
<link rel="shortcut icon" type="image/x-icon"

	href="${pageContext.request.contextPath}/app-assets/images/ico/icoTeamSoftti32x32.png">

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i%7COpen+Sans:300,300i,400,400i,600,600i,700,700i"
	rel="stylesheet">
<!-- BEGIN VENDOR CSS-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/app-assets/fonts/feather/style.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/app-assets/fonts/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/app-assets/fonts/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/app-assets/vendors/css/extensions/pace.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/app-assets/vendors/css/forms/icheck/icheck.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/app-assets/vendors/css/forms/icheck/custom.css">
<!-- END VENDOR CSS-->
<!-- BEGIN Page Level CSS-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/app-assets/css/core/menu/menu-types/vertical-menu.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/app-assets/css/core/menu/menu-types/vertical-overlay-menu.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/app-assets/css/pages/login-register.css">
<!-- END Page Level CSS-->
<!-- BEGIN Custom CSS--> 
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath}/app-assets/css/sb-admin-2.min.css" rel="stylesheet">
<style>
.form-control-combo{font-size:13px;border-radius:10rem; padding:0rem 1rem}

.divTitulo{
	color: #00000;
	font-family: Cambria;
	font-size: 18px;  
	padding:.60rem 1.10rem;
	margin-bottom:0; 
	font-weight: bold; 
	align-text:center;
	margin-left: auto;
    margin-right: auto;
}
.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 90%;
  height: 50%; 
 } 
 
</style>
</head>

<body class="bg-white">
	<div class="container">
	  <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block">
              <img id="imgFotoPaciente"  width="100%" height="100%"
				src="${pageContext.request.contextPath}/assets/img/logo1asist.jpg" />
              </div>
              <div class="col-lg-6">
                <div class="p-4">
                  <div class="text-center">
                  <img id="imgFotoPaciente"  width="100%" height="30%"
                    src="${pageContext.request.contextPath}/assets/img/logo2asis.jpg" />
                  
                  </div> 
                  <f:form class="user" role="form"
					action="${pageContext.request.contextPath}/inicioLogisticaController/controlAcceso"> 
                    <div class="form-group">
                      <f:input  id="textUsuario"
							path="nombreUsuario" type="text" class="form-control form-control-user" 
							aria-describedby="emailHelp" placeholder="Ingrese usuario..."/>
                    </div>
                    <div class="form-group">
                      <f:input type="password" class="form-control form-control-user" id="textPassword" path="contrasena"
							placeholder="Password"/>
                    </div>
                    
                   
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Recordarme</label>
                      </div>
                    </div>
                    <div class="form-group">
					<input class="form-control" type="text" disabled="true" id="msgErrorLogin" value="${msgErrorLogin}"
						style="background-color:LightPink ; display: none !important;">
					</div>	
                   <button id="btnIniciarSesion" type="submit"
						class="btn btn-primary btn-user btn-block"> LOGIN
					</button> 
                 	</f:form>
         
                  
                   <div class="text-center">
                    <a class="small" href="${pageContext.request.contextPath}/usuarioController/olvidoPassUsuario">¿Olvidó su contraseña?</a>
                  </div>
                  <!-- <div class="text-center">
                    <a class="small" href="register.html">Create an Account!</a>
                  </div>
                  
                   -->
                 
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>
	
	
	
	<!-- 
	
		<div class="card card-login mx-auto mt-5">
			<div class="card-header" style="align-text:center">
			<div class="form-group"> 
						<img 
					src="${pageContext.request.contextPath}/assets/img/logoLab.png"
					class="img-fluid center" alt="branding logo"> 
					<div style="text-align: center;"><span class="divTitulo" >CONTROL DE ACCESO</span>
					</div>
					</div>
					
				
			</div>
			<div class="card-body">
				<f:form class="form-horizontal form-simple" role="form"
					action="${pageContext.request.contextPath}/inicioController/controlAcceso"> 
					
					<input id="Mensaje" type="hidden" value="${Mensaje}">
					<div class="form-group">
						<label for="exampleInputEmail1">Usuario <i
						class="fa fa-user fa-fw"></i></label>
						<f:input class="form-control" id="textUsuario"
							path="nombreUsuario" type="text" aria-describedby="emailHelp"
							placeholder="Ingrese Usuario" required="true" />
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Contraseña <i
						class="fa fa-key fa-fw"></i></label>
						<f:input class="form-control" id="textPassword" path="contrasena"
							type="password" placeholder="Ingrese Contraseña" required="true" />
							
					</div>
					<div class="form-group">
					<input class="form-control" type="text" disabled="true" id="msgErrorLogin" value="${msgErrorLogin}"
						style="background-color:LightPink ; display: none !important;">
					</div>	
					<!--    <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox"> Remember Password</label>
            </div>
          </div>-->
			<!--	<button id="btnIniciarSesion" type="submit"
						class="btn btn-primary btn-lg btn-block">
						<i class="ft-unlock"></i> Acceder
					</button>
				</f:form>
				<!--      <div class="text-center">
          <a class="d-block small mt-3" href="register.html">Register an Account</a>
          <a class="d-block small" href="forgot-password.html">Forgot Password?</a>
        </div>-->
		<!--	</div>
		</div>-->
	</div>
	<!-- Bootstrap core JavaScript-->
	<script
		src="${pageContext.request.contextPath}/app-assets/vendors/js/vendors.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/app-assets/vendors/js/forms/validation/jqBootstrapValidation.js"
		type="text/javascript"></script>
	<!-- END PAGE VENDOR JS-->
	<!-- BEGIN STACK JS-->
	<script
		src="${pageContext.request.contextPath}/app-assets/js/core/app-menu.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/app-assets/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/app-assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script
		src="${pageContext.request.contextPath}/app-assets/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/app-assets/js/scripts/forms/form-login-register.js"
		type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/assets/js/scripts.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/app-assets/vendors/js/extensions/toastr.min.js"
		type="text/javascript"></script>


	<script type="text/javascript" charset="utf-8">
		var infoHtml = "<div id='boxMsg' class='alert alert-danger'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button><span class='msgValidar'>Ha ocurrido un error en JavaScript ponerse en contacto con soporte.</span></div>";

		$("#textUsuario, #textClave").keyup(
				function() {
					if ($("#textUsuario").val() == "") {
						$("#textUsuario").focus();
						var contentInput = $("#textUsuario").parents(
								".valid-msg");
						$(contentInput).addClass("has-error");
						//$("#boxMsgx").append(infoHtml);
						$("#boxMsgx").html(infoHtml);
						$("#boxMsg").fadeIn("slow");
						$(".msgValidar").html(
								"Por favor, ingrese el nombre de usuario");
					} else {
						$("#textUsuario").parents(".valid-msg").removeClass(
								"has-error");
						$("#boxMsg").fadeOut();
					}
				});

		$("#textClave").keyup(
				function() {
					if ($("#textClave").val() == "") {
						$("#textClave").focus();
						var contentInput = $("#textClave")
								.parents(".valid-msg");
						$(contentInput).addClass("has-error");
						//$("#boxMsgx").append(infoHtml);
						$("#boxMsgx").html(infoHtml);
						$("#boxMsg").fadeIn("slow");
						$(".msgValidar").html(
								"Por favor, ingrese su contrase&ntilde;a");
					} else {
						$("#textClave").parents(".valid-msg").removeClass(
								"has-error");
						$("#boxMsg").fadeOut();
					}
				});

		$("#btnIniciarSesion")
				.click(
						function() {
							var infoHtml = "<div id='boxMsg' class='alert alert-danger'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button><span class='msgValidar'>Ha ocurrido un error en JavaScript ponerse en contacto con soporte.</span></div>";

							var txtUsuario = $("#textUsuario").val();
							var txtClave = $("#textClave").val();

							if (txtUsuario == "") {
								$("#textUsuario").focus();
								var contentInput = $("#textUsuario").parents(
										".valid-msg");
								$(contentInput).addClass("has-error");
								//$("#boxMsgx").append(infoHtml);
								$("#boxMsgx").html(infoHtml);
								$("#boxMsg").fadeIn("slow");
								$(".msgValidar")
										.html(
												"Por favor, ingrese el nombre de usuario");
								return false;
							}

							if (txtUsuario != "") {
								$("#textUsuario").parents(".valid-msg")
										.removeClass("has-error");
								$("#boxMsg").fadeOut();
							}

							if (txtClave == "") {
								$("#textClave").focus();
								var contentInput = $("#textClave").parents(
										".valid-msg");
								$(contentInput).addClass("has-error");
								//$("#boxMsgx").append(infoHtml);
								$("#boxMsgx").html(infoHtml);
								$("#boxMsg").fadeIn("slow");
								$(".msgValidar")
										.html(
												"Por favor, ingrese su contrase&ntilde;a");
								return false;
							}

							if (txtClave != "") {
								$("#textClave").parents("valid-msg")
										.removeClass("has-error");
								$("#boxMsg").fadeOut();
							}

						});

		$(document)
				.ready(
						function() {
							var infoHtml = "<div id='boxMsg' class='alert alert-danger'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button><span class='msgValidar'>Ups Ocurrio un error en JavaScript ponerse en contacto con soporte de imarpe.</span></div>"
							var msgErrorLogin = document
									.getElementById('msgErrorLogin').value;
							if (msgErrorLogin.length > 0) {
								//console.log("msgErrorLogin" + msgErrorLogin);
								document.getElementById('msgErrorLogin').style.display = 'block';
								//msg_advertencia(msgErrorLogin);
								//$("#boxMsgx").append(infoHtml);
								$("#boxMsgx").html(infoHtml);
								$("#boxMsg").fadeIn("slow");
								$(".msgValidar").html(msgErrorLogin);
							}
						});

		function nobackbutton() {

			window.location.hash = "no-back-button";
			window.location.hash = "Again-No-back-button"
			window.onhashchange = function() {
				window.location.hash = "no-back-button";
			}
			//window.location.hash = "";
			//window.location.hash = "";
			//window.onhashchange  = function(){window.location.hash="";}
		}
	</script>
</body>

</html>
