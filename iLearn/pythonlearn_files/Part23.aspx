<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part23.aspx.cs" Inherits="pythonlearn_files_Part23" %>

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
                                            <a href="part22.aspx">
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
                                            <a href="part24.aspx">
                                                <button type="button" class="btn btn-outline-success btn-icon-text">
                                                    <i class="ti-alert btn-icon-prepend"></i>
                                                    Next
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>2.8  Modulus operator
                                                </h2>
                                            </div>

                                            <p style="padding-left: 7pt; text-indent: 0pt; text-align: justify;">
                                                The
    <span class="s5">modulus operator </span>works on integers and yields the remainder when the first operand is divided by the
                                                second. In Python, the modulus operator is a percent sign (
    <span class="s3">%</span>). The syntax is the same as for other operators:
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">quotient </span>=
    <span style="color: #3FA070;">7 </span>//
    <span style="color: #3FA070;">3</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">print(quotient) </span>
                                                <span style="color: #3FA070;">2</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">remainder </span>=
    <span style="color: #3FA070;">7 </span>%
    <span style="color: #3FA070;">3</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">print(remainder) </span>
                                                <span style="color: #3FA070;">1</span>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 7pt; text-indent: 0pt; text-align: justify;">So 7 divided by
                                                3 is 2 with 1 left over.</p>
                                            <p style="padding-top: 6pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                The modulus operator turns out to be surprisingly useful. For example, you can check
                                                whether one number is divisible by another: if
    <span class="s3">x % y </span>is zero, then
    <span class="s3">x </span>is divisible by
    <span class="s3">y</span>.
                                            </p>
                                            <p style="padding-top: 6pt; padding-left: 7pt; text-indent: 0pt; text-align: justify;">
                                                You can also extract the right-most digit or digits from a number. For example,
                                                <span class="s3">x % 10 </span>yields the right-most digit of
    <span class="s3">x </span>(in base 10). Similarly,
    <span class="s3">x % 100 </span>yields the last two digits.
                                            </p>
                                            <a href="part22.aspx">
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
                                            <a href="part24.aspx">
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

