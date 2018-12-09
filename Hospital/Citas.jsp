<%@ page import="java.sql.*"%>
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
				<table>
					<caption>Citas del Medico</caption>
					<tr>
						<th>Codigo Diagnostico</th>
						<th>Codigo Medico</th>
						<th>Numero BC</th>
						<th>Codigo Recepcionista</th>
						<th>Fecha</th>
						<th>Tipo</th>
						<th>DNI Persona</th>
						<th>Costo</th>
					</tr>
					<%
						Connection conexion=null;
						String mensaje="";
						String driver = "com.mysql.jdbc.Driver";
						String url = "jdbc:mysql://localhost:3306/hospital?serverTimezone=UTC";
						String tabla_nombre="persona";
						String usuario="root";
						String clave="";
						try{
							Class.forName("com.mysql.jdbc.Driver");
							conexion =DriverManager.getConnection(url,usuario,clave);
							String insert_value ="SELECT * FROM cita;";
							Statement st=conexion.createStatement();
							ResultSet rs=st.executeQuery(insert_value);
							while (rs.next()){
								out.print("<tr><td>"+rs.getObject("CodigoD")+"</td>");
								out.print("<td>"+rs.getObject("CodigoM")+"</td>");
								out.print("<td>"+rs.getObject("NumeroBC")+"</td>");
								out.print("<td>"+rs.getObject("CodigoR")+"</td>");
								out.print("<td>"+rs.getObject("Fecha")+"</td>");
								out.print("<td>"+rs.getObject("Tipo")+"</td>");
								out.print("<td>"+rs.getObject("DNIP")+"</td>");
								out.print("<td>"+rs.getObject("Costo")+"</td></tr>");
								
						}
						conexion.close();

					} catch(Exception ex){
						out.println(ex.toString());
					}

					%>
				</table>
			</article>
		<section >
	</section>
	</center>	
</body>
</html>