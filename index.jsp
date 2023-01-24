<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="rs" dataSource="jdbc/javatest">
select id, language, translation from testdata
</sql:query>

<html>
  <head>
	<link href="css.css" rel="stylesheet" type="text/css"/>
    <title>HelloWorld</title>
  </head>
  <body>
	  <h1>Hello, World!</h1>
	  <h2>3-tier application architecture. By: Jakub Kubala</h2>
	  <div class="octocat-swimming">
		  <img src="octo.png" alt="Octocat Swimming">
	  </div>
<c:forEach items="${rs.rows}" var="row">
    <div class="tab">
        <input type="checkbox" id="tab-${row.language}" name="tab-group-1">
        <label for="tab-${row.language}">${row.language}</label>
        <div class="content">
            ${row.translation}
        </div>
    </div>
</c:forEach>

</body>
</html>

