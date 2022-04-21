<%-- 
    Document   : index
    Created on : 11 de abr de 2022, 16:30:58
    Author     : Carla Suemi Nonaka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=5">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <style>
            body { margin: 0px 20px 0px 20px; }
        </style>
        <title>Indice - CarlaApp </title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>Índice CarlaApp </h1>
        </br>
        <%if (session.getAttribute("username") == null) {%>
        <h4>
            <form>
            Digite seu Usuário:
            <input type="text" name="username"/>
            <button type="submit" name="logon" class="btn btn-primary">ENTRAR</button>
        </form>
        </h4>
        <%} else{%>
        <h4>
        Selecione abaixo página deseja acessar:
        </br></br>
        <a href="about.jsp">Sobre Carla</a>
        </br>
        <a href="loteria.jsp">Números da Loteria</a>
        </h4>
        <%}%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
