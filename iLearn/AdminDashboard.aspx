<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true"
    CodeFile="AdminDashboard.aspx.cs" Inherits="AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-md-12 grid-margin">
                <div class="row">
                    <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                        <h3 class="font-weight-bold">Welcome to iLearn</h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 grid-margin stretch-card">
                <div class="card tale-bg">
                    <div class="card-people">
                        <img src="images/dashboard.jpg" alt="dashboard image">
                        <div class="weather-info">
                            <div class="d-flex">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 grid-margin transparent">
                <div class="row">
                    <div class="col-md-6 mb-4 stretch-card transparent">
                        <div class="card card-tale">
                            <div class="card-body">
                                <p class="mb-4">Total Users</p>
                                <p class="fs-30 mb-2"></p>
                                <p>
                                    <asp:Label ID="lblUserCount" runat="server" Text=""></asp:Label>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4 stretch-card transparent">
                        <div class="card card-dark-blue">
                            <div class="card-body">
                                <p class="mb-4">Total Quiz</p>
                                <p class="fs-30 mb-2"></p>
                                <p>
                                    <asp:Label ID="lblExamCount" runat="server" Text=""></asp:Label>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-4 stretch-card transparent">
                        <div class="card card-tale">
                            <div class="card-body">
                                <p class="mb-4">Total Questions</p>
                                <p class="fs-30 mb-2"></p>
                                <p>
                                    <asp:Label ID="lbltotquestion" runat="server" Text=""></asp:Label>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4 stretch-card transparent">
                        <div class="card card-dark-blue">
                            <div class="card-body">
                                <p class="mb-4">Average Score</p>
                                <p class="fs-30 mb-2"></p>
                                <p>
                                    <asp:Label ID="lblaverageScore" runat="server" Text=""></asp:Label>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <!--<div class="row">
                    <div class="col-lg-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Average Score</h4>
                                <canvas id="chartAvgScore"></canvas>
                            </div>
                        </div>
                    </div>
                </div>-->
            </div>

        </div>
    </div>
    <!--<script>
        function displayDoughnutChart(averageScore) {
            var ctx = document.getElementById('chartAvgScore').getContext('2d');
            var myDoughnutChart = new Chart(ctx, {
                type: 'doughnut',
                data: {
                    labels: ['Average Score', 'Remaining'],
                    datasets: [{
                        data: [averageScore, 100 - averageScore],
                        backgroundColor: ['#36a2eb', '#eaeaea'],
                    }]
                },
                options: {
                    cutout: '80%',
                    responsive: true,
                    maintainAspectRatio: false,
                    legend: {
                        display: false,
                    },
                    title: {
                        display: true,
                        text: 'Average Score',
                    }
                }
            });
        }
        displayDoughnutChart(<%= lblaverageScore.Text %>);
    </script>-->
</asp:Content>

