<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/plugins/layui/css/layui.css" media="all">
    <script type="text/javascript" src="../build/js/jquery.js"></script>
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>用户信息管理</legend>
</fieldset>
<blockquote class="layui-elem-quote layui-text">
    <button class="layui-btn layui-icon">&#xe654; 添加信息</button>
</blockquote>
<div class="layui-form">
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="150">
            <col width="200">
            <col width="200">
            <col width="200">
        </colgroup>
        <thead>
        <tr>
            <th>ID</th>
            <th>昵称</th>
            <th>账号</th>
            <th>密码</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody id="context">

        </tbody>
    </table>
</div>
<div id="page"></div>
<script src="/plugins/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script type="text/javascript">
    layui.use(['laypage', 'layer'], function () {
        var laypage = layui.laypage
            , layer = layui.layer;
        let currentIndex = 1;
        let limitIndex = 10;

        $(function () {
            $.ajax({
                type: 'post',
                url: '/queryCount',
                success: function (data) {
                    laypage.render({
                        elem: 'page'    //
                        , count: data
                        , limit: 10
                        , limits: [100, 300, 500],
                        jump: function (obj, first) {
                            currentIndex = obj.curr;
                            limitIndex = obj.limit;
                            console.log(currentIndex); //得到当前页，以便向服务端请求对应页的数据。
                            console.log(limitIndex); //得到每页显示的条数
                            $.ajax({
                                type: 'post',
                                url: '/queryProfession',
                                data: {
                                    currentIndex: currentIndex,
                                    limitIndex: limitIndex
                                },
                                success: function (data) {
                                    for (var i = 0; i < data.length; i++) {
                                        $("#context").append(`<tr>
            <td>` + (i + 1) + `</td>
            <td>` + data[i]['user_nickname'] + `</td>
            <td>` + data[i]['user_nickname'] + `</td>
            <td>` + data[i]['user_password'] + `</td>
            <td><button class="layui-btn layui-btn-sm layui-icon">&#xe642;编辑</button>
                <button class="layui-btn layui-btn-sm layui-btn-danger layui-icon">&#xe640;删除</button></td>
        </tr>`);
                                    }
                                }
                            });
                        }
                    });
                }
            });
        });

    });

</script>
</body>
</html>