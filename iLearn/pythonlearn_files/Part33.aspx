<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part33.aspx.cs" Inherits="pythonlearn_files_Part33" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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

                                            <p style="padding-bottom: 3pt; padding-left: 51pt; text-indent: 0pt; text-align: justify;">
                                                A second form of the
    <span class="s3">if </span>statement is
    <span class="s5">alternative execution</span>, in which there are two possibilities and the condition determines which one gets
                                                executed. The syntax looks like this:
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s22" style="padding-top: 3pt; padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                <a name="bookmark109"><span class="s23">if </span></a>
                                                <span style="color: #231F20;">x</span>%
    <span style="color: #3FA070;">2 </span>==
    <span style="color: #3FA070;">0 </span>
                                                <span style="color: #231F20;">:</span>
                                            </p>
                                            <p class="s3" style="padding-left: 27pt; text-indent: 0pt; text-align: left;">
                                                print(
    <span style="color: #3F70A0;">&#39;x is even&#39;</span>)
                                                                                        <p class="s22" style="padding-top: 3pt; padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                            <a name="bookmark109"><span class="s23">else : </span></a>
                                        </p>
                                        <p class="s3" style="padding-left: 27pt; text-indent: 0pt; text-align: left;">
                                            print(
<span style="color: #3F70A0;">&#39;x is odd&#39;</span>)
                                            </p>
                                                                                    <p style="text-indent: 0pt; text-align: left;">
                                            <br />
                                        </p>
                                        <p style="text-indent: 0pt; text-align: left;">
                                            <span>
                                                <img width="265" height="137" alt="image" src="Image_011.png" /></span>
                                        </p>
                                        <p class="s36" style="text-indent: 0pt; text-align: left;">No</p>
                                        <p style="text-indent: 0pt; text-align: left;" />
                                        <p class="s36" style="text-indent: 0pt; text-align: left;">Yes</p>
                                        <p style="text-indent: 0pt; text-align: left;" />
                                        <p class="s13" style="text-indent: 0pt; line-height: 7pt; text-align: left;">
                                            x%2
<span class="s14"></span>==
<span class="s14"></span>0
                                        </p>
                                        <p style="text-indent: 0pt; text-align: left;" />
                                        <p style="text-indent: 0pt; text-align: left;">
                                            <br />
                                        </p>
                                        <p class="s13" style="padding-left: 15pt; text-indent: 0pt; text-align: left;">
                                            print(‘x
<span class="s14"></span>is
<span class="s14"></span>even’)
                                        </p>
                                        <p style="text-indent: 0pt; text-align: left;" />
                                        <p style="text-indent: 0pt; text-align: left;">
                                            <br />
                                        </p>
                                        <p class="s13" style="padding-left: 17pt; text-indent: 0pt; text-align: left;">
                                            print(‘x
<span class="s14"></span>is
<span class="s14"></span>odd’)
                                        </p>
                                        <p style="text-indent: 0pt; text-align: left;" />
                                        <p style="padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                            If the remainder when
<span class="s3">x </span>is divided by 2 is 0, then we know that
<span class="s3">x </span>is even, and the program displays a message to that effect. If the condition is false, the second
                                            set of statements is executed.
                                        </p>
                                        <p style="text-indent: 0pt; text-align: left;">
                                            <br />
                                        </p>
                                        <p style="text-indent: 0pt; text-align: left;">
                                            <br />
                                        </p>
                                        <p style="padding-top: 3pt; padding-left: 118pt; text-indent: 0pt; text-align: left;">
                                            Figure 3.2: If-Then-Else Logic</p>
                                        <p style="text-indent: 0pt; text-align: left;">
                                            <br />
                                        </p>
                                        <p style="padding-left: 7pt; text-indent: 0pt; text-align: justify;">
                                            Since the condition must either be true or false, exactly one of the alternatives
                                            will be executed. The alternatives are called
<span class="s5">branches</span>, because they are branches in the flow of execution.
                                        </p>
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

