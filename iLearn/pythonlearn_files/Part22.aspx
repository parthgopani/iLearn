<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part22.aspx.cs" Inherits="pythonlearn_files_Part22" %>

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
                                            <a href="part21.aspx">
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
                                            <a href="part23.aspx">
                                                <button type="button" class="btn btn-outline-success btn-icon-text">
                                                    <i class="ti-alert btn-icon-prepend"></i>
                                                    Next
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>2.7  Order of operations
                                                </h2>
                                            </div>

                                            <p style="padding-left: 52pt; text-indent: 0pt; text-align: justify;">
                                                When more than one operator appears in an expression, the order of evaluation depends
                                                on the
    <span class="s5">rules of precedence</span>. For mathematical operators, Python follows mathematical convention. The acronym
                                                <span class="s5">PEMDAS </span>is a useful way to remember the rules:
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 76pt; text-indent: -12pt; text-align: justify;">
                                                •
    <span class="s5">P</span>arentheses have the highest precedence and can be used to force an expres- sion to evaluate in the
                                                order you want. Since expressions in parentheses are evaluated first,
    <span class="s3">2 * (3-1) </span>is 4, and
    <span class="s3">(1+1)**(5-2) </span>is 8. You can also use parentheses to make an expression easier to read, as in
    <span class="s3">(minute * 100) / 60</span>, even if it doesn’t change the result.
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-top: 3pt; padding-left: 19pt; text-indent: 0pt; text-align: left;">
                                                <a name="bookmark71">• </a>
                                                <span class="s5">E </span>xponentiation has the next highest precedence, so
    <span class="s3">2**1+1 </span>is 3, not 4, and
                                            </p>
                                            <p class="s3" style="padding-left: 31pt; text-indent: 0pt; text-align: left;">
                                                3*1**3
    <span class="p">is 3, not 27.</span>
                                            </p>
                                            <p style="padding-top: 8pt; padding-left: 31pt; text-indent: -12pt; text-align: justify;">
                                                •
    <span class="s5">M </span>ultiplication and
    <span class="s5">D</span>ivision have the same precedence, which is higher than
    <span class="s5">A</span>ddition and
    <span class="s5">S </span>ubtraction, which also have the same precedence. So
    <span class="s3">2*3-1 </span>is 5, not 4, and
    <span class="s3">6+4/2 </span>is 8, not 5.
                                            </p>
                                            <p style="padding-top: 8pt; padding-left: 31pt; text-indent: -12pt; text-align: justify;">
                                                • Operators with the same precedence are evaluated from left to right. So the expression
                                                <span class="s3">5-3-1 </span>is 1, not 3, because the
    <span class="s3">5-3 </span>happens first and then
    <span class="s3">1 </span>is
                                            </p>
                                            <p style="padding-left: 31pt; text-indent: 0pt; text-align: left;">subtracted from 2.
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 7pt; text-indent: 0pt; text-align: justify;">When in doubt,
                                                always put parentheses in your expressions to make sure the com- putations are performed
                                                in the order you intend.</p>
                                            <a href="part21.aspx">
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
                                            <a href="part23.aspx">
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

