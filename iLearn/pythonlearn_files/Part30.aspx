<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part30.aspx.cs" Inherits="pythonlearn_files_Part30" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
                                            <a href="part29.aspx">
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
                                            <a href="part31.aspx">
                                                <button type="button" class="btn btn-outline-success btn-icon-text">
                                                    <i class="ti-alert btn-icon-prepend"></i>
                                                    Next
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>3.1  Boolean expressions
                                                </h2>
                                            </div>
                                             <div class="card-body">
                                            <p >
                                                A
    <span class="s5">boolean expression </span>is an expression that is either true or false. The following examples use the operator
                                                <span class="s3">==</span>, which compares two operands and produces
    <span class="s3">True </span>if they are equal and
    <span class="s3">False </span>otherwise:
                                            </p></div>
                                            <div class="card-body">
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #3FA070;">5 </span>==
    <span style="color: #3FA070;">5</span>
                                            </p>
                                            <p class="s26" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">True
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #3FA070;">5 </span>==
    <span style="color: #3FA070;">6</span>
                                            </p>
                                            <p class="s26" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">False
                                            </p></div>
                                           <div class="card-body">
                                            <p class="s3">
                                                True
    <span class="p">and </span>False
    <span class="p">are special values that belong to the class </span>bool
    <span class="p">; they are not strings:</span>
                                            </p>
                                                </div>
                                           <div class="card-body">
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <span style="color: #656565;">&gt;&gt;&gt; </span>type(
    <span style="color: #19167C;">True</span>)
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &lt;
    <span class="s23">class </span>
                                                <span style="color: #3F70A0;">&#39;bool&#39;</span>&gt;
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <span style="color: #656565;">&gt;&gt;&gt; </span>type(
    <span style="color: #19167C;">False</span>)
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &lt;
    <span class="s23">class </span>
                                                <span style="color: #3F70A0;">&#39;bool&#39;</span>&gt;
                                            </p>
                                               </div>
                                            <div class="card-body">
                                            <p>
                                                The
    <span class="s3">== </span>operator is one of the
    <span class="s5">comparison operators</span>; the others are:
                                            </p>
                                            </div>
                                            <div class="card-body">
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                x
    <span style="color: #656565;">!= </span>y
    <span class="s27"># x is not equal to y</span>
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                x
    <span style="color: #656565;">&gt; </span>y
    <span class="s27"># x is greater than y</span>
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                x
    <span style="color: #656565;">&lt; </span>y
    <span class="s27"># x is less than y</span>
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                x
    <span style="color: #656565;">&gt;= </span>y
    <span class="s27"># x is greater than or equal to y</span>
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                x
    <span style="color: #656565;">&lt;= </span>y
    <span class="s27"># x is less than or equal to y</span>
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                x
    <span style="color: #656565;">is </span>y
    <span class="s27"># x is the same as y</span>
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                x
    <span style="color: #656565;">is not </span>y
    <span class="s27"># x is not the same as y</span>
                                            </p>
                                                </div>
                                           <div class="card-body">
                                            <p >
                                                Although these operations are probably familiar to you, the Python symbols are different
                                                from the mathematical symbols for the same operations. A common error is to use
                                                a single equal sign (
    <span class="s3">=</span>) instead of a double equal sign (
    <span class="s3">==</span>). Remember that
    <span class="s3">= </span>is an assignment operator and
    <span class="s3">== </span>is a comparison operator. There is no such thing as
    <span class="s3">=&lt; </span>or
    <span class="s3">=&gt;</span>.
                                            </p>
                                            </div>
                                          
                                            <a href="part29.aspx">
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
                                            <a href="part31.aspx">
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

