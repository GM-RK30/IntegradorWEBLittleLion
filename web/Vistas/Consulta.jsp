<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="Beans.ProductosBeans"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link href="Estilos/Estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <header>            
            <%@ include file="../Partes/Header.jsp" %>            
        </header>
            
        
        <main>

            <div class="container">
                                
                <% 
                    String opc = request.getParameter("opcion");
                    
                    ArrayList<ProductosBeans> lista = (ArrayList<ProductosBeans>)request.getAttribute("lista"); 
                                        
                    if(opc.equals("Bebes")){
                        opc = "Bebés";
                    }else if(opc.equals("Ninos")){
                        opc = "Niños";
                    }else if(opc.equals("Ninas")){
                        opc = "Niñas";
                    }
                    
                        %>                        
                        
                    <h2 class="p-4" align="center"> Productos: <%= opc %> </h2> 
                    
                    <div class="row">
                <%
                    for(int i = 0; i < lista.size(); i++){
                        
                        ProductosBeans emp = lista.get(i);
                    
                        %>
                    
                        
                        <div class="col p-4" align="center">
                            <div class="card h-100" style="width: 20rem;">
                                <img src="img/Productos/1.png" class="card-img-top h-50" alt="...">
                                <div class="card-body h-100">
                                    <p style="text-align: center"> <%= emp.getNom() %> </p> 
                                    <hr>
                                    <button type="button" class="btn btn-info"> Comprar </button>
                                    <p class="card-text"> <%= emp.getDescrp() %> </p>
                                    <p> Marca: <%= emp.getMarca() %> </p>
                                    <p> Categoría <%= emp.getCategoria() %> </p>
                                    <p align="center"> Precio: <%= emp.getPrecio() %> </p>
                                    <p align="center"> Descuento: <%= emp.getDesc() %> </p>
                                </div>
                            </div>
                        </div>   
                   
                <%
                    }
                        %>
                
                    </div>
                
                
            </div> 
            
        </main>
        
            
        <footer>  
            <%@ include file="../Partes/Footer.jsp" %>
        </footer>
        
        
    </body>
</html>
