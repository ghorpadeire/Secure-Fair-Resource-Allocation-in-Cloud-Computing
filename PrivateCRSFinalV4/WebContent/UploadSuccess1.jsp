<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page import="control.ConnectionManager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
<title>Cloud Resource Sharing</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
</head>
    <body>
     <%
      
        if(request.getParameter("status")!=null){
        out.println("<script>alert('Successfully Uploaded!')</script>");
        }
        
        %>
        <%
        
            String user_id = null;
            if (session.getAttribute("username") != null) {
                user_id = (String) session.getAttribute("username");

        %>
       <div class="main">

		<div class="header">
			<div class="header_resize">
				<div class="logo">
					<h2>
						<a href="index.jsp" class="nobg">Data Resource Sharing for Cloud Brokers in Cloud Environment</a>
					</h2>
				</div>
				<div class="menu_nav">
				<ul>
                        <li><a href="Homepage1.jsp">Home</a></li>
                        <li><a href="Upload1.jsp">Upload File</a></li>
                        <li><a href="logout.jsp">Logout</a></li>
                    </ul>
				<div class="clr"></div>
			</div>
		</div>

		<div class="article">
			<%@include file="WelcomeName.jsp"%>

			<div class="content">
                
                
                <div class="mainbar">
                    <div class="article" style="height:auto">


                        
                        
                        
                      <form class="form1" action="UploadServlet" method="post" enctype="multipart/form-data">
                        <table width="30%" align="center" cellpadding="5" cellspacing="5">    
                            <tr>
                            	<td colspan="3"><h2>Successfully Uploaded</h2></td>
                            </tr>
                           
                            
                           
                            
                        </table>
                        </form>
                               

                    </div>
                    
                    
                </div>
                
                <div class="clr"></div>
            </div>
            <div class="clr"></div>
           
            <div class="footer">
             <%@include file="footer.jsp" %>
       			        
            </div>
        </div>
        
        <%
            } else {
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>