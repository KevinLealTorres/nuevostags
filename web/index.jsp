<%@taglib uri="/WEB-INF/tlds/tags" prefix="ex" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tags personalizados</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="text-center bg-gray-700 text-white">
        <h1 class="text-4xl p-4 font-medium"> ¡Tags personalizados!</h1>
        <ex:welcome/>
        <form action="." method="post" class="grid m-4 *:p-2 border-2 rounded-lg p-5 items-center justify-content">
            <div>
                <label for="entrada" class="text-lg font-medium">Escribe algo:</label>
                <input type="text" id="entrada" name="entrada" placeholder="¡Hola mundo!" class="w-full bg-transparent border-b-2" required />
            </div>
            <input type="submit" value="Hacer mayuscula" class="p-2 bg-green-700 hover:bg-green-800 shadow-lg rounded" />
        </form>
        <h2 class="text-2xl font-medium p-4">Salida:</h2>
        <%request.setAttribute("salida", request.getParameter("entrada"));%>
        <ex:uppercase>${salida}</ex:uppercase>
    </body>
</html>
