<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part29.aspx.cs" Inherits="pythonlearn_files_Part29" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="https://code.responsivevoice.org/responsivevoice.js?key=m3W56MGf"></script>
    <script src="ReadAloud.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-md-12 grid-margin">
                <div class="row">
                    <div class="col-12 col-xl-12 mb-4 mb-xl-0">
                        <div class="card">
                            <div class="card-body">
                                <div class="col-md-12 grid-margin stretch-card">
                                    <div class="card">
                                        <div class="card-body">
                                            <button type="button" class="btn btn-primary" onclick="readAloud()">Read Aloud</button>
                                        </div>
                                        <div class="card-body">
                                            <a href="part28.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                    <i class="fa-solid fa-arrow-left" style="color: #000f;"></i>
                                                    Previous
                                                </button>
                                            </a>
                                            <a href="part1.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                    <i class="fa-solid fa-file" style="color: #000f;"></i>
                                                    Contents
                                                </button>
                                            </a>
                                            <a href="part30.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>Conditional execution
                                                </h2>
                                            </div>

                                            <div class="card-body">
                                                <p>
                                                    <a href="part29.aspx#bookmark17">3  Conditional execution</a>
                                                </p>
                                                <p>
                                                    <a href="part30.aspx#bookmark18">3.1   Boolean expressions</a>
                                                </p>
                                                <p>
                                                    <a href="part31.aspx#bookmark20">3.2   Logical operators</a>
                                                </p>
                                                <p>
                                                    <a href="part32.aspx#bookmark22">3.3   Conditional execution</a>
                                                </p>
                                                <p>
                                                    <a href="part33.aspx#bookmark24">3.4   Alternative execution</a>
                                                </p>
                                                <p>
                                                    <a href="part34.aspx#bookmark27">3.5   Chained conditionals</a>
                                                </p>
                                                <p>
                                                    <a href="part35.aspx#bookmark28">3.6   Nested conditionals</a>
                                                </p>
                                                <p>
                                                    <a href="part36.aspx#bookmark30">3.7   Catching exceptions using try and except</a>
                                                </p>
                                                <p>
                                                    <a href="part37.aspx#bookmark31">3.8  Short-circuit evaluation of logical expressions</a>
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <a href="part28.aspx">
                                                    <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                        <i class="fa-solid fa-arrow-left" style="color: #000f;"></i>
                                                        Previous
                                                    </button>
                                                </a>
                                                <a href="part1.aspx">
                                                    <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                        <i class="fa-solid fa-file" style="color: #000f;"></i>
                                                        Contents
                                                    </button>
                                                </a>
                                                <a href="part30.aspx">
                                                    <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                        Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                                    </button>
                                                </a>
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

</asp:Content>

