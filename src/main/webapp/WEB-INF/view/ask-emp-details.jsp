<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>

<body>

<h2> Dear Employee, please enter your details</h2>

<br>
<br>

<form:form action="showDetails" modelAttribute="employee" >

    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br>
    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br>
    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br>
    Department <form:select path="department">
    <form:options items="${employee.departments}"/>
    </form:select>
    <br>
    Witch car do you want?
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br>
    Foreign Languages(s)
    <form:checkboxes path="languages" items="${employee.languageList}"/>
    <br>
    PhoneNumber <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br>
    Email <form:input path="email"/>
    <form:errors path="email"/>
    <br>
    <input type="submit" value="OK">

</form:form>

</body>

</html>