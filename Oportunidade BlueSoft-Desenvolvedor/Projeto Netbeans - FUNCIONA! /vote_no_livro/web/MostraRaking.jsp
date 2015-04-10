<%-- 
    Document   : MostraRaking
    Created on : 09/04/2015, 23:02:42
    Author     : Renato Mendes
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    
        <link href="bootstrap/css/bootstrap.min.css " rel="stylesheet">
        <title>Mostra o Ranking</title>        
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
         
      <br><br><h1>Ranking dos Livro votados!</h1>   
      
      <table class="table-bordered">
          
      <%  
      int codigoLeitor;
      String livro;
      
      String url = "jdbc:derby://localhost:1527/sample";
      Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
      Connection conn = DriverManager.getConnection(url,"app", "app");
      Statement stmt = conn.createStatement();
      ResultSet rs = stmt.executeQuery("SELECT distinct LIVRO.TITULO_LIVRO, LEITOR.CODIGO_LIVRO FROM LIVRO, LEITOR"
                                    + " where LIVRO.CODIGO_LIVRO = LEITOR.CODIGO_LIVRO GROUP BY LIVRO.TITULO_LIVRO,"
                                    + "LEITOR.CODIGO_LIVRO Order by  LEITOR.CODIGO_LIVRO desc");
      while(rs.next()){
      livro = rs.getString("titulo_livro");
      codigoLeitor = rs.getInt("codigo_livro"); 
    
    %>  

    <tr>
        <td><%=livro %> </td>
        <td><%=codigoLeitor %></td>
    </tr>   
    <%}
        rs.close();
        stmt.close();
        conn.close();
     %>
</table>
       
         
         
        </div>
    </body>
</html>

