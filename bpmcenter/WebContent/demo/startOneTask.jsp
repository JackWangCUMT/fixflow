<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>启动任务</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/flowcommand.js"></script>
<script type="text/javascript" src="js/flowautoassemble.js"></script>
<style>
a{text-decoration: none;}
</style>
</head>

<body>
<form id="form1" action="DemoServlet">
<table>
<tr>
<td>
流程关联键：<input type="text" name="businessKey"/>
</td>
</tr>
<tr>
<td>
信息：<input type="text" name="COL2"/>
</td>
</tr>
<tr>
<td>
审批意见：<textarea rows="3" cols="20" name="_taskComment"></textarea>
</td>
</tr>
</table>
<input type="hidden" name="action" value="demoCompleteTask"/>
<c:forEach items="${result.commandList}" var="row" varStatus="status">
<button id="btn_${status.index+1}" 
	commandId="${row.id}" commandName="${row.name}" commandType="${row.type}"
	isAdmin="${row.isAdmin}" isVerification="${row.isVerification}" isSaveData="${row.isSaveData}"
	isSimulationRun="${row.isSimulationRun}" nodeId="${row.nodeId}" nodeName="${row.nodeName}">${row.name}</button>
</c:forEach>
</form>
</body>
</html>