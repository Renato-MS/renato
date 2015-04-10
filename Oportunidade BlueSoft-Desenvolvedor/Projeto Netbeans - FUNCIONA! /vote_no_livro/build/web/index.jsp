<%-- 
    Document   : index
    Created on : 09/04/2015, 10:16:07
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
        <title>Escolha seu Livro</title>        
    </head>
    
    
    
    <body>
        
         <nav class="navbar navbar-default navbar-fixed-top navbar navbar-inverse">
         <div class="container">
             <a href="index.jsp">Principal</a></h4>
             <a href="MostraRaking.jsp">Ranking</a>
         </div>
        </nav>
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
         <script src="js/bootstrap.min.js"></script>       

         
         <br><br><h1>Escolha os livros que mais gosta!</h1>
        
         <div class="col-sm-6 col-md-4 pull-left"> 
              

            <form name="formLivro" action="escolha_livroTwo.jsp" method="POST">
            <img src="imagens/a-cabana-frente.jpg" width="170" height="260" alt="a-cabana-frente"/>
            

            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 pull-right">
            Título:
            <input type="text" name="titulo" value="A Cabana" readonly /><br>
            Autor:
            <input type="text" name="autor" value="Willian P." readonly="readonly"  /><br>
            Ano:
            <input type="text" name="ano" value="2004" readonly="readonly"  /><br>
            Código:
            <input type="text" name="Numero" value="1" readonly="readonly"  /><br>
            <input type="hidden" name="parametroParaescolha_livroTwo" value="${codigo.Numero}">
           
            
             <div class="controls">
                <input type="submit" value="Escolher" name="btEscolher" />
            </div>
            </div>   
        </form>
    </div>
       
         
         <div class="col-sm-6 col-md-4 pull-right">
         <form name="formLivro2" action="escolha_livroTwo.jsp" method="POST">
            <img src="imagens/apanhador.jpg" width="170" height="260" alt="apanhador"/>
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 pull-right">
            Título:
            <input type="text" name="titulo2" value="O Apanhador no Campo de Centeio" readonly="readonly"  /><br>
            Autor:
            <input type="text" name="autor2" value="J.D Salinger" readonly="readonly"  /><br>
            Ano:
            <input type="text" name="ano2" value="1960" readonly="readonly"  /><br>
            Código:
            <input type="text" name="Numero" value="2" readonly="readonly"  />
            
            <input type="hidden" name="parametroParaescolha_livroTwo" value="${codigo.Numero}">
            
             <div class="controls">
                <input type="submit" value="Escolher" name="btEscolher" />
            </div>
            </div>
        </form>
        </div>
    </body>
</html>
