<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Nasher Home</title>

    <!-- Bootstrap Core CSS -->
    <link href="res/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="res/css/blog-home.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Nasher</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">

                    <c:forEach items="${categlists}" var="entry">
                    <li>
                                            <a href="category/${tools.utitle(entry.getName())}/${entry.getId()}.do">${entry.name}</a>
                    </li>
                    </c:forEach>


                </ul>
                <ul class="nav navbar-nav pull-right">
                <li><a href="/admin">Admin</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <!-- Blog Entries Column -->
            <div class="col-md-8">


                <h1 class="page-header">
                    JNasher Bloging system<br/>
                    <small><a href="https://github.com/mmghasemi/nasher">https://github.com/mmghasemi/nasher<a></small>
                </h1>
                <c:forEach items="${bloglists}" var="entry">

                <!-- First Blog Post -->
                <!-- First Blog Post -->
                                <h2>
                                    <a href="<%=request.getContextPath()%>/one/${tools.utitle(entry.getTitle())}/${entry.getId()}.do"> ${categlists.get(entry.getCategory()-1).getName()}/Blog Post Title ${entry.getTitle()}</a>
                                </h2>
                                <img style="width:400px" src="${pageContext.request.contextPath}/data/${entry.getFile()}"/>
                                <p><span class="glyphicon glyphicon-time"></span> Posted on ${entry.getDate()}</p>
                                <hr>
                                <p>${entry.getContent()}</p>

                                <a class="btn btn-primary" href="<%=request.getContextPath()%>/one/${tools.utitle(entry.getTitle())}/${entry.getId()}.do">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>

                                <hr>
                </c:forEach>


                <!-- Pager -->
                <ul class="pager">
                    <li class="previous">
                        <a href="#">&larr; Older</a>
                    </li>
                    <li class="next">
                        <a href="#">Newer &rarr;</a>
                    </li>
                </ul>

            </div>

            <!-- Blog Sidebar Widgets Column -->
            <div class="col-md-4">

                <!-- Blog Search Well -->
                <div class="well">
                    <h4>Blog Search</h4>
                    <div class="input-group">
                        <input type="text" class="form-control">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">
                                <span class="glyphicon glyphicon-search"></span>
                        </button>
                        </span>
                    </div>
                    <!-- /.input-group -->
                </div>

                <!-- Blog Categories Well -->
                <div class="well">
                    <h4>Blog Categories</h4>
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                            <c:forEach items="${categlists}" var="entry">
                                <li><a href="<%=request.getContextPath()%>/category/${tools.utitle(entry.getName())}/${entry.getId()}.do">${entry.getName()}</a>
                                </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <!-- /.col-lg-6 -->

                        <!-- /.col-lg-6 -->
                    </div>
                    <!-- /.row -->
                </div>


            </div>

        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; JNasher 2016</p>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="res/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="res/js/bootstrap.min.js"></script>

</body>

</html>