<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 09/05/2017, 08:55:44
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #menu{
    text-align: center;
    background-color: #4CAF50;
    color: white;
   padding: 0px;
   position: fixed;
   width: 100%;
}
#menu ul{
    list-style-type: none;
}
#menu ul li{
    display: inline-block;
}
#menu a{
    color: white;
    display: block;
    padding: 15px 25px;
    text-decoration: none;
    
}

#menu a:hover{
    color: grey;
}
        </style>
    </head>
    <body>
        
        <div id="menu">
        <ul>
            <li><a href="/Store/categoria/form.jsp">Cadastrar categoria</a></li>
            <li> <a href="/Store/ServletCategoriaLista">Lista Categoria</a></li>
            <li><a href="/Store/cliente/form.jsp">Cadastrar Cliente</a></li>
            <li> <a href="/Store/ServletClienteLista">Lista Cliente</a></li>
            <li><a href="/Store/ServletProdutoCategoria">Cadastrar Produto</a></li>
            <li><a href="/Store/ServletProdutoLista">Lista Produto</a></li>
        </ul>
        </div>
        <div>
            <img src="https://i.imgur.com/PZJGoTh.png" width="100%"  height="750px"/>
        </div>
  
    </body>
</html>
