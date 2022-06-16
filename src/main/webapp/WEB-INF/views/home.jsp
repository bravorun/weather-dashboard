<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <!-- Required meta tags -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <title>Corona Admin</title>
            <!-- plugins:css -->
            <link rel="stylesheet" href="<c:url value="
                /resources/assets/vendors/mdi/css/materialdesignicons.min.css" />">
            <link rel="stylesheet" href="<c:url value=" resources/assets/vendors/css/vendor.bundle.base.css" />">
            <!-- endinject -->
            <!-- Plugin css for this page -->
            <link rel="stylesheet" href="<c:url value=" resources/assets/vendors/jvectormap/jquery-jvectormap.css" />">
            <link rel="stylesheet" href="<c:url value=" resources/assets/vendors/flag-icon-css/css/flag-icon.min.css" />
            ">
            <link rel="stylesheet" href="<c:url value=" resources/assets/vendors/owl-carousel-2/owl.carousel.min.css" />
            ">
            <link rel="stylesheet" href="<c:url value="
                resources/assets/vendors/owl-carousel-2/owl.theme.default.min.css" />">
            <link rel="stylesheet" href="<c:url value=" resources/assets/css/style.css" />">
            <link rel="shortcut icon" href="<c:url value=" resources/assets/images/favicon.png" />"/>
        </head>
        <body>
            <div class="container-scroller">
                <div class="container-fluid page-body-wrapper">
                    <nav class="navbar p-0 fixed-top d-flex flex-row">
                       
                        <div class="navbar-menu-wrapper flex-grow d-flex align-items-stretch">
                          <ul class="navbar-nav w-100 md-center">
                            <h1>Weather Dashboard</h1>
                          </ul>
                          <ul class="navbar-nav navbar-nav-right">
                            <a class="btn btn-lg btn-primary btn-sm text-danger ml-auto"  href="/login"> <h5>Login</h5></a>

                              </a>
                            </li>
                          </ul>
                          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                            <span class="mdi mdi-format-line-spacing"></span>
                          </button>
                        </div>
                      </nav>
                    <div class="main-panel">
                        <div class="content-wrapper">
                            <div class="row justify-content-md-center">
                                <div class="col-18 grid-margin stretch-card">
                                </div>
                                <div class="justify-content-md-center">
                                    <div class="row justify-content-md-center">
                                        <h1>weather processor</h1> 
                                    </div>
                                    <div class="row justify-content-md-center">
                                        <div class="col-sm-4 grid-margin">
                                            <div class="card">
                                                <div class="card-body">
                                                    <h5>Temperature</h5>
                                                    <div class="row">
                                                        <div class="col-8 col-sm-12 col-xl-8 my-auto">
                                                            <div class="d-flex d-sm-block d-md-flex align-items-center">
                                                                <h2 class="mb-0">$32123</h2>
                                                            </div>
                                                        </div>
                                                        <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                                                            <i
                                                                class="icon-lg mdi mdi-oil-temperature text-primary ml-auto"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4 grid-margin">
                                            <div class="card">
                                                <div class="card-body">
                                                    <h5>Presure</h5>
                                                    <div class="row">
                                                        <div class="col-8 col-sm-12 col-xl-8 my-auto">
                                                            <div class="d-flex d-sm-block d-md-flex align-items-center">
                                                                <h2 class="mb-0">$45850</h2>
                                                                <p class="text-success ml-2 mb-0 font-weight-medium">
                                                                    +8.3%</p>
                                                            </div>
                                                            <h6 class="text-muted font-weight-normal"> 9.61% Since last
                                                                month</h6>
                                                        </div>
                                                        <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                                                            <i
                                                                class="icon-lg mdi mdi-speedometer text-primary d-md-flex"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4 grid-margin">
                                            <div class="card">
                                                <div class="card-body">
                                                    <h5>Humidity</h5>
                                                    <div class="row">
                                                        <div class="col-8 col-sm-12 col-xl-8 my-auto">
                                                            <div class="d-flex d-sm-block d-md-flex align-items-center">
                                                                <h2 class="mb-0">$2039</h2>
                                                                <p class="text-danger ml-2 mb-0 font-weight-medium">
                                                                    -2.1% </p>
                                                            </div>
                                                            <h6 class="text-muted font-weight-normal">2.27% Since last
                                                                month</h6>
                                                        </div>
                                                        <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                                                            <i class="icon-lg mdi mdi-water text-primary ml-auto"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                        <!-- main-panel ends -->
                    </div>
                    <!-- page-body-wrapper ends -->
                </div>
                <!-- container-scroller -->
                <!-- plugins:js -->
                <script src="<c:url value=" resources/assets/vendors/js/vendor.bundle.base.js" />"></script>
                <!-- endinject -->
                <!-- Plugin js for this page -->
                <script src="<c:url value=" /resources/assets/vendors/chart.js/Chart.min.js" />"></script>
                <script src="<c:url value=" /resources/assets/vendors/progressbar.js/progressbar.min.js" />"></script>
                <script src="<c:url value=" /resources/assets/vendors/jvectormap/jquery-jvectormap.min.js" />"></script>
                <script src="<c:url value=" /resources/assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js" />
                "></script>
                <script src="<c:url value=" /resources/assets/vendors/owl-carousel-2/owl.carousel.min.js" />"></script>
                <!-- End plugin js for this page -->
                <!-- inject:js -->
                <script src="<c:url value=" /resources/assets/js/off-canvas.js" />"></script>
                <script src="<c:url value=" /resources/assets/js/hoverable-collapse.js" />"></script>
                <script src="<c:url value=" /resources/assets/js/misc.js" />"></script>
                <script src="<c:url value=" /resources/assets/js/settings.js" />"></script>
                <script src="<c:url value=" /resources/assets/js/todolist.js" />"></script>
                <!-- endinject -->
                <!-- Custom js for this page -->
                <script src="<c:url value=" /resources/assets/js/dashboard.js" />"></script>
                <!-- End custom js for this page -->
        </body>

        </html>