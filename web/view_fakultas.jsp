
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.fakultas_model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body {background: greenyellow ;}
        
    </style>
    <body>
             <strong> <td align="center"><div align="center"><font size="6" color="BLACK" face="Wallpoet" style="text-shadow: 5px 0px 30px red;" > 
    <center><h1>Form Fakultas</h1></center>
    <table style="margin:20px auto;" border="1">
        <center>
            <a class="tambah" href="fakultasController?proses=input-fakultas">Tambah</a>
        </center>

        <tr>

            <th>kode Fakultas</th>
            <th>Nama Fakultas</th>
            <th>Jumlah Fakultas</th>
            <th>Action</th>
        </tr>

        <%
            fakultas_model km = new fakultas_model();
            List<fakultas_model> data = new ArrayList<fakultas_model>();
            String ket = request.getParameter("ket");
            if (ket == null) {
                data = km.tampil();
            }
            for (int x = 0; x < data.size(); x++) {
        %>
        <tr>

            <td><%=data.get(x).getKd_fakultas()%></td>
            <td><%=data.get(x).getNama_fakultas()%></td>
            <td><%=data.get(x).getJumlah_fakultas()%></td>
              <td>
                <a href="fakultasController?proses=edit-fakultas&id=<%=data.get(x).getKd_fakultas()%>">Edit</a>

                <a href="fakultasController?proses=hapus-fakultas&id=<%=data.get(x).getKd_fakultas()%>">Hapus</a>
            </td>
           

        </tr>
        <%}%>

    </table>
</body>
</html>
