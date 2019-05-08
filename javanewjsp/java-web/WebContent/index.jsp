<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Formulario</title>
	<style type="text/css">
		#titulo {
			margin: 0px 250px;
		}

		#formulario {
		    width: 250px;
		    position: absolute;
		    top: 50%;
		    left: 50%;
		    margin: -184px 0px 0px -155px;
		    background: rgba(0, 0, 0, 0.2);
		    padding: 20px 30px;
		    border-radius: 50px;
		    box-shadow: 0px 1px 0px rgba(0, 0, 0, 0.3), inset 0px 1px 0px rgba(255, 255, 255, 0.07)
		}
		
		body {
		    background-image: url(https://wallpaperstock.net/wallpapers/thumbs1/41609wide.jpg);
		    color: yellow;
		    text-shadow: 4px 10px 10px yellow;
		}
		
		#Nombre,
		#Apellido,
		#telefono,
		#edad,
		#pass,
		#email,
		#departamentos,
		#comentarios {
		    background-color: transparent;
		}
		
		#Nombre,
		#Apellido,
		#telefono,
		#edad,
		#pass,
		#email {
		    width: 250px;
		    position: center;
		}
		
		input[type=submit] {
		    font-size: 20px;
		    padding: 0px 10px;
		    margin: 10px 80px;
		    background-color: #AF3E1A;
		    text-align: center;
		}
        </style>
</head>
<body>
	<header id="titulo">Formulario</header>
	<%out.print("Hola mundo desde JSP"); %>
	<a href="Servlet?var1=2&var2=3">creacion de peticion de tipo get</a>
	<form method="post" action="Servlet" name="formulario" id="formulario" onsubmit="return validar();"><br>
            Nombre: <input type="text" name="Nombre" id="Nombre" value="${nom}"><br>
           
            Apellido: <input type="text" name="Apellido" id="Apellido"><br>
            
            Telefono: <input type="tel" size="9" maxlength="9" name="telefono" id="telefono"><br>
            
            Edad:<input type="number" name="edad" id="edad" value="${edad}"><br>
            
            Contraseña: <input type="password" name="pass" id="pass" maxlength="6" size="6"><br>
            
            email: <input type="text" name="email" id="email"><br>

            <div id="genero">genero:<br>
                <input type="radio" name="sexo" id="sexo" value="Hombre">Hombre<br>
                <input type="radio" name="sexo" id="sexo" value="Mujer">Mujer<br>
            </div>
            <label name="departament">DEPARTAMENTOS: </label>
            <select id="departamentos" name="departamento" size="1">
                <option value="null"></option>
                <option value="Amazonas">Amazonas</option>
                <option value="Anchash">Anchash</option>
                <option value="Apurimac">Apurimac</option>
                <option value="Arequipa">Arequipa</option>
                <option value="Ayacucho">Ayacucho</option>
                <option value="Cajamarca">Cajamarca</option>
                <option value="Callao">Callao</option>
                <option value="Cusco">Cusco</option>
                <option value="Huancavelica">Huancavelica</option>
                <option value="Ica">Ica</option>
                <option value="Junin">Junin</option>
                <option value="Libertad">La Libertad</option>
                <option value="Lambayeque">Lambayeque</option>
                <option value="Lima">Lima</option>
                <option value="Loreto">Loreto</option>
                <option value="MDios">Madre de Dios</option>
                <option value="Moquegua">Moquegua</option>
                <option value="Pasco">Pasco</option>
                <option value="Piura">Piura</option>
                <option value="SanMartin">San Martin</option>
                <option value="Tacna">Tacna</option>
                <option value="Tumbes">Tumbes</option>
                <option value="Ucayali">Ucayali</option>
                <option value="Default">Elija su ciudad...</option>


            </select>
            <br>

            <!--<input type="button" value="cerrar" onclick="window.close();"><br>-->
            <br>
            <div>
                Opcional:
                <textarea name="comentarios" id="comentarios" rows="5" cols="30">--ingrese su comentario--</textarea>
            </div>
            <input type="reset"><br>
            <input type="submit" value="Enviar">
            <div>${requestScope.validaciones}</div>
        </form>
        <%--<script>
        	function validar() {
			var nombre, apellido, telefono, edad, contraseña, correo, notific;
    		nombre = document.getElementById("Nombre").value;
   			apellido = document.getElementById("Apellido").value;
    		telefono = document.getElementById("telefono").value;
    		old = document.getElementById("edad").value;
    		contraseña = document.getElementById("pass").value;
    		correo = document.getElementById("email").value;
    		indice = document.getElementById("departamentos").selectedIndex;
    		docecorreo = /\w+@\w+\.+[a-z]/;

    		if (nombre == "" || apellido == "" || telefono == "" || edad == "" || contraseña == "" || email == "") {
        		alert("falta el completar!!");
       		 	return false;
			    } else if (nombre.length > 30 || apellido.length > 30) {
			        alert("el nombre y el apellido son extensos");
			        return false;
			    } else if (correo.length > 30) {
			        alert("el correo es muy largo");
			        return false;
			    } else if (isNaN(telefono)) {
			        alert("ingrese solo digitos por favor");
			        return false;
			    } else if (old.length > 200) {
			        alert("edad inadecuada");
			        return false;
			    } else if (!docecorreo.test(correo)) {
			        alert("email incorrecto");
			        return false;
			        /*else if (!gen.checked) {
			         *alert("escoja su genero")
			         *return false;*/
			    } else if (indice == null || indice == 0) {
			        alert("escoja su departamento");
			        return false;
		    	}
		    	return true;
			}

			function nomyape(numero) {
			    if ((/^([0-9])*$/).test(numero)) {
			        alert("no es adecuado colocar un numero")
			        return false;
			    }
			    return true;
			}
        </script>--%>
        
        
</body>
</html>