<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part39.aspx.cs" Inherits="pythonlearn_files_Part39" %>

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
                                            <a href="part38.aspx">
                                                <button type="button" class="btn btn-outline-primary btn-icon-text">
                                                    <i class="ti-file btn-icon-prepend"></i>
                                                    Previous
                                                </button>
                                            </a>
                                            <a href="part1.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                    <i class="ti-file btn-icon-append"></i>
                                                    Contents
                                                </button>
                                            </a>
                                            <a href="part40.aspx">
                                                <button type="button" class="btn btn-outline-success btn-icon-text">
                                                    <i class="ti-alert btn-icon-prepend"></i>
                                                    Next
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>else
                                                </h2>
                                            </div>

                                            <p class="s3" style="padding-left: 93pt; text-indent: 0pt; text-align: left;">
                                                print(
    <span style="color: #3F70A0;">&#39;x is greater than y&#39;</span>)
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 52pt; text-indent: 0pt; text-align: justify;">
                                                The outer conditional contains two branches. The first branch contains a simple
                                                statement. The second branch contains another
    <span class="s3">if </span>statement, which has two branches of its own. Those two branches are both simple statements, although
                                                they could have been conditional statements as well.
                                            </p>
                                            <p style="padding-top: 5pt; padding-left: 51pt; text-indent: 0pt; text-align: justify;">
                                                Although the indentation of the statements makes the structure apparent,
    <span class="s5">nested conditionals </span>become difficult to read very quickly. In general, it is a good idea to avoid them
                                                when you can.
                                            </p>
                                            <p style="padding-top: 5pt; padding-left: 52pt; text-indent: 0pt; text-align: justify;">
                                                Logical operators often provide a way to simplify nested conditional statements.
                                                For example, we can rewrite the following code using a single conditional:</p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s23" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                if
    <span class="s15">0 </span>
                                                <span class="s22">&lt; </span>
                                                <span class="s3">x:</span>
                                            </p>
                                            <p class="s3" style="padding-left: 72pt; text-indent: 0pt; text-align: left;">
                                                <span class="s23">if </span>x
    <span style="color: #656565;">&lt; </span>
                                                <span style="color: #3FA070;">10</span>:
                                            </p>
                                            <p class="s3" style="padding-left: 93pt; text-indent: 0pt; text-align: left;">
                                                print(
    <span style="color: #3F70A0;">&#39;x is a positive single-digit number.&#39;</span>)
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 52pt; text-indent: 0pt; text-align: justify;">
                                                The
    <span class="s3">print </span>statement is executed only if we make it past both conditionals, so we can get the same effect
                                                with the
    <span class="s3">and </span>operator:
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <span>
                                                    <img width="407" height="186" alt="image" src="Image_013.png" /></span>
                                            </p>
                                            <p class="s16" style="text-indent: 0pt; text-align: left;">Yes</p>
                                            <p style="text-indent: 0pt; text-align: left;" />
                                            <p class="s16" style="text-indent: 0pt; text-align: left;">No</p>
                                            <p style="text-indent: 0pt; text-align: left;" />
                                            <p class="s39" style="text-indent: 0pt; line-height: 6pt; text-align: left;">
                                                x
    <span class="s40"></span>==
    <span class="s40"></span>y
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;" />
                                            <p class="s16" style="text-indent: 0pt; text-align: left;">Yes</p>
                                            <p style="text-indent: 0pt; text-align: left;" />
                                            <p class="s16" style="text-indent: 0pt; text-align: left;">No</p>
                                            <p style="text-indent: 0pt; text-align: left;" />
                                            <p class="s39" style="text-indent: 0pt; line-height: 6pt; text-align: left;">
                                                x
    <span class="s40"></span>&lt;
    <span class="s40"></span>y
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;" />
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s39" style="padding-left: 15pt; text-indent: 0pt; text-align: left;">print’‘greater’)
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;" />
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s39" style="padding-left: 19pt; text-indent: 0pt; text-align: left;">print(‘less’)
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;" />
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s39" style="padding-left: 17pt; text-indent: 0pt; text-align: left;">print(‘equal’)
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;" />
                                            <p style="padding-top: 3pt; padding-left: 113pt; text-indent: 0pt; text-align: left;">
                                                <a name="bookmark113">Figure 3.4: Nested If Statements</a>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                <span class="s23">if </span>
                                                <span style="color: #3FA070;">0 </span>&lt;
    <span style="color: #231F20;">x </span>and
    <span style="color: #231F20;">x </span>&lt;
    <span style="color: #3FA070;">10</span>
                                                <span style="color: #231F20;">:</span>
                                            </p>
                                            <p class="s3" style="padding-left: 27pt; text-indent: 0pt; text-align: left;">
                                                print(
    <span style="color: #3F70A0;">&#39;x is a positive single-digit number.&#39;</span>)
                                            </p>
                                            <a href="part38.aspx">
                                                <button type="button" class="btn btn-outline-primary btn-icon-text">
                                                    <i class="ti-file btn-icon-prepend"></i>
                                                    Previous
                                                </button>
                                            </a>
                                            <a href="part1.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                    <i class="ti-file btn-icon-append"></i>
                                                    Contents
                                                </button>
                                            </a>
                                            <a href="part40.aspx">
                                                <button type="button" class="btn btn-outline-success btn-icon-text">
                                                    <i class="ti-alert btn-icon-prepend"></i>
                                                    Next
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

