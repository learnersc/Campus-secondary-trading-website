<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>	
<div id="top">
	<div id="top_left" onclick="window.location.href='page_index.action'"></div>	
	<div id="top_middle">
		<form id="info" name="info" action="page_index.action" method="post" style="width:100%;height:100%">
		<input type="hidden" id="pageNo" name="pageNo" value="${pageNo}"/>
		<input type="hidden" id="paramsGoods.goods_type1" name="paramsGoods.goods_type1" value="${paramsGoods.goods_type1}"/>
		<input type="hidden" id="paramsGoods.goods_type2" name="paramsGoods.goods_type2" value="${paramsGoods.goods_type2}"/>
		<input type="hidden" id="paramsGoods.goods_flag" name="paramsGoods.goods_flag" value="${paramsGoods.goods_flag}"/>
		<div id="top_search1">
			<input type="text" name="paramsGoods.goods_name"  id="big_searchText" value="${paramsGoods.goods_name}" class="inputstyle"/>
			<input type="button" id="big_searchBtn" value="搜 索" class="btnstyle"/>
		</div>	
		<div id="top_search2">
			 <span id="modelFlag" style="color:#858e8f;">
			 	西南交通大学二手交易网站&nbsp;&nbsp;&gt;&nbsp;&nbsp;西南交通大学${paramsGoods.goods_flagDesc}
			 	<s:if test="#attr.paramsGoods.goods_type1!=null && #attr.paramsGoods.goods_type1!=''">
			 	&nbsp;&nbsp;&gt;&nbsp;&nbsp;<s:property value="#attr.paramsGoods.goods_type1"/>
			 	</s:if>
			 	<s:if test="#attr.paramsGoods.goods_type2!=null && #attr.paramsGoods.goods_type2!=''">
			 	&nbsp;&nbsp;&gt;&nbsp;&nbsp;<s:property value="#attr.paramsGoods.goods_type2"/>
			 	</s:if>
			 </span>
		</div>	
		</form>
	</div>	 
	<div id="top_right">
	 	<s:if test="#attr.userFront==null">
		<input type="button"  id="loginInBtnShow" value="登 录" class="btnstyle2"/>
		<input type="button"  id="regBtnShow" value="注 册" class="btnstyle2"/>
		</s:if>
		<s:else>
		<img src="images/avatar1.png" width="55px" style="vertical-align:middle"/>&nbsp;&nbsp;
		<input type="button" id="selfCenterBtn" class="btnstyle" value="<s:property value='#attr.userFront.nick_name'/>"/>
		<input type="button" id="loginOutBtn" class="btnstyle" value="退出网站"/>
		</s:else>
	</div>	 
</div>

<div id="loginField" style="display:none;">
     <div style="float:right;margin-right:0px;line-height:30px"><input id="closeloginField" type="button" value="X" class="btnstyle"/></div>
     <br/>
	 <table class="regTable">
		<tr>
			<td colspan="2"><input type="button" value="用户登录>>" class="btnstyle"/></td>
		</tr>
		<tr>
			<td align="right" width="20%"><span style="color:red">*</span> 用户名：</td>
			<td align="left" width="80%"><input type="text" id="user_name" class="inputstyle" name="user_name"  style="width:200px"/></td>
		</tr>
		<tr>
			<td align="right" width="20%"><span style="color:red">*</span> 密　码：</td>
			<td align="left" width="80%"><input type="password" id="user_pass" class="inputstyle" name="user_pass"  style="width:200px"/></td>
		</tr>
		<tr>
			<td align="center" colspan="2">
				　<input type="button" id="loginInBtn" class="btnstyle" value="登录"/>
			</td>
		</tr>
 	 </table>
		
</div>	

<div id="regField" style="display:none;">
     <div style="float:right;margin-right:0px;line-height:30px"><input id="closeregField" type="button" value="X" class="btnstyle"/></div>
	 <form name="infoReg" id="infoReg" style="width:100%;height:450px" action="LoginRegSystem.action" method="post">
     <input type="hidden" name="params.user_type" id="params.user_type" value="1"/>
	 <table class="regTable">
		<tr>
			<td colspan="2"><input type="button" value="新用户注册>>" class="btnstyle"/></td>
		</tr>
		<tr>
			<td align="right" width="20%"><span style="color:red">*</span> 用户名：</td>
			<td align="left" width="80%"><input type="text" name="params.user_name" id="params.user_name" style="width:200px;" class="inputstyle"/></td>
		</tr>
		<tr>
			<td align="right" width="20%"><span style="color:red">*</span> 密　码：</td>
			<td align="left" width="80%"><input type="password" name="params.user_pass" id="params.user_pass" style="width:200px;" class="inputstyle"/></td>
		</tr>
		<tr>
			<td align="right" width="20%"><span style="color:red">*</span> 确认密码：</td>
			<td align="left" width="80%"><input type="password" name="user_rpass" id="user_rpass" style="width:200px;" class="inputstyle"/></td>
		</tr>
		<tr>
			<td align="right" width="20%"><span style="color:red">*</span> 姓　名：</td>
			<td align="left" width="80%"><input type="text" name="params.real_name" id="params.real_name" style="width:200px;" class="inputstyle"/></td>
		</tr>
		<tr>
			<td align="right" width="20%"><span style="color:red">*</span> 昵　称：</td>
			<td align="left" width="80%"><input type="text" name="params.nick_name" id="params.nick_name" style="width:200px;" class="inputstyle"/></td>
		</tr>
		<tr>
			<td align="right" width="20%">邮　箱：</td>
			<td align="left" width="80%"><input type="text" name="params.user_mail" id="params.user_mail" style="width:200px;" class="inputstyle"/></td>
		</tr>
		<tr>
			<td align="right" width="20%">电　话：</td>
			<td align="left" width="80%"><input type="text" name="params.user_phone" id="params.user_phone" style="width:200px;" class="inputstyle"/></td>
		</tr>
		<tr>
			<td align="center" colspan="2">
				<input type="button" id="regBtn" class="btnstyle" value="提交"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset"  class="btnstyle" value="清空"/>
			</td>
		</tr>
 	 </table>
 	</form>
</div>	

<script type="text/javascript" src="js/login.js"></script>