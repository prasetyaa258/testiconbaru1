<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Universitas Maju Terus</title>
    </head>
    
    <style>
        body {background: greenyellow; }
        
          h2 {
                font-family: Arial;
                text-align: center;
                color: #fff;
                padding: 10px;
                border: darkred;
           }
           
           #menubaru {padding:0px 0px 0px 0px;background:white;width:1340px;height:80px;
                        margin:4px;line-height:55px;moz-box-shadow: inset 0 0 5px 5px #888;
                        webkit-box-shadow: inset 0 0 5px 5px#888;
                        box-shadow: inset 0 0 5px 5px #888;}
 

    </style>
    <body>
            <div id="menubaru">
    <td> <center><h1><marquee>Universitas Maju Terus</marquee></h1></center> </td>
             </div>
    <td> <center><h1>FORM</h1></center> </td>
           


    <ul style="list-style-type:none">
       <li> <a href="mahasiswaController?proses=menuutama"><h2>Mahasiswa</h2></a></li>
      <li>  <a href="fakultasController?proses=menuutama"><h2>Fakultas</h2></li>
        <li> <a href="jurusanController?proses=menuutama"><h2>Jurusan</h2></a></li>
      <li>  <a href="matakuliahController?proses=menuutama"><h2>Matakuliah</h2></li>
      <li>  <a href="absensiController?proses=menuutama"><h2>RelasiTable</h2></li>
   
    </ul>
</div>
        </div>


</body>
 <form method="post" action="login.jsp">
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Yet Not Registered!! <a href="reg.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>

</html>
