﻿<%@ page language="C#" masterpagefile="~/Manage/I/Default.master" autoeventwireup="true" inherits="Manage_I_Pub_PubManage, App_Web_vs3yclqi" clientidmode="Static" validaterequest="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>互动模块管理</title>
    <style>
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <div>
        <ZL:ExGridView ID="Egv" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="PubID" PageSize="10" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Egv_RowCommand"
            IsHoldState="false" AllowPaging="True" AllowSorting="True" CssClass="table table-striped table-bordered table-hover" 
            EnableTheming="False" EnableModelValidation="True" EmptyDataText="没有互动模块信息" OnRowDataBound="Egv_RowDataBound">
            <Columns>
                <asp:TemplateField HeaderText="选择">
                    <ItemTemplate>
                        <input type="checkbox" name="idchk" value="<%#Eval("PubID") %>" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <a href="ViewPub.aspx?Pubid=<%#Eval("PubID")%>&guang=all"> <%#Eval("Pubid") %></a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="模块名称">
                    <ItemTemplate>
                        <a href="pubinfo.aspx?menu=edit&id=<%#Eval("Pubid")%>"><%#Eval("Pubname") %></a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="模块类型">
                    <ItemTemplate>
                        <%#PubtypeName(Eval("Pubtype", "{0}"))%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="信息类别">
                    <ItemTemplate>
                        <%#GetClassName(Eval("PubClass", "{0}"))%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="模型表名" DataField="PubTableName" />
                <asp:TemplateField HeaderText="调用标签">
                    <ItemTemplate>
                        <%#GetLabel(Eval("PubType"),Eval("PubLoadstr"),Eval("Pubname")) %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="操作">
                    <ItemTemplate>
                        <a href="pubinfo.aspx?menu=edit&id=<%#Eval("Pubid")%>" class="option_style"><i class="fa fa-pencil" title="修改"></i></a>
                        <a href="Pubsinfo.aspx?Pubid=<%#Eval("PubID")%>&type=0" class="option_style"><i class="fa fa-magic" title="管理"></i>管理</a>
                        <a href="pubinfo.aspx?menu=copy&id=<%#Eval("Pubid")%>" onclick="return confirm('确实要复制吗?');" class="option_style"><i class="fa fa-copy" title="复制"></i>复制</a>
                        <a href="pubinfo.aspx?menu=delete&id=<%#Eval("Pubid")%>" onclick="return confirm('确实要放入存档吗?存档后该模块可以在存档管理中恢复!');" class="option_style"><i class="fa fa-save" title="存档"></i>存档</a>
                        <asp:LinkButton runat="server" CssClass="option_style" OnClientClick="return confirm('是否删除该项!')" CommandName="Del" CommandArgument='<%#Eval("PubID") %>'><i class="glyphicon glyphicon-trash"></i>删除</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle HorizontalAlign="Center"  />
		    <RowStyle HorizontalAlign="Center" />
        </ZL:ExGridView>
        <asp:Button ID="Dels_Btn" runat="server" CssClass="btn btn-primary" OnClientClick="return confirm('是否删除该项!')" OnClick="Dels_Btn_Click" Text="批量删除" />
    </div>
    <script type="text/javascript" src="/JS/ICMS/ZL_Common.js"></script>
    <script>
        HideColumn('1,3', "", 'Egv');
    </script>
</asp:Content>
