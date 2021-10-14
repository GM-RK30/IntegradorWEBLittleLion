package Servlets;

import Beans.*;
import Utils.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Servlet", urlPatterns = {"/Servlet"})
public class Servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String ope = request.getParameter("operacion");
                
        String opc = request.getParameter("opcion");
        
        System.out.println("Conexión Servlet: " + ope + opc);
        
        
        if(ope.equals("Consultar")){
                        
            if(opc.equals("Generales")){
                                
                try{
                    
                    PreparedStatement psta = ConexionDB.getConexion().prepareStatement("select * from Producto");
                                           
                    ResultSet rs = psta.executeQuery();

                    ArrayList<ProductosBeans> lista = new ArrayList<>();                    
                        
                    while(rs.next()){       
                        ProductosBeans pro = new ProductosBeans(rs.getInt(1),
                                rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getDouble(6), 
                                rs.getString(7), rs.getDouble(8));

                        lista.add(pro);
                    }

                    request.setAttribute("lista", lista);               

                    ConexionDB.getConexion().close();

                    request.getRequestDispatcher("Vistas/Consulta.jsp").forward(request, response);

                }catch(Exception e){
                    System.out.println("Error: " + e);
                }
                
            }else if(opc.equals("Bestway") || opc.equals("Step2")){
                
                try{
                    
                    PreparedStatement psta = ConexionDB.getConexion().prepareStatement("select * from Producto where marca = ?");
                                           
                    psta.setString(1, opc);
                    
                    ResultSet rs = psta.executeQuery();

                    ArrayList<ProductosBeans> lista = new ArrayList<>();

                    while(rs.next()){
                        ProductosBeans pro = new ProductosBeans(rs.getInt(1),
                                rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getDouble(6), 
                                rs.getString(7), rs.getDouble(8));

                        lista.add(pro);
                    }

                    request.setAttribute("lista", lista);               

                    ConexionDB.getConexion().close();

                    request.getRequestDispatcher("Vistas/Consulta.jsp").forward(request, response);

                }catch(Exception e){
                    System.out.println("Error: " + e);
                }
                
            }else if(opc.equals("Bebes") || opc.equals("Ninos") || opc.equals("Ninas")){
                                
                try{
                    
                    PreparedStatement psta = ConexionDB.getConexion().prepareStatement("select * from Producto where categoria = ?");
                                           
                    psta.setString(1, opc);
                    
                    ResultSet rs = psta.executeQuery();
                    
                    ArrayList<ProductosBeans> lista = new ArrayList<>();
                    
                    while(rs.next()){
                        ProductosBeans pro = new ProductosBeans(rs.getInt(1),
                                rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getDouble(6), 
                                rs.getString(7), rs.getDouble(8));

                        lista.add(pro);
                    }

                    request.setAttribute("lista", lista);               

                    ConexionDB.getConexion().close();

                    request.getRequestDispatcher("Vistas/Consulta.jsp").forward(request, response);

                }catch(Exception e){
                    System.out.println("Error: " + e);                
                }
            }
        }else if(ope.equals("Agregar")){
            
            if(opc.equals("Producto")){
                
                System.out.println("Conexión Opcion");
                
                try{
                    
                    System.out.println("Conexión Agregar");
                        
                    String nom = request.getParameter("txtNom");
                    String descrp = request.getParameter("txtDescrp");
                    int marca = Integer.parseInt(request.getParameter("slcMarca"));
                    int stock = Integer.parseInt(request.getParameter("numStock"));
                    double precio = Double.parseDouble(request.getParameter("numPrecio"));
                    int categoria = Integer.parseInt(request.getParameter("slcCategoria"));
                    Double desc = Double.parseDouble(request.getParameter("numDesc"));
                    
                    String marcaR, categoriaR;
                    
                    if(marca == 1){
                        marcaR = "Bestway";
                    }else{
                        marcaR = "Step2";
                    }

                    if(categoria == 1){
                        categoriaR = "Bebés";
                    }else if(categoria == 2){
                        categoriaR = "Niñas";
                    }else{
                        categoriaR = "Niños";
                    }
                        
                    PreparedStatement psta = ConexionDB.getConexion().prepareStatement("insert into producto values(?,?,?,?,?,?,?,?)");
                    
                    psta.setString(1, null);
                    psta.setString(2, nom); 
                    psta.setString(3, descrp); 
                    psta.setString(4, marcaR); 
                    psta.setInt(5, stock);
                    psta.setDouble(6, precio);
                    psta.setString(7, categoriaR);
                    psta.setDouble(8, desc);

                    psta.executeUpdate();

                    ConexionDB.getConexion().close();

                    request.getRequestDispatcher("Dashboard.jsp").forward(request, response);                        
                        
                }catch(Exception e){
                    System.out.println("Error: " + e);
                }  
            }
            
        }else if(ope.equals("Mostrar")){
            
            try{
                PreparedStatement psta = ConexionDB.getConexion().prepareStatement("select * from Producto");
                
                ResultSet rs = psta.executeQuery();
                
                ArrayList<ProductosBeans> lista = new ArrayList<>();
                
                while(rs.next()){
                    
                    ProductosBeans prod = new ProductosBeans(rs.getInt(1), 
                            rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5),  
                            rs.getDouble(6), rs.getString(7), rs.getDouble(8));
                    
                    lista.add(prod);
                }
                
                request.setAttribute("lista", lista);               
                
                ConexionDB.getConexion().close();
                
                request.getRequestDispatcher("Dashboard.jsp?boton=Mostrar").forward(request, response);
                
            }catch(Exception e){
                System.out.println("Error: " + e);
            }
            
        }
            
            
        
        
    }
    
    

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
