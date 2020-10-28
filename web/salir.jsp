<%
            if (request.getSession().getAttribute("usuario_uso") != null) {
                session=request.getSession();
                session.invalidate();
                response.sendRedirect("index.jsp?msg='false'"); 
            } 
%>
