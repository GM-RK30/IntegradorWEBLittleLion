<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
            
        <title> Little Lions </title>  

        <link href="Estilos/Estilo.css" rel="stylesheet" type="text/css"/>

    </head>
    
    <body>      
        
        <header>   

            <%@ include file="Partes/Header.jsp" %>

        </header>

        <main>   

            <!-- Carrousel Destacados -->
            
            <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">

                <h1 align="center">¡Todo lo que tu hijo desea!</h1>

                <div class="carousel-inner">    


                    <div class="carousel-item active">
                        <img src="img/ima1.jpg" class="rounded mx-auto d-block" alt="..." style="height: 300px">
                    </div>

                    <div class="carousel-item">
                        <img src="img/ima2.jpg" class="rounded mx-auto d-block" alt="..." style="height: 300px">
                    </div>

                    <div class="carousel-item">
                        <img src="img/ima3.jpg" class="rounded mx-auto d-block" alt="..." style="height: 300px">
                    </div>        
                </div>    

                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>

                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>    

            <!-- Cards Los Más Vendidos -->
            
            <div class="container masVendidos">

                <h2 align="center"> Lo Más Vendido </h2>

                <div class="row">
                    
                    <div class="col">
                        <div class="card h-100" style="width: 15rem;">
                            <img src="img/Productos/1.png" class="card-img-top h-50" alt="...">
                            <div class="card-body h-50">
                                <p style="text-align: center"> Mercedes Benz </p> 
                                <hr>
                                <p class="card-text"> Vehículo eléctrico</p>
                                <p> Edad: 2 - 5 años </p>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="card h-100" style="width: 15rem;">
                            <img src="img/Productos/7.png" class="card-img-top h-50" alt="...">
                            <div class="card-body h-50">
                                <p style="text-align: center"> Juego Modular </p> 
                                <hr>
                                <p class="card-text"> Cuenta con diversas partes para tener horas de diversión </p>
                                <p> Medidas: 1.8m * 1.8m * 3.1m </p>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="card h-100" style="width: 15rem;">
                            <img src="img/Productos/2.png" class="card-img-top h-50" alt="...">
                            <div class="card-body h-50">
                                <p style="text-align: center"> Mercedes Benz </p> 
                                <hr>
                                <p class="card-text"> Vehículo eléctrico </p>
                                <p> Edad: 2 - 5 años </p>
                            </div>
                        </div>
                    </div>            

                    <div class="col">
                        <div class="card h-100" style="width: 15rem">
                        <img src="img/Productos/9.png" class="card-img-top h-50" alt="...">
                            <div class="card-body h-50">
                                <p style="text-align: center"> Túnel - Gusano </p> 
                                <hr>
                                <p class="card-text"> Juego Motriz </p>
                                <p> Edad: 1 - 4 años </p>
                            </div>
                        </div>
                    </div>        
                </div>    
            </div>

            <!-- Imagenes Marcas -->
            

            <div class="container">                   
                
                <h3 align="center">Nuestras Marcas</h3>
                
                <div class="row">
                    <div class="col">
                        <div class="card border-0 h-100">
                            <img src="img/Marcas/Bestway.png" class="card-img-top mx-auto d-block" alt="...">  
                        </div>
                    </div>

                    <div class="col">
                        <div class="card border-0 w-50">
                            <img src="img/Marcas/Step2.png" style="align-items: center" class="card-img-top mx-auto d-block" alt="...">
                        </div>            
                    </div>
                </div>
            </div>     
        </main>
 
            
        <footer>                

            <%@ include file="Partes/Footer.jsp" %>

        </footer>

              
    </body>  
</html>
