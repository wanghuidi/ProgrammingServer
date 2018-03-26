<html>
<#include "../common/header.ftl">

<body>
<div id="wrapper" class="toggled">

<#--边栏sidebar-->
    <#include "../common/nav.ftl">

<#--主要内容content-->
    <div id="page-content-wrapper">
        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <table class="table table-bordered table-condensed">
                        <thead>
                        <tr>
                            <th>课程id</th>
                            <th>课程名称</th>
                            <th>课程内容</th>
                            <th>课程描述</th>
                            <th>课程评分</th>
                            <th>是否下架</th>
                            <th colspan="2">操作</th>
                        </tr>
                        </thead>
                        <tbody>

                        <#list courses.getContent() as course>
                        <tr>
                            <td>${course.id}</td>
                            <td>${course.name}</td>
                            <td>${course.content}</td>
                            <td>${course.description}</td>
                            <td>${course.rating}</td>
                            <td>否</td>
                            <td>
                                <a href="#">下架</a>
                                <a href="#">删除</a>
                            </td>
                        </tr>
                        </#list>
                        </tbody>
                    </table>
                </div>

            <#--分页-->
                <div class="col-md-12 column">
                    <ul class="pagination pull-right">
                    <#if page lte 0>
                        <li class="disabled"><a href="#">上一页</a></li>
                    <#else>
                        <li><a href="/view/programs/list?page=${page - 1}&size=${size}">上一页</a></li>
                    </#if>

                    <#list 1..courses.getTotalPages() as index>
                        <#if page+1 == index>
                            <li class="disabled"><a href="#">${index}</a></li>
                        <#else>
                            <li><a href="/view/courses/list?page=${index-1}&size=${size}">${index}</a></li>
                        </#if>
                    </#list>

                    <#if page+1 gte courses.getTotalPages()>
                        <li class="disabled"><a href="#">下一页</a></li>
                    <#else>
                        <li><a href="/view/courses/list?page=${page + 1}&size=${size}">下一页</a></li>
                    </#if>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</div>
</body>
</html>