<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Web.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0"/>
    <title>首页</title>
    <link href="layui/css/layui.css" rel="stylesheet" />
    <link href="css/iconfont/iconfont.css" rel="stylesheet" />
    <style>
        body { background:url(images/indexbg.jpg) repeat-y center top;background-size:100% auto;}
        .left-top { width:35.21%;height:auto;position:absolute;left:0;top:0}
        .right-top { width:47.71%;height:auto;position:absolute;right:0;top:0}
        .left-bottom { width:23.75%;height:auto;position:absolute;left:0;bottom:0}
        .right-bottom { width:31.88%;height:auto;position:absolute;right:0;bottom:0}
        .index-container { width:74.17%;height:auto;margin:0 auto;text-align:center;}
        .index-container .top-title { width:100%;margin-top:100px;}
        .index-container .top-title .text {color:#3d7f80;font-size:20px;margin-bottom:1em;text-align:center;line-height:1.1;}
        .index-container .top-title .text span {display:block;position:relative;}
        .index-container .top-title .text span:before,.index-container .top-title .text span:after {content:'';position:absolute;top:52%;background:#3d7f80;width:14%;height:2px;}
        .index-container .top-title .text span:before {left:0%;}
        .index-container .top-title .text span:after {right:0%;}
        .index-container .menu-list { width:100%;height:auto;overflow:hidden;padding-top:10px;position:relative;z-index:9999}
        .index-container .menu-list ul li { margin-bottom:20px;vertical-align:middle;font-size:18px;color:#3d7f80;padding:10px 50px;border:1px solid #3d7f80;border-radius:3px;}
        .index-container .menu-list ul li i{ font-size:24px;color:#3d7f80;}
    </style>
</head>
<body>
    <img class="left-top" src="images/lefttop.png" />
    <img class="right-top" src="images/righttop.png" />
    <img class="left-bottom" src="images/leftbottom.png" />
    <img class="right-bottom" src="images/rightbottom.png" />
    <div class="index-container">
        <div class="top-title">
            <div class="text"><span>窈窕淑女，君子好逑</span></div>
        </div>
        <div class="menu-list" id="menu-list">
            <ul>
                <li data-url="member/course.aspx"><i class="layui-icon">&#xe637;</i> 订课中心</li>
                <li data-url="news.aspx"><i class="layui-icon">&#xe63c;</i> 中心公告</li>
                <li data-url="member/index.aspx"><i class="layui-icon">&#xe857;</i> 个人中心</li>
            </ul>
        </div>
    </div>
</body>
</html>
<script src="layui/layui.js"></script>
<script>
    var $;
    layui.use(['layer'], function () {
        $ = layui.$;
        var layer = layui.layer;

        $(function () {
            $("#menu-list li").click(function () {
                var index = layer.load(1, {
                    shade: [0.1, '#fff'] //0.1透明度的白色背景
                });
                window.location.href = $(this).attr("data-url");
            });
        });
    });

</script>
