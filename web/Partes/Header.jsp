<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <%@ include file="Bootstrap.jsp" %>  
    
    <header>
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
            <div class="container-fluid">

                <a class="navbar-brand" href="index.jsp"> <image class="logo" src="img/LittleLions.png" alt="Little Lions"> </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"> </span>
                </button>

                <div class="collapse navbar-collapse" id="navbarScroll">
                    
                    <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.jsp">
                                Inicio </a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="Servlet?operacion=Consultar&opcion=Generales">
                                Productos </a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link active dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Marcas </a>

                            <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                                <li>                                 
                                    <a class="dropdown-item" href="Servlet?operacion=Consultar&opcion=Bestway"> Bestway </a>
                                </li>

                                <li>
                                    <hr class="dropdown-divider">
                                </li>

                                <li>
                                    <a class="dropdown-item" href="Servlet?operacion=Consultar&opcion=Step2"> Step2 </a>
                                </li>   
                            </ul>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link active dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Categoria </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                                <li>                                 
                                    <a class="dropdown-item" href="Servlet?operacion=Consultar&opcion=Bebes"> Bebés </a>
                                </li>

                                <li>
                                    <hr class="dropdown-divider">
                                </li>

                                <li>
                                    <a class="dropdown-item" href="Servlet?operacion=Consultar&opcion=Ninos"> Niños </a>
                                </li>

                                <li>
                                    <hr class="dropdown-divider">
                                </li>

                                <li>
                                    <a class="dropdown-item" href="Servlet?operacion=Consultar&opcion=Ninas"> Niñas </a>
                                </li>    
                            </ul>
                        </li>
                    </ul>

                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Búsqueda" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Buscar</button>
                    </form>
                </div>
                
                <div class="d-flex p-4 w-5">
                    <a href="Dashboard.jsp"> <img src="img/Iconos/login.png" class="img-fluid float-right" style="height: 2.5rem;" alt="Login"> </a>                            
                </div>
                
            </div>
        </nav>        
    </header>
</html>
