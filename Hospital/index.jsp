<%@page import="java.util.*" session="true" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="description" content="Ejemplo de HTML5">
	<meta name="keywords" content="HTML5, CSS3, JavaScript">
	<title>Hospital Regional Honorio Delgado</title>
	<script src="funcion.js"></script>
	<link rel="stylesheet" href="misestilos.css">
</head>
<body>
	<div id="agrupar">
		<header id="cabecera">
			<h1>Hospital Regional Honorio Delgado</h1>
		</header>
		<nav id="menu">
			<ul>
				<li ><a href="index.jsp">Inicio</a></li>
				<li ><a href="Citas.jsp">Citas</a></li>
				<li ><a href="Personal.jsp">Personal</a></li>
				<li ><a href="Paciente.jsp">Paciente</a></li>
			</ul>
		</nav>
		<aside id="columna">
			<blockquote ><a href="medico.jsp">Medico</a></blockquote>
			<blockquote ><a href="director.jsp">Director</a></blockquote>
			<blockquote ><a href="enfermera.jsp">Enfermera</a></blockquote>
			<blockquote ><a href="vigilante.jsp">Vigilante</a></blockquote>
			<blockquote ><a href="auxiliador.jsp">Auxiliador</a></blockquote>
			<blockquote ><a href="conductor.jsp">Conductor</a></blockquote>
			<blockquote ><a href="farmaceutio.jsp">Farmaceutico</a></blockquote>
			<blockquote ><a href="limpieza.jsp">P.Limpieza</a></blockquote>
			<blockquote ><a href="recepcionista.jsp">Recepcionista</a></blockquote>
		</aside>
		<section id="seccion">
			<h3>Novedades</h3>
			<article id="salida">
				<p><img src='hospital.jpg' width=700px height=500px ></p>
			</article>
			
		</section>

	</div>
</body>
</html>