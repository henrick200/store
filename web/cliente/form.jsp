<%-- 
    Document   : categoria
    Created on : 25/07/2017, 08:35:13
    Author     : Aluno
--%>

<%@page import="Pojo.Cliente"%>
<%@page import="Pojo.Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Cliente</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script>
            $(document).ready(function () {

                $("#btn").click( function(){
                    
                    // Verifica o valor de um campo
                    if( $("input[name=nome]").val() == "" ){
                        // Exibe um alerta
                        window.alert("Informe um nome.");
                        // Da foco no campo
                        $("input[name=nome]").focus();
                        
                    } else if( $("input[name=tipo]").val() == "" ){
                        window.alert("Informe um tipo.");
                        $("input[name=tipo]").focus();
                        
                    }else {
                        // Faz o envio dos dados porque tudo está
                        // preenchido corretamente
                        $("form").submit();
                    }
                    
                });

            });
        
        </script>
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
input[type=submit] {
    width: 25%;
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}
input[type=text] {
    width: 30%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    border-bottom: 2px solid #4CAF50;
}
#todo{
    text-align: center;
    padding: 10px 10px;
    line-height: 1.3;
    margin-bottom: 10px;
}
html{
    font-family: Palatino Linotype;
}
        </style>
    </head>
    <body>
        <div id="menu">
        <ul>
            <li><a href="/Store/index.jsp">Pagina Inicial</a></li>
            <li> <a href="/Store/ServletClienteLista">Lista Cliente</a></li>
        </ul>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div id="todo">
        <h1>Cadastro de Cliente</h1>
        <% 
            Cliente c = (Cliente)request.getAttribute("cliente"); 
            if (c == null){
                c = new Cliente();
            }
        %>
        <br/>
        <form name="cliente" method="post" action="/Store/ServletCliente">
            <input type="hidden" name="id" value="<%=c.getId()%>"  />
            <label>Nome: </label><br/>
            <input type="text" name="nome" value="<%=c.getNome()%>"/><br/>
            <label>CPF: </label><br/>
            <input type="text" name="cpf" value="<%=c.getCpf()%>" /><br/>
            <label>Endereço: </label><br/>
            <input type="text" name="endereco" value="<%=c.getEndereco()%>" /><br/>
            <label>Telefone: </label><br/>
            <input type="text" name="telefone" value="<%=c.getTelefone()%>" /><br/><br/>
            <input type="submit" value="Cadastrar" name="" id="btn"/>
            
            
        </form>
        </div>   
    </body>
</html>
