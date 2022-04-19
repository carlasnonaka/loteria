<%-- 
    Document   : loteria
    Created on : 11 de abr de 2022, 16:36:05
    Author     : Carla Suemi Nonaka
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" croin="anonymous">
        <style>
            ul, li{
   margin: 0; padding: 0;
   list-style: none;
}

ul.circulo li, div.circulo{
   display: flex;
   align-items: center;
   justify-content: center;
   width: 45px;
   height: 45px;
   border-radius: 50%;
   float: left;
   margin: 4px;
   font-size: 30px;
   font-weight: bold;
   color: #555;

   background: -moz-linear-gradient(270deg, #f5f5f5 0%, #f5f5f5 16%, #999999 100%);
   background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #f5f5f5), color-stop(16%, #f5f5f5), color-stop(100%, #999999));
   background: -webkit-linear-gradient(270deg, #f5f5f5 0%, #f5f5f5 16%, #999999 100%);
   background: -o-linear-gradient(270deg, #f5f5f5 0%, #f5f5f5 16%, #999999 100%);
   background: -ms-linear-gradient(270deg, #f5f5f5 0%, #f5f5f5 16%, #999999 100%);
   background: linear-gradient(180deg, #f5f5f5 0%, #f5f5f5 16%, #999999 100%);
   filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f5f5f5', endColorstr='#999999',GradientType=0 );
   filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f5f5f5', endColorstr='#999999',GradientType=0 );

   -webkit-box-shadow: 2px 2px 2px 0px rgba(50, 50, 50, 0.75);
   -moz-box-shadow:    2px 2px 2px 0px rgba(50, 50, 50, 0.75);
   box-shadow:         2px 2px 2px 0px rgba(50, 50, 50, 0.75);
}
        </style>
        <title>Loteria </title>
    </head>
    <body>
        
        <%@page import="java.util.ArrayList"%>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <a href="index.jsp"> Voltar </a>
        <h1>Números da Loteria</h1>
        <%if(session.getAttribute("username")!=null){%>
            <% 
                ArrayList listaRecebida = (ArrayList) request.getSession().getAttribute("arrayNaSessao");
                
                int[] num = new int[6];
                for(int i=0; i<listaRecebida.size(); i++){
                num[i]= ((int)listaRecebida.get(i));
                }
            %>
            <ul class="list-inline">
            <%for(int i=0; i<num.length; i++){%>
            <h4>
            <ul class="circulo">
                <li><b><%= num[i] %></b></li>
            </ul>
            </h4>
            <%}%>
            <br clear="all" /><br />
        <%}else{%>
            <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
  </symbol>
</svg>
  <div class="alert alert-danger d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
  <div>
    Você não tem permissão para ver esta página!
  </div>
</div>
        <%}%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMh9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
