﻿<%@ page language="C#" autoeventwireup="true" inherits="Manage_I_Content_SpecialManage, App_Web_4l5orxfu" masterpagefile="~/Manage/I/Default.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
    <title>专题类别管理</title>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
    <div id="noncate" class="divbox" style="display: none" runat="server"><font color="red">暂时没有专题类别</font></div>
    <div id="catelist" runat="server">
        <table id="EGV" class="table table-striped table-bordered table-hover">
            <tr><td>ID</td><td>专题名称</td><td>专题目录</td><td>专题描述</td><td>添加时间</td><td>操作</td></tr>
        <ZL:Repeater ID="RPT" runat="server">
            <ItemTemplate>
              <tr data-layer="1" data-id='<%#Eval("SpecID") %>' onclick='LoadChilds(this,<%#Eval("SpecID") %>)'>
                  <td><%#Eval("SpecID") %></td>
                  <td><a href='SpecContent.aspx?SpecID=<%#Eval("SpecID") %>'><span class='<%#GetIcon() %>'></span></a> <a href='AddSpec.aspx?Action=Modify&ID=<%# Eval("SpecID")%>&Pid=<%# Eval("Pid")%>'><%#Eval("SpecName") %></a></td>
                  <td><%#Eval("SpecDir") %></td>
                  <td><%#GetDesc() %></td>
                  <td><%#Eval("CDate") %></td>
                  <td>
                       <a href='AddSpec.aspx?Action=Modify&ID=<%# Eval("SpecID")%>&Pid=<%# Eval("Pid")%>' class="option_style"><i class="fa fa-pencil" title="修改"></i></a>
                       <a href='AddSpec.aspx?Action=AddCh&ID=<%# Eval("SpecID")%>' class="option_style"><i class="fa fa-plus" title="添加"></i>子专题</a>
                       <a href='SpecContent.aspx?SpecID=<%#Eval("SpecID") %>' class="option_style"><i class="fa fa-navicon" title="内容"></i>内容</a>
                       <a href='javascript:;' onclick='ShowOrder(<%#Eval("SpecID") %>)' class='option_style' title='排序'><i class='fa fa-list-ol'></i>排序</a>
                       <a href='/Special_<%# Eval("SpecID")%>/Default.aspx' title="前台预览" target="_blank" class="option_style"><%#lang.LF("<i class='fa fa-globe'></i>浏览")%></a>
                       <a href="javascript:;" onclick='DelCofim(<%# Eval("SpecID")%>)' class="option_style"><i class="fa fa-trash-o" title="删除"></i>删除</a>
                  </td>
              </tr>
            </ItemTemplate>
        </ZL:Repeater>
        </table>
    </div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ScriptContent">
    <script type="text/javascript" src="/JS/Controls/ZL_Dialog.js"></script>
    <script type="text/javascript" src="/JS/ICMS/ZL_Common.js"></script>
    <script>    
        var Temp = "<tr data-layer='@layer' data-pid='@pid' data-id='@id' onclick='LoadChilds(this,@id)'><td>@id</td><td>@layerhtml<img src='/Images/TreeLineImages/t.gif'><a href='SpecContent.aspx?SpecID=@id'><span class='@imgicon'></span></a> <a href='AddSpec.aspx?Action=Modify&ID=@id&Pid=@pid'>@SpecName</a></td><td>@SpecDir</td><td>@SpecDesc</td><td>@CDate</td><td><a href='AddSpec.aspx?Action=Modify&ID=@id&Pid=@pid' class='option_style'><i class='fa fa-pencil' title='修改'></i></a> <a href='AddSpec.aspx?Action=AddCh&ID=@id' class='option_style'><i class='fa fa-plus' title='添加'></i>子专题</a> <a href='SpecContent.aspx?SpecID=@id' class='option_style'><i class='fa fa-navicon' title='内容'></i>内容</a> <a href='javascript:;' onclick='ShowOrder(@id)' class='option_style' title='排序'><i class='fa fa-list-ol'></i>排序</a> <a title='前台预览' href='/Special_@id/Default.aspx' target='_blank' class='option_style'><i class='fa fa-globe'></i>浏览</a> <a href='javascript:;' onclick='DelCofim(@id)' class='option_style'><i class='fa fa-trash-o' title='删除'></i>删除</a></td></tr>";
        var layerTemp = "<img src='/Images/TreeLineImages/tree_line4.gif' />";
        function LoadChilds(obj,id) {
            $.ajax({
                type: "Post",
                //url: "Guest",
                data: { action: "GetChild", value: id },
                success: function (data) {
                    if (data != "" && data != "[]") {
                        data = JSON.parse(data);
                        var html = ReplaceTlp(Temp, $(obj).data("layer"), data);
                        obj.onclick = "";
                        $(obj).after(html);
                        BindEvent(obj);
                    }
                },
                error: function (data) {
                }
            });
        }
        function DelCofim(id) {
            if(confirm("是否确定删除!"))
            $.ajax({
                type: "Post",
                //url: "Guest",
                data: { action: "Del", value: id },
                success: function (data) {
                    if (data =="1") {
                        window.location = location;
                    }
                },
                error: function (data) {
                }
            });
        }
        function ReplaceTlp(Temp, layer, data) {
            var layerhtml = ""; var html = "";
            for (var i = 0; i < layer; i++) {
                layerhtml += layerTemp;
            }
            Temp = Temp.replace(/@layerhtml/g, layerhtml).replace(/@layer/g, ++layer);
            for (var i = 0; i < data.length; i++) {
                html += Temp.replace(/@id/g, data[i].SpecID).replace(/@pid/g, data[i].Pid).replace(/@SpecName/g, data[i].SpecName).replace(/@SpecDir/g, data[i].SpecDir).replace(/@SpecDesc/g, data[i].SpecDesc).replace(/@CDate/g,data[i].CDate).replace(/@imgicon/g, data[i].ChildCount > 0 ? "glyphicon glyphicon-folder-close" : "glyphicon glyphicon-file");
            }
            return html;
        }
        function BindEvent(obj) {
            $(obj).unbind('click');
            $(obj).find(".glyphicon-folder-close").attr("class", "glyphicon glyphicon-folder-open");
            $(obj).dblclick(function () {
                var pid = $(this).data("id");
                if ($("#EGV tr[data-pid=" + pid + "]").is(":visible")) {
                    HideTr(pid);
                    $(this).find(".glyphicon-folder-open").attr("class", "glyphicon glyphicon-folder-close");
                } else {
                    $("#EGV").find("[data-pid=" + $(this).data("id") + "]").show();
                    $(this).find(".glyphicon-folder-close").attr("class", "glyphicon glyphicon-folder-open");
                }
            });
        }
        function HideTr(pid) {
            if ($("#EGV tr[data-pid=" + pid + "]").length < 1) return;
            $("#EGV tr[data-pid=" + pid + "]").each(function (i, v) {
                HideTr($(v).data("id"));
            });
            $("#EGV tr[data-pid=" + pid + "]").find(".glyphicon-folder-open").attr("class", "glyphicon glyphicon-folder-close");
            $("#EGV tr[data-pid=" + pid + "]").hide();
        }
        function ShowOrder(pid) {
            ShowComDiag("SetSpecOrder.aspx?pid=" + pid, "排序管理");
        }
    </script>
</asp:Content>
