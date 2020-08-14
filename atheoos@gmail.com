<?xml version="1.0" encoding="ISO-8859-1" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:p="http://primefaces.org/ui">
<h:head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Confecciones - Login</title>
</h:head>
<h:body>
<style>
	.centrado{
    	width: 800px;
	  border-radius: 80px;
    } 
    
</style>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<div align="center">
		<p:graphicImage  width="105apx" value="#{FacesContext.getCurrentInstance}/images/logoconfeccionesWeb.png"/>
		    	<div class="p-field p-col" align="center" style="font-weight: bold;font-size: xx-large;font-family:monospace; ; " >
		    		Registro de Confeciones - Nueva Actualizacion
		    	</div>
	</div>
	<br/>
	<div align="center">
	 	<h:form styleClass="centrado">
			<p:growl id="Mensaje" showDetail="true" sticky="true"/>
			<p:panel header="Iniciar Sesion">
				<h:panelGrid id="login" columns="2">
					<p:outputLabel value ="Ingrese Email " />
					<p:inputText id ="txtEmail" required="true" value="#{loginView.email}" />
					<p:outputLabel value ="Ingrese Password: "/>
					<p:password id ="txtPassword" required="true" maxlength="10" value="#{loginView.password}"/>
					<p:commandButton icon="fa fa-key" value="Iniciar Sesión"  action="#{loginView.validacionUsuario}" update="Mensaje"/>
				</h:panelGrid>
			</p:panel>
		</h:form>
	</div>
</h:body>
</html>
