<%-- 
    Document   : listaCategoria
    Created on : 01/08/2017, 08:29:09
    Author     : Aluno
--%>

<%@page import="Pojo.Produto"%>
<%@page import="Pojo.Categoria"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
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
            
table {
    width: 100%;
}
            th, td {
    border-bottom: 1px solid #ddd;
    padding: 15px;
    text-align: left;
    
}
td {
    height: 50px;
    vertical-align: bottom;
}
th {
    text-align: left;
    height: 50px;
  
    
}
#tab{
    background-color: #4CAF50;
    color: white;
    font-weight: bold;
}
html{
    font-family: Palatino Linotype;
}
a{
    color:black;
    text-decoration: none;
}
a:hover{
    color:#4CAF50;
}
.aa{
    padding: 15px 15px;
    margin: 40px 40px;
    background-color: #4CAF50;
    color: white;
}
.aa:hover{
    background-color: black;
}
        </style>
    </head>
    <body>
         <div id="menu">
        <ul>
            <li><a href="/Store/index.jsp">Pagina Inicial</a></li>
            <li> <a href="/Store/produto/form.jsp">Cadastrar Produto</a></li>
        </ul>
        </div>
        <br>
        <br>
        <br>
        <br>
        
     
        <% 
            List<Produto> listaProduto = new ArrayList<Produto>();
                listaProduto = (List<Produto>) request.getAttribute("list");
        %>
        <table >
            <tr id="tab">
                <td>Id</td>
                <td>Nome</td>
                <td>CPF</td>
                <td>Descrição</td>
                <td>Preço</td>
                <td>Categoria</td>
                <td>Editar</td>
                <td>Excluir</td>
            </tr>
            <%
                for (int x=0; x<listaProduto.size(); x++){
                    Produto p = (Produto)listaProduto.get(x);
                
                %>
                <tr>
                    <td><%=p.getId() %></td>
                    <td> <%=p.getNome() %>  </td>
                    <td> <%=p.getDescricao() %>  </td>
                    <td> <%=p.getPreco() %>  </td>
                    <td> <%=p.getCategoria().getId()%>  </td>
                    <td><a href="/Store/ServletProduto?id=<%=p.getId()%>">Editar</a></td>
                    <td><a onclick="return confirm('Tem certeza que dezeja Excluir?')" href="/Store/ServletProdutoExcluir?id=<%=p.getId()%>">Excluir</a></td>
                </tr>
                <% } %>
        </table>
        <br>
        
    </body>
</html>
