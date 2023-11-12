<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part31.aspx.cs" Inherits="pythonlearn_files_Part31" %>

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
                                            <a href="part30.aspx">
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
                                            <a href="part32.aspx">
                                                <button type="button" class="btn btn-outline-success btn-icon-text">
                                                    <i class="ti-alert btn-icon-prepend"></i>
                                                    Next
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>3.2  Logical operators
                                                </h2>
                                            </div>

                                            <p style="padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                There are three
    <span class="s5">logical operators</span>:
    <span class="s3">and</span>,
    <span class="s3">or</span>, and
    <span class="s3">not</span>. The semantics (meaning) of these operators is similar to their meaning in English. For example,
                                            </p>
                                            <p class="s3" style="padding-top: 6pt; padding-left: 6pt; text-indent: 0pt; text-align: left;">
                                                x &gt; 0 and x &lt; 10</p>
                                            <p style="padding-top: 6pt; padding-left: 6pt; text-indent: 0pt; text-align: left;">
                                                is true only if
    <span class="s3">x </span>is greater than 0
    <span class="s5">and </span>less than 10.
                                            </p>
                                            <p style="padding-top: 6pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                <span class="s3">n%2 == 0 or n%3 == 0 </span>is true if
    <span class="s5">either </span>of the conditions is true, that is, if the number is divisible by 2
    <span class="s5">or </span>3.
                                            </p>
                                            <p style="padding-top: 6pt; padding-left: 6pt; text-indent: 0pt; text-align: left;">
                                                Finally, the
    <span class="s3">not </span>operator negates a boolean expression, so
    <span class="s3">not (x &gt; y) </span>is true if
                                            </p>
                                            <p class="s3" style="padding-left: 6pt; text-indent: 0pt; text-align: left;">
                                                x &gt; y
    <span class="p">is false; that is, if </span>x
    <span class="p">is less than or equal to </span>y
    <span class="p">.</span>
                                            </p>
                                            <p style="padding-top: 7pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                Strictly speaking, the operands of the logical operators should be boolean expres-
                                                sions, but Python is not very strict. Any nonzero number is interpreted as “true.”
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s22" style="padding-top: 6pt; padding-left: 6pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #3FA070;">17 </span>and
    <span style="color: #19167C;">True True</span>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-top: 6pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                This flexibility can be useful, but there are some subtleties to it that might be
                                                confusing. You might want to avoid it until you are sure you know what you are doing.
                                            </p>
                                            <a href="part30.aspx">
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
                                            <a href="part32.aspx">
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

