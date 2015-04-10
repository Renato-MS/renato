<%-- 
    Document   : escolha_livroTwo
    Created on : 09/04/2015, 22:27:23
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

         
         <br><br><h1>Escolha outro livros que mais gosta!</h1>
         
        
         <div class="col-sm-6 col-md-4 pull-left"> 
              
            <form name="formLivro3" action="PedeNomeUsuario.jsp" method="POST">
                <img src="imagens/Criptografia_e_Seguranca.jpg" width="170" height="260" alt="Criptografia e Segurança de Redes"/>
            
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 pull-right">
            Título:
            <input type="text" name="titulo3" value="Criptografia e Segurança" readonly="readonly" /><br>
            Autor:
            <input type="text" name="autor3" value="Willian Sallings" readonly="readonly"  /><br>
            Ano:
            <input type="text" name="ano3" value="2000" readonly="readonly"  /><br>
            Código:
            <input type="text" name="Numero" value="3" readonly="readonly"  /><br>
            <input type="hidden" name="parametroIndex" value="${param.Numero}">
            
            <input type="hidden" name="parametroIndex_Para_PedeNomeUsuario" value="${codigo.parametroIndex}">
            <input type="hidden" name="escolhe_livroTwo_Para_PedeNomeUsuario" value="${codigo.Numero}">
            
             <div class="controls">
                <input type="submit" value="Escolher" name="btEscolher" />
            </div>
            </div>   
        </form>
    </div>
       
         
         <div class="col-sm-6 col-md-4 pull-right">
         <form name="formLivro4" action="PedeNomeUsuario.jsp" method="POST">
             <img src="imagens/OPrincipe.jpg" width="170" height="260" alt="O Principe"/>
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 pull-right">
            Título:
            <input type="text" name="titulo4" value="O Principe" readonly="readonly"  /><br>
            Autor:
            <input type="text" name="autor4" value="Maquiavel" readonly="readonly"  /><br>
            Ano:
            <input type="text" name="ano4" value="1710" readonly="readonly"  /><br>
            Código:
            <input type="text" name="Numero" value="4" readonly="readonly"  />            
            <input type="hidden" name="parametroIndex" value="${param.Numero}">
            
            <input type="hidden" name="parametroIndex_Para_PedeNomeUsuario" value="${codigo.parametroIndex}">
            <input type="hidden" name="escolhe_livroTwo_Para_PedeNomeUsuario" value="${codigo.Numero}">
            
             <div class="controls">
                <input type="submit" value="Escolher" name="btEscolher" />
            </div>
            </div>
        </form>
        </div>
         
         
         <div class="col-sm-6 col-md-4 pull-right">
         <form name="formLivro5" action="PedeNomeUsuario.jsp" method="POST">
             <img src="imagens/mobyDick.jpg" width="170" height="260" alt="Moby Dick"/>
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 pull-right">
            Título:
            <input type="text" name="titulo5" value="Moby-Dick" readonly="readonly"  /><br>
            Autor:
            <input type="text" name="autor5" value="Helman Melville" readonly="readonly"  /><br>
            Ano:
            <input type="text" name="ano5" value="1995" readonly="readonly"  /><br>
            Código:
            <input type="text" name="Numero" value="5" readonly="readonly"  />  
            
            <input type="hidden" name="parametroIndex" value="${param.Numero}">
            
            <input type="hidden" name="parametroIndex_Para_PedeNomeUsuario" value="${codigo.parametroIndex}">
            <input type="hidden" name="escolhe_livroTwo_Para_PedeNomeUsuario" value="${codigo.Numero}">
            
            
            
            
             <div class="controls">
                <input type="submit" value="Escolher" name="btEscolher" />
            </div>
            </div>
        </form>
        </div>
    </body>
</html>

