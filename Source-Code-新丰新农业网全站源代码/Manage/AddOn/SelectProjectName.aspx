﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_SelectProjectName, App_Web_d5whfeq0" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>查询用户</title>
<script>
	function onstr() {
		parent.Dialog.close();
	}

	function setvalue(objname,valuetxt) {
		var mainright = window.top.main_right;
		mainright.frames["main_right_" + parent.nowWindow].document.getElementById(objname).value = valuetxt;
	}
</script>
</head>
<body>
<form id="form1" runat="server">
<table width="100%" cellspacing="1" cellpadding="0" class="border">
	<tr class="tdbg">
		<td align="center" colspan="7" class="title" width="100%">
			客 户 列 表
		</td>
	</tr>
	<tr class="tdbg">
		<td align="center" class="tdbgleft" style="height: 24px; width: 5%; font-weight: bold">
			ID
		</td>
		<td align="center" class="tdbgleft" style="height: 24px; width: 15%; font-weight: bold">
			客户名称
		</td>
		<td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">
			客户类别
		</td>
		<td align="center" class="tdbgleft" style="height: 24px; width: 15%; font-weight: bold">
			客户编号
		</td>
		<td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">
			客户组别
		</td>
		<td align="center" class="tdbgleft" style="height: 24px; width: 15%; font-weight: bold">
			客户来源
		</td>
		<td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">
			操作
		</td>
	</tr>
	<ZL:ExRepeater ID="RPT" runat="server" PagePre="<tr><td colspan='7' class='text-center'><input type='checkbox' id='CheckAll' />" PageEnd="</td></tr>">
		<ItemTemplate>
			<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
				<td align="center" style="height: 24px;">
					<%#Eval("Flow")%>
				</td>
				<td align="center" style="height: 24px;">
					<%#Eval("P_name")%>
				</td>
				<td align="center" style="height: 24px;">
					<%#Eval("Client_Type","{0}")=="1"?"企业":"个人"%>
				</td>
				<td align="center" style="height: 24px;">
					<%#Eval("Code")%>
				</td>
				<td align="center" style="height: 24px;">
					<%#Eval("Client_Group")%>
				</td>
				<td align="center" style="height: 24px;">
					<%#Eval("Client_Source")%>
				</td>
				<td align="center" style="height: 24px;">
					<a href="SelectUserName.aspx?menu=select&id=<%#Eval("Flow") %>">选择</a>
				</td>
			</tr>
		</ItemTemplate>
        <FooterTemplate></FooterTemplate>
	</ZL:ExRepeater>
	
</table>
</form>
</body>
</html>