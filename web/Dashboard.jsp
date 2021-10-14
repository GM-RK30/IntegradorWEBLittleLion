<%@page import="java.util.ArrayList"%>
<%@page import="Beans.ProductosBeans"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Dashboard </title>
        
        <%@include file="Partes/Bootstrap.jsp" %> 
        
        <link rel="stylesheet" href="Estilos/Dashboard.css">
        
    </head>
    
    <body>      
        
        <main>    
            <div class="container-fluid">
                <div class="row">
                    <div class="sidebar-container col-2 bg-primary">  
                        
                        <div class="row p-4">   
                            
                            <h3 class="text-light"> Productos </h3>
                            
                            <div class="container p-4">
                                <a href="Dashboard.jsp?boton=Agregar"> <button type="button" class="btn btn-info"> Agregar </button> </a>                                
                            </div>

                            <div class="container p-4"> 
                                <a href="Servlet?operacion=Mostrar"> <button type="button" class="btn btn-info"> Mostrar </button> </a>
                            </div>
                        
                        </div>
                        
                        <div class="row p-4">   
                            
                            <h3 class="text-light"> Clientes </h3>
                            
                            <div class="container p-4">
                                <a href="#"> <button type="button" class="btn btn-info"> Agregar </button> </a>                                
                            </div>

                            <div class="container p-4"> 
                                <a href="#"> <button type="button" class="btn btn-info"> Mostrar </button> </a>
                            </div>
                        
                        </div>
                           
                        <div class="row p-4">   
                            
                            <h3 class="text-light"> Trabajadores </h3>
                            
                            <div class="container p-4">
                                <a href="#"> <button type="button" class="btn btn-info"> Agregar </button> </a>                                
                            </div>

                            <div class="container p-4"> 
                                <a href="#"> <button type="button" class="btn btn-info"> Mostrar </button> </a>
                            </div>
                        
                        </div>
                                              
                    </div>
                    
                    <div class="col-10 border">
                        
                         
                        <h1 align="center"> Dashboard </h1>
                        
                    <%                            
                        String btn = request.getParameter("boton");

                        try{
                            if(btn.equals("Agregar")){                            
                        %>
                           
                            <div class="container">
                                <div class="row p-4">  

                                    <h2 align="center"> Agregar Productos </h2>

                                    <form action="Servlet" class="form-control">
                                        
                                        <input type="hidden" name="operacion" value="Agregar">
                                        
                                        <input type="hidden" name="opcion" value="Producto">
                                        
                                        <table class="table">

                                            <tr>
                                                <td> Nombre: </td>
                                                <td> <input class="form-control" type="text" name="txtNom"> </td>
                                            </tr>

                                            <tr>
                                                <td> Descripción: </td>
                                                <td> <input class="form-control" type="text" name="txtDescrp"> </td>
                                            </tr>

                                            <tr>
                                                <td> Marca: </td>
                                                <td> 
                                                    <select class="form-select" name="slcMarca">
                                                        <option selected> Seleccione la marca del producto </option>
                                                        <option value=1> Bestway </option>
                                                        <option value=2> Step 2 </option>
                                                    </select>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td> Stock: </td>
                                                <td> <input class="form-control" type="number" min="0" name="numStock"> </td>
                                            </tr>

                                            <tr>
                                                <td> Precio: </td>
                                                <td> <input class="form-control" type="number" step="0.01" min="0" name="numPrecio"> </td>
                                            </tr>

                                            <tr>
                                                <td> Categoría </td>
                                                <td> 
                                                    <select class="form-select" name="slcCategoria">
                                                            <option selected> Seleccione la categoría del producto </option>
                                                            <option value=1> Bebés </option>
                                                            <option value=2> Niñas </option>
                                                            <option value=3> Niños </option>
                                                    </select>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td> Descuento: </td>
                                                <td> <input class="form-control" type="number" step="0.01" min="0" value="0" name="numDesc"> </td>
                                            </tr>

                                            <tr>
                                                <td colspan="2"> <input type="submit" value="Agregar Producto" class="form-control btn btn-primary"> </td>                        
                                            </tr> 
                                        </table>

                                    </form>

                                </div>

                            </div>
                                    
                                    
                    <%
                            }else if(btn.equals("Mostrar")){

                                ArrayList<ProductosBeans> lista = (ArrayList<ProductosBeans>)request.getAttribute("lista");
                        %>
                        
                                    <table class="table">
                                        <tr> 
                                            <th> Código </th>
                                            <th> Nombre </th>
                                            <th> Descripción </th>
                                            <th> Marca </th>
                                            <th> Stock </th>
                                            <th> Precio </th>
                                            <th> Categoria </th>
                                            <th> Descuento </th>
                                            <th> EDITAR </th>
                                            <th> ELIMINAR </th>
                                        </tr>
                            
                    <%
                                for(int i = 0; i < lista.size(); i++){

                                    ProductosBeans prod = lista.get(i);
                        %>

                                    
                                        <tr>
                                            <td> <%= prod.getCod() %> </td>
                                            <td> <%= prod.getNom() %> </td>
                                            <td> <%= prod.getDescrp() %> </td>
                                            <td> <%= prod.getMarca() %> </td>
                                            <td> <%= prod.getStock() %> </td>
                                            <td> <%= prod.getPrecio() %> </td>
                                            <td> <%= prod.getCategoria() %> </td>
                                            <td> <%= prod.getDesc() %> </td>
                                            <td>
                                                <a href="Servlet?operacion=Editar&cod=<%= prod.getCod() %>"> 
                                                    <i class='bx bxs-pencil bx-sm bx-tada-hover' style='color:#32af3e'  ></i>                               
                                                </a>
                                            </td>
                                            <td> 
                                                <a href="ServletCRUD?op=Eliminar&cod=<%= prod.getCod() %>">
                                                    <i class='bx bxs-trash bx-sm bx-flashing-hover' style='color:#7b0000'  ></i>
                                                </a>
                                            </td>

                                        </tr>
                                    
                    <%
                                }

                        %>
                        
                                    </table>
                        
                    <%
                            }
                        }catch(Exception e){
                            System.out.println("Error:" + e);
                        }
                        %>
                        
                    </div>
                    
                </div>
                
                
            </div>
            
            
        </main>
        
    </body>
</html>
