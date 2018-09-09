<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="news.aspx.cs" Inherits="Web.news" %>
<%@ Register src="member/webfoot.ascx" tagname="webfoot" tagprefix="uc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0"/>
    <title>中心公告</title>
    <link href="/layui/css/layui.css" rel="stylesheet" />
    <link href="/css/iconfont/iconfont.css" rel="stylesheet" />
    <link href="/css/main.css?v=<%=DateTime.Now.ToString("yyyyMMddHHmmss") %>" rel="stylesheet" />
    <script src="/js/jquery.1.11.2.min.js"></script>
</head>
<body style="background-color:#f6f6f6;">
    <form id="form1" runat="server">
         <div class="layui-container web-header" style="padding:0 5px;">
             <div class="layui-row">
                 <div class="layui-col-xs3 text-left">
                    <a class="normal-btn" href="javascript:history.back(-1);">
                      <i class="layui-icon">&#xe603;</i>
                    </a>
                 </div>
                 <div class="layui-col-xs6 text-center">
                  中心公告
                 </div>
                 <div class="layui-col-xs3 text-right">
                 &nbsp;
                 </div>
              </div>
        </div>

        <asp:Repeater runat="server" ID="rpList">
            <ItemTemplate>
                <div class="layui-container myorder-body course-data-box">
                    <div class="layui-row btoline">
                         <div class="layui-col-xs12">
                             <blockquote class="layui-elem-quote"><a href="newsview.aspx?id=<%#Eval("ID") %>"><%#Eval("Title") %></a></blockquote>
                         </div>
                    </div>
                    <div class="layui-row padding10">
                        <div class="layui-col-xs9 text-left">
                             发布日期：<%#Eval("AddTime") %>
                         </div>
                         <div class="layui-col-xs3 text-right group-btns">
                             <a href="newsview.aspx?id=<%#Eval("ID") %>" class="layui-btn layui-btn-mini"><i class="layui-icon">&#xe615;</i> 查看详细</a>
                         </div>
                      </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
       
        <div class="bottom-space"></div>

        <uc1:webfoot ID="webfoot1" runat="server" />
    </form>
</body>
</html>
<script src="/layui/layui.js"></script>
<script>
    layui.use(['layer'], function () {
        var layer = layui.layer;

        $(function () {

        });
    });

</script>
