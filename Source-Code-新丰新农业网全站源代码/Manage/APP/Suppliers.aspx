<%@ page language="C#" autoeventwireup="true" inherits="manage_APP_Suppliers, App_Web_22qzxc5q" enableviewstatemac="false" masterpagefile="~/Manage/I/Default.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    <title>APP配置</title>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#app" aria-controls="app" role="tab" data-toggle="tab">社会化登录</a></li>
        <li role="presentation"><a href="#other" aria-controls="other" role="tab" data-toggle="tab">其它配置</a></li>
    </ul>
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="app">
            <table class="table table-striped table-bordered table-hover">
                <tr>
                    <td align="center" colspan="2">
                        <asp:Literal ID="LTitle" runat="server" Text="App社会化登录"></asp:Literal></td>
                </tr>
                <tr>
                    <td colspan="2">默认回调地址：
                <asp:Label ID="callback" ForeColor="Green" Text="text" runat="server" /></td>
                </tr>
                <tr>
                    <td style="width: 17%">
                        <input type="checkbox" id="CkSina" value="" runat="server" />
                        <label for="CkSina">
                            <img style="cursor: pointer;" src="/App_Themes/Admin/Sina_2.png" /></label></td>
                    <td>
                        <asp:Button ID="Button5" class="btn btn-primary" runat="server" Text="配置" OnClick="Button5_Click" />
                        <span id="Span1" style="display: none">
                            <span>App Key：</span>
                            <input id="ASina" type="text" class="Cksele" value="" runat="server" style="width: 240px" />
                            <span>App Secret：</span>
                            <input id="SSina" type="text" class="Cksele" value="" runat="server" style="width: 240px" />
                            <span>回调地址：</span>
                            <input id="SSinaURL" type="text" class="Cksele" value="" runat="server" style="width: 350px;" />
                        </span>
                    </td>
                </tr>
                <tr>
                    <td style="width: 17%">
                        <input type="checkbox" id="CkQQ" runat="server" />
                        <label for="CkQQ">
                            <img style="cursor: pointer;" src="/App_Themes/Admin/QQ_2.png" /></label></td>
                    <td>
                        <asp:Button ID="Button6" class="btn btn-primary" runat="server" Text="配置" OnClick="Button6_Click" />
                        <span id="Span2" style="display: none">
                            <span>App Key：</span>
                            <input id="AQQ" type="text" class="Cksele" value="" runat="server" style="width: 240px" />
                            <span>App ID：</span>
                            <input id="AQQID" type="text" class="Cksele" value="" runat="server" style="margin-left: 20px; width: 240px" />
                            <span>回调地址：</span>
                            <input id="AQQURL" type="text" class="Cksele" value="" runat="server" style="width: 350px;" />
                            <%--&nbsp;&nbsp;<span >App Secret：</span>
                <input id="SQQ" type="text" class="Cksele" value="" runat="server" />--%>
                        </span></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" id="CkBaidu" value="" runat="server" />
                        <label for="CkBaidu">
                            <img style="cursor: pointer;" src="/App_Themes/Admin/Baidu_2.png" /></label></td>
                    <td>
                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="配置" OnClick="Button1_Click" />
                        <span id="CkBaidu_1" style="display: none"><span>App Key：</span>
                            <input id="ABaidu" type="text" class="Cksele" value="" runat="server" style="width: 240px" />
                            <span>App Secret：</span>
                            <input id="SBaidu" type="text" class="Cksele" value="" runat="server" style="width: 240px" />
                            <span>回调地址：</span>
                            <input id="UBaidu" type="text" class="Cksele" value="" runat="server" style="width: 350px;" />
                        </span></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" id="CkKaixin" value="" runat="server" />
                        <label for="CkKaixin">
                            <img style="cursor: pointer;" src="/App_Themes/Admin/Kaixin_2.png" /></label></td>
                    <td>
                        <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="配置"
                            OnClick="Button2_Click" />
                        <span id="CkKaixin_1" style="display: none">
                            <span>App Key：</span>
                            <input id="AKaixin" type="text" class="Cksele" value="" runat="server" style="width: 240px" />
                            <span>App Secret：</span>
                            <input id="SKaixin" type="text" class="Cksele" value="" runat="server" style="width: 240px" />
                            <span>回调地址：</span>
                            <input id="SKaixiuUrl" type="text" class="Cksele" value="" runat="server" style="width: 350px;" />
                        </span></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" id="CkRenren" value="" runat="server" />
                        <label for="CkRenren">
                            <img style="cursor: pointer;" src="/App_Themes/Admin/Renren_2.png" /></label></td>
                    <td>
                        <asp:Button ID="Button3" class="btn btn-primary" runat="server" Text="配置"
                            OnClick="Button3_Click" />
                        <span id="CkRenren_1" style="display: none"><span>App Key：</span>
                            <input id="ARenren" type="text" class="Cksele" value="" runat="server" style="width: 240px" />
                            <span>App Secret：</span>
                            <input id="SRenren" type="text" class="Cksele" value="" runat="server" style="width: 240px" />
                            <span>回调地址：</span>
                            <input id="URenren" type="text" class="Cksele" value="" runat="server" style="width: 350px;" />
                        </span></td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" id="CkNetease" value="" runat="server" />
                        <label for="CkNetease">
                            <img style="cursor: pointer;" src="/App_Themes/Admin/Netease_2.png" /></label></td>
                    <td>
                        <asp:Button ID="Button4" class="btn btn-primary" runat="server" Text="配置"
                            OnClick="Button4_Click" />
                        <span id="CkNetease_1" style="display: none">
                            <span>App Key：</span>
                            <input id="ANetease" type="text" class="Cksele" value="" runat="server" style="width: 240px" />
                            <span>App Secret：</span>
                            <input id="SNetease" type="text" class="Cksele" value="" runat="server" style="width: 240px" />
                            <span>回调地址：</span>
                            <input id="NeteaseUrl" type="text" class="Cksele" value="" runat="server" style="width: 350px;" />
                        </span></td>
                </tr>
                <tr style="display: none;">
                    <td>
                        <input type="checkbox" id="CkSohuChat" runat="server" checked="checked" />
                        <label for="CkChat">
                            <img style="cursor: pointer;" src="/App_Themes/Admin/Netease_2.png" /></label></td>
                    <td>
                        <asp:Button ID="sohuChatBtn" class="btn btn-primary" runat="server" Text="配置" OnClick="sohuChatBtn_Click" />
                        <span id="Span3" style="display: none">
                            <span>App_ID：</span><input id="chat_AppIDT" type="text" class="Cksele" value="" runat="server" style="width: 240px" />
                            <span>App_Key：</span><input id="chat_AppKeyT" type="text" class="Cksele" value="" runat="server" style="width: 240px" /></span></td>
                </tr>
            </table>
        </div>
        <div role="tabpanel" class="tab-pane" id="other">
            <table class="table table-striped table-bordered table-hover">
                <tr>
                    <td class="td_m" style="line-height:30px;"> 百度翻译</td>
                    <td>
                        <asp:Button ID="BaiduKey_Btn" Text="配置" runat="server" CssClass="btn btn-primary" OnClick="BaiduKey_Btn_Click" />
                        <span style="display: none;">
                            <span>Key:</span>
                            <asp:TextBox ID="BaiduKey_T" runat="server" CssClass="form-control text_300"></asp:TextBox> <a href="http://developer.baidu.com/console#app/project" target="_blank">申请百度key</a>
                        </span>
                    </td>
                </tr>
            </table>
        </div>

    </div>

    <table class="table table-striped table-bordered table-hover">
        <tr>
            <td align="left" style="height: 39px">
                <input type="checkbox" id="chkAll" />全选  
                <asp:Button ID="KeyTj" runat="server" class="btn btn-primary" Text="提交" OnClick="KeyTj_Click" /></td>
        </tr>
    </table>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ScriptContent">
    <script type="text/javascript">
        $().ready(function () {
            $("#chkAll").click(function () {//EGV 全选
                selectAll(this);
            });
        });
        function selectAll(obj) {
            var sina = document.getElementById('CkSina');
            var qq = document.getElementById('CkQQ');
            var baidu = document.getElementById('CkBaidu');
            var kaixin = document.getElementById('CkKaixin');
            var renren = document.getElementById('CkRenren');
            var wangyi = document.getElementById('CkNetease');
            var all = document.getElementById(name);
            sina.checked = obj.checked;
            qq.checked = obj.checked;
            baidu.checked = obj.checked;
            kaixin.checked = obj.checked;
            renren.checked = obj.checked;
            wangyi.checked = obj.checked;
        }
        $(function () {
            $(".Cksele").focus(function () {
                $(this).select();
            })
            $(".btn-primary").click(function () {
                if ($(this).val() == "提交") {
                    return true;
                }
                if ($(this).val() == "确定") {
                    $(this).next().hide();
                    $(this).val("配置");
                    return true;
                } else {
                    $(this).next().show();
                    $(this).val("确定");
                    return false;
                }
            })
        })
        var Num = 0;
        var nn = 0;
        function help_show(helpid) {
            Num++;
            var newDiv = document.createElement('div');
            var str = "<div id='help_content'></div><div id='help_hide'><a onclick='help_hide(Num)' style='width:20px;color:#666' title='关闭'></a></div> ";
            newDiv.innerHTML = str;
            newDiv.setAttribute("Id", "help_div" + Num);
            nn = Num - 1
            jQuery("#help").append(newDiv);
            if ($("#help_div" + nn))
            { $("#help_div" + nn).remove(); }
            jQuery("#help_content").load("/manage/help/" + helpid + ".html", function () { jQuery("#help").show(); });
        }
        function help_hide(Num) {
            jQuery("#help_div" + Num).remove();
        }
    </script>
</asp:Content>
