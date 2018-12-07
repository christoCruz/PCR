<%-- 
    Document   : productos
    Created on : 12-06-2018, 02:48:04 PM
    Author     : Curacao
--%>


<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="funciones.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="section section-our-clients-freebie">
        <div class="container">
            <div class="title-area">
                <h5 class="subtitle text-gray">Conoce nuestros:</h5>
                <h2>Productos</h2>
                <div class="separator separator-info">****</div>
            </div>
<!-- estos son va? si ahi va el texto por imagen-->
            <ul class="nav nav-text" role="tablist">
                <li class="active">
                    <a href="#testimonial1" role="tab" data-toggle="tab">
                        <div class="image-clients">
                            <img alt="..." class="img-circle" src="prncipal/assets/img/faces/face_5.jpg"/>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#testimonial2" role="tab" data-toggle="tab">
                        <div class="image-clients">
                            <img alt="..." class="img-circle" src="prncipal/assets/img/faces/face_6.jpg"/>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#testimonial3" role="tab" data-toggle="tab">
                        <div class="image-clients">
                            <img alt="..." class="img-circle" src="prncipal/assets/img/faces/face_2.jpg"/>
                        </div>
                    </a>
                </li>
                <% /*
                   DB.getConncetion();
                   ResultSet resultados = DB.getUsuarios();
                   int n=3;
                   while(resultados.next()){
                       n++;
                       out.println("<li> <a href='#testimonial"+n+"' role='tab' data-toggle='tab'> <div class='image-clients'> "+
                               "<img alt='...' class='img-circle' src='prncipal/assets/img/faces/face_2.jpg'/> </div> </a> </li>");
                   }
                   DB.cerrarConexion();*/
                %>
                
            </ul>


            <div class="tab-content">
                <div class="tab-pane active" id="testimonial1">
                    <p class="description">
                        And I used a period because contrary to popular belief I strongly dislike exclamation points! We no longer have to be scared of the truth feels good to be home In Roman times the artist would contemplate proportions and colors. Now there is only one important color... Green I even had the pink polo I thought I was Kanye I promise I will never let the people down. I want a better life for all!
                    </p>
                </div>
                <div class="tab-pane" id="testimonial2">
                    <p class="description">Green I even had the pink polo I thought I was Kanye I promise I will never let the people down. I want a better life for all! And I used a period because contrary to popular belief I strongly dislike exclamation points! We no longer have to be scared of the truth feels good to be home In Roman times the artist would contemplate proportions and colors. Now there is only one important color...
                    </p>
                </div>
                <div class="tab-pane" id="testimonial3">
                    <p class="description"> I used a period because contrary to popular belief I strongly dislike exclamation points! We no longer have to be scared of the truth feels good to be home In Roman times the artist would contemplate proportions and colors. The 'Gaia' team did a great work while we were collaborating. They provided a vision that was in deep connection with our needs and helped us achieve our goals.
                    </p>
                </div>
                <%/*
                   DB.getConncetion();
                  ResultSet resultados = DB.getUsuarios();
                  int n=3;
                  out.println(resultados.getFetchSize());*/
                  /*try{
                      System.out.println(resultados.getFetchSize());
                  
                  }catch(SQLException e){
                      System.out.println(e);
                  }
                  
                   /*while(resultados.next()){
                       n++;
                       out.println("<div class='tab-pane' id='testimonial"+n+"'><p class='description'>"+resultados.getString("nombre")+
                       "</p><p class='description'>"+resultados.getString("descripcion")+"</p><p class='description'>"+resultados.getFloat("precio")+"</p></div>");
                       
                   }*/
                   //DB.cerrarConexion();
                   
                
                %>
            </div>

        </div>
    </div>


    <div class="section section-small section-get-started">
        <div class="parallax filter">
            <div class="image"
                style="background-image: url('prncipal/assets/img/office-1.jpeg')">
            </div>
            <div class="container">
                <div class="title-area">
                    <h2 class="text-white">Contactanos</h2>
                    <div class="separator line-separator">***</div>
                    <p class="description">Si tienes duda, preguntas o quieres conocer sobre algo llena la siguiente informacion y contactanos</p>
                </div>
                <form action="prncipal/componentes/correo.jsp" method="POST">
                           <div class="row">
                               <div class="col">
                                   <label for="corre">Correo</label>
                                   <input type="text" name="direccion" class="form-control"  placeholder="Ingresa tu correo aqui"   >
                               </div>
                                <label for="nom">Nombre</label>
                                 <div class="col">
                                 <input type="text" name="nombre" class="form-control" placeholder="Ingresa tu nombre aqui" >
                              </div>
                                
                           </div>
                    <input type="submit" value="enviar">
                           
                 </form>
                <div class="button-get-started">
                    <a href="#gaia" class="btn btn-danger btn-fill btn-lg">Contactar</a>
                    
                </div>
            </div>
        </div>
    </div>

