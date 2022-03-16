<%--
  Created by IntelliJ IDEA.
  User: xiaohan
  Date: 3/14/22
  Time: 11:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>


<jsp:include page="header.jspf"/>

<div id="wrapper" style="width: 99%;">
    <jsp:include page="/toc.jspf"/>
    <td valign="top" colspan="3" class="bb">
        <div class="fl" style="width: 99%;">

            <h1>Create an account</h1>

            <!-- To get the latest admin login, please contact SiteOps at 415-555-6159 -->


            <div class="error-msg">
                <b></b>
                <%
                String SignUpError = (String)request.getAttribute("SignUpError");
                if (SignUpError == null) SignUpError = "Please start Signing Up your account";
                %>
                <span class="SignUpError"><%=SignUpError%>></span>
            </div>

            <form action="SignUp" method="post" name="signup" id="signup" onsubmit="return (confirminput(signup));">
                <table>
                    <tr>
                        <td>
                            Username:
                        </td>
                        <td>
                            <input type="text" id="uid" name="uid" value="" style="width: 150px;">
                        </td>
                        <td>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Password:
                        </td>
                        <td>
                            <input type="password" id="passw" name="passw" style="width: 150px;">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Confirm Password:
                        </td>
                        <td>
                            <input type="password" id="cpassw" name="cpassw" style="width: 150px;">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            First Name:
                        </td>
                        <td>
                            <input type="text" id="fn" name="fn" style="width: 150px;">
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Last Name:
                        </td>
                        <td>
                            <input type="text" id="ln" name="ln" style="width: 150px;">
                        </td>
                    </tr>



                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" name="btnSubmit" value="submit">
                        </td>
                    </tr>



                </table>
            </form>

        </div>

        <script type="text/javascript">
            function setfocus() {
                if (document.login.uid.value=="") {
                    document.login.uid.focus();
                } else {
                    document.login.passw.focus();
                }
            }

            function confirminput(myform) {
                if (myform.uid.value.length && myform.passw.value.length) {
                    return (true);
                } else if (!(myform.uid.value.length)) {
                    myform.reset();
                    myform.uid.focus();
                    alert ("You must enter a valid username");
                    return (false);
                } else {
                    myform.passw.focus();
                    alert ("You must enter a valid password");
                    return (false);
                }
            }
            window.onload = setfocus;
        </script>
    </td>
</div>

<jsp:include page="footer.jspf"/>