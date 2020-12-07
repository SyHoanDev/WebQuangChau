<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 09/16/20
  Time: 10:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.io.*,java.util.*" %>
<html>
<head>
    <title>Auto Refresh Header Example</title>
</head>
<body>
<center>
    <h2>Auto Refresh Header Example</h2>
    <%
        // Set refresh, autoload time as 5 seconds
        response.setIntHeader("Refresh", 1);
        // Get current time
        Calendar calendar = new GregorianCalendar();
        String am_pm;
        int hour = calendar.get(Calendar.HOUR);
        int minute = calendar.get(Calendar.MINUTE);
        int second = calendar.get(Calendar.SECOND);
        if(calendar.get(Calendar.AM_PM) == 0)
            am_pm = "AM";
        else
            am_pm = "PM";
        String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
        out.println("Crrent Time: " + CT + "\n");
    %>
</center>
<img src="admin/images/1.png">
<img src="admin/images/2.png">
<img src="admin/images/3.png">
</body>
</html>
