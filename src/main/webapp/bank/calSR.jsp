<%--
  Created by IntelliJ IDEA.
  User: xiaohan
  Date: 4/6/22
  Time: 8:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: xiaohan
  Date: 3/31/22
  Time: 10:25 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<jsp:include page="/header.jspf"/>

<div id="wrapper" style="width: 99%;">
    <jsp:include page="membertoc.jspf"/>
    <td valign="top" colspan="3" class="bb">
        <%@page import="com.ibm.security.appscan.altoromutual.model.Account"%>
        <%@ page import="com.ibm.security.appscan.altoromutual.api.YahooAPI" %>
        <div class="fl" style="width: 99%;">

            <%
                com.ibm.security.appscan.altoromutual.model.User user = (com.ibm.security.appscan.altoromutual.model.User)request.getSession().getAttribute("user");
                Account[] accounts = user.getAccounts();

            %>

            <h1>My Portfolio</h1>

            <table border="0">
                <TR valign="top">
                    <td>Sharp Ratio: </td>
                    <%
                        YahooAPI yahooAPI = new YahooAPI();
                        double sp = yahooAPI.calSP(accounts);

                    %>
                    <td width=84><%=sp%></td>

                </tr>

            </table></DIV>
    </td>

    </tr>
    </table>
</div>
</td>
</div>

<jsp:include page="/footer.jspf"/>


