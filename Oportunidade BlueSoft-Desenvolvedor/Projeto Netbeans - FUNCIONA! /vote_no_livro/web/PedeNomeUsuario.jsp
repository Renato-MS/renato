<%-- 
    Document   : PedeNomeUsuario
    Created on : 09/04/2015, 01:50:35
    Author     : Renato Mendes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    
        <link href="bootstrap/css/bootstrap.min.css " rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
          <div class="jumbotron">
         <form name="formLivro6" action="ServletGravaLivros" method="POST">
             
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 ">
                Seu nome:<br>
            <input type="text" name="nomeLeitor" value="" size="49" /><br>
            E-mail:<br>
            <input type="text" name="email" value="" size="49" /><br>
            
                        
            <input type="hidden" name="escolha_livroTwo" value="${param.Numero}">
            <input type="hidden" name="parametroIndex" value="${param.parametroIndex}">         
                   
            
            
            
             <div class="controls">
                <input type="submit" value="Gravar" name="btEscolher" />
            </div>
            </div>
        </form>
        </div>
    </body>
</html>
