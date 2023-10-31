<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="UserDashboard.aspx.cs" Inherits="UserDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="UserMaster_CSS/UserDashboard.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper" style="margin-top: 5%; margin-left: 8%;">
        <div class="row">
            <div class="col-md-12 grid-margin">
                <div class="row">
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card position-relative">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6 d-flex flex-column justify-content-start">
                                        <div class="ml-xl-4 mt-3">
                                            <p class="card-title">My ScoreBoard</p>
                                            <h1 class="text-primary">Hi Bhakti!</h1>
                                            <h5 class="font-weight-500 mb-xl-4 text-primary">Welcome to your Scoreboard at iLearn
                                            </h5>
                                            <p class="mb-2 mb-xl-0">
                                                This will be your hub to the learning progress. Here you can
                                                track your progress and evaluate your performance.!
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-6 mt-3">
                                        <div class="horizontal-rectangle-card">
                                            <h1 class="card-heading">Welcome</h1>
                                            <h4 class="card-subheading">Your Score</h4>
                                            <div class="circular-progress" data-inner-circle-color="white" data-percentage="80"
                                                data-progress-color="#7978E9" data-bg-color="white">
                                                <div class="inner-circle"></div>
                                                <p class="percentage">0%</p>
                                            </div>
                                            <div class="row">
                                                <div class="label-card">
                                                    <div class="color-strip color-strip1"></div>
                                                    <div class="label-content">
                                                        <h3>95</h3>
                                                        <p>Quiz Point</p>
                                                    </div>
                                                </div>
                                                <div class="label-card">
                                                    <div class="color-strip color-strip2"></div>
                                                    <div class="label-content">
                                                        <h3>75</h3>
                                                        <p>Lesson Point</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" style="margin-top: 8%;">
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card position-relative">
                            <div class="card-body">
                                <div id="detailedReports" class="carousel slide detailed-report-carousel position-static pt-2"
                                    data-ride="carousel">
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <div class="row">
                                                <div class="col-md-12 col-xl-3 d-flex flex-column justify-content-start">
                                                    <div class="ml-xl-4 mt-3">
                                                        <p class="card-title">Popular Coding Language</p>
                                                        <h1 class="text-primary">2023</h1>

                                                        <p class="mb-2 mb-xl-0">
                                                            These languages are also considered to be the best programming
                                                            languages to learn for beginners. The given salary projection of the languages helps
                                                            you decide your interest in language.
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 col-xl-9">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="table-responsive mb-3 mb-md-0 mt-3">
                                                                <table class="table table-borderless report-table">
                                                                    <tr>
                                                                        <td class="text-muted">Javascript</td>
                                                                        <td class="w-100 px-0">
                                                                            <div class="progress progress-md mx-4">
                                                                                <div class="progress-bar bg-primary" role="progressbar" style="width: 80%" aria-valuenow="80"
                                                                                    aria-valuemin="0" aria-valuemax="100">
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <h5 class="font-weight-bold mb-0">$11215</h5>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-muted">Python</td>
                                                                        <td class="w-100 px-0">
                                                                            <div class="progress progress-md mx-4">
                                                                                <div class="progress-bar bg-warning" role="progressbar" style="width: 70%" aria-valuenow="70"
                                                                                    aria-valuemin="0" aria-valuemax="100">
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <h5 class="font-weight-bold mb-0">$109092</h5>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-muted">Go</td>
                                                                        <td class="w-100 px-0">
                                                                            <div class="progress progress-md mx-4">
                                                                                <div class="progress-bar bg-danger" role="progressbar" style="width: 65%" aria-valuenow="65"
                                                                                    aria-valuemin="0" aria-valuemax="100">
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <h5 class="font-weight-bold mb-0">$141654</h5>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-muted">Java</td>
                                                                        <td class="w-100 px-0">
                                                                            <div class="progress progress-md mx-4">
                                                                                <div class="progress-bar bg-info" role="progressbar" style="width: 60%" aria-valuenow="60"
                                                                                    aria-valuemin="0" aria-valuemax="100">
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <h5 class="font-weight-bold mb-0">$109225</h5>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-muted">Kotlin</td>
                                                                        <td class="w-100 px-0">
                                                                            <div class="progress progress-md mx-4">
                                                                                <div class="progress-bar bg-primary" role="progressbar" style="width: 50%" aria-valuenow="50"
                                                                                    aria-valuemin="0" aria-valuemax="100">
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <h5 class="font-weight-bold mb-0">$13600</h5>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-muted">PHP</td>
                                                                        <td class="w-100 px-0">
                                                                            <div class="progress progress-md mx-4">
                                                                                <div class="progress-bar bg-danger" role="progressbar" style="width: 65%" aria-valuenow="65"
                                                                                    aria-valuemin="0" aria-valuemax="100">
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td>
                                                                            <h5 class="font-weight-bold mb-0">$107409</h5>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <div class="row">
                                                <div class="col-md-12 col-xl-3 d-flex flex-column justify-content-start">
                                                    <div class="ml-xl-4 mt-3">
                                                        <p class="card-title">Benifits of Learning Python.</p>
                                                        <h1 class="text-primary">2023</h1>

                                                        <p class="mb-2 mb-xl-0">10 Reason why you should learn python.</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 col-xl-9">
                                                    <div class="row">
                                                        <div class="col-md-12 border-left">
                                                            <div class="table-responsive mb-3 mb-md-0 mt-3">
                                                                <table class="table table-borderless report-table">
                                                                    <tr>
                                                                        <td class="text-muted">Data Science</td>

                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-muted">Easy to Learn</td>

                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-muted">Cross Platform and Open Source.</td>

                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-muted">Versatile Language and platfrom</td>

                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-muted">Vast Libraries.</td>

                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-muted">Flexibility</td>

                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-muted">High Salary</td>

                                                                    </tr>
                                                                    <tr>
                                                                    <tr>
                                                                        <td class="text-muted">Artificial Intelligence</td>

                                                                    </tr>
                                                                    <tr>
                                                                    <tr>
                                                                        <td class="text-muted">Web Development</td>

                                                                    </tr>
                                                                    <tr>
                                                                    <tr>
                                                                        <td class="text-muted">Computer Graphics</td>

                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <a class="carousel-control-prev" href="#detailedReports" role="button" data-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="carousel-control-next" href="#detailedReports" role="button" data-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card position-relative">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="card-body">
                                        <p class="card-title">Latest Posts</p>
                                        <div class="card tale-bg">
                                            <div class="card-people mt-auto">
                                                <img src="images/posts/latest1.jpg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card-body">
                                        <p class="card-title">
                                            <a href="https://www.pythonmorsels.com/lambda-expressions/">What
                                            are Lambda Expressions?</a>
                                        </p>
                                        <p class="font-weight-500">
                                            What are lambda expressions and how are they used in python?
                                            Learn here.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card position-relative">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="card-body">
                                        <p class="card-title">Latest Posts</p>
                                        <div class="card tale-bg">
                                            <div class="card-people mt-auto">
                                                <img src="images/posts/latest2.jpg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card-body">
                                        <p class="card-title">
                                            <a href="https://planetpython.org/">From concepts to MVPs. Validate your ideas in few
                                                lines of code with streamlit.
                                            </a>
                                        </p>
                                        <p class="font-weight-500">
                                            In this article, we’ll walk you through the process of turning your concept into
                                            a Minimum Viable Product (MVP) with few lines of code using Streamlit.
                                            Learn here.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card position-relative">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="card-body">
                                        <p class="card-title">Latest Posts</p>
                                        <div class="card tale-bg">
                                            <div class="card-people mt-auto">
                                                <img src="images/posts/latest1.jpg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card-body">
                                        <p class="card-title">
                                            <a href="https://realpython.com/courses/building-systems-classes-exercises/">Python
                                                Basics Exercises: Building Systems With Classes
                                            </a>
                                        </p>
                                        <p class="font-weight-500">
                                            In Python Basics: Building Systems With Classes, you moved beyond the basics of
                                            object-oriented programming (OOP), and started to put those classes to work. In
                                            this exercise course you will employ these capabilities to build more complex systems
                                            and write readable, reusable code.
                                            Learn here.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <script src="UserMaster_Js/circularprogressbar.js"></script>

</asp:Content>
