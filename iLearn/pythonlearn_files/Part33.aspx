<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part33.aspx.cs" Inherits="pythonlearn_files_Part33" %>

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
                                            <a href="part32.aspx">
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
                                            <a href="part34.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>3.4  Alternative execution
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    A second form of the
    <span class="s3">if </span>statement is
    <span class="s5">alternative execution</span>, in which there are two possibilities and the condition determines which one gets
                                                    executed. The syntax looks like this:
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    <a name="bookmark109"><span class="s23">if </span></a>
                                                    <span style="color: #231F20;">x</span>%
    <span style="color: #3FA070;">2 </span>==
    <span style="color: #3FA070;">0 </span>
                                                    <span style="color: #231F20;">:</span>
                                                </p>
                                                <p>
                                                    print(
    <span style="color: #3F70A0;">&#39;x is even&#39;</span>)
                                                </p>

                                                <p>
                                                    else:
                                                </p>

                                                <p>
                                                    print(
                                                    <span style="color: #3F70A0;">&#39;x is odd&#39;</span>)
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    If the remainder when
        <span class="s3">x </span>is divided by 2 is 0, then we know that
        <span class="s3">x </span>is even, and the program displays a message to that effect.
        If the condition is false, the second
set of statements is executed.
                                                </p>
                                            </div>
                                                <p style="text-indent: 0pt; text-align: center;">
                                                    <span>
                                                        <img width="390" height="270" alt="image" src="../images/pythonimages/Image_011.png" /></span>
                                                </p>

                                            <div class="card-body">
                                                <p>
                                                    Since the condition must either be true or false, exactly one of the alternatives
                                                    will be executed. The alternatives are called
                                                    <span class="s5">branches</span>, because they are branches in the flow of execution.
                                                </p>
                                            </div>

                                            <a href="part32.aspx">
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
                                            <a href="part34.aspx">
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

