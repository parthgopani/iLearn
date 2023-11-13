<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part16.aspx.cs" Inherits="pythonlearn_files_Part16" %>

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
                                            <a href="part15.aspx">
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
                                            <a href="part17.aspx">
                                                <button type="button" class="btn btn-outline-success btn-icon-text">
                                                    <i class="ti-alert btn-icon-prepend"></i>
                                                    Next
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>2.1  Values and types
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                            <p >
                                                A
    <span class="s5">value </span>is one of the basic things a program works with, like a letter or a number. The values we have
                                                seen so far are 1, 2, and “Hello, World!”
                                            </p></div>
                                            <div class="card-body">
                                            <p >
                                                These values belong to different
    <span class="s5">types</span>: 2 is an integer, and “Hello, World!” is a
    <span class="s5">string</span>, so called because it contains a “string” of letters. You (and the interpreter) can identify
                                                strings because they are enclosed in quotation marks.
                                            </p></div>
                                            <div class="card-body">
                                            <p >
                                                The
    <span class="s3">print </span>statement also works for integers. We use the
    <span class="s3">python </span>command to start the interpreter.
                                            </p></div>
                                           <div class="card-body">
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">python
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <span style="color: #656565;">&gt;&gt;&gt; </span>print(
    <span style="color: #3FA070;">4</span>)
    <span style="color: #3FA070;">4</span>
                                            </p></div>
                                           <div class="card-body">
                                            <p >If you are not
                                                sure what type a value has, the interpreter can tell you.</p></div>
                                           <div class="card-body">
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <span style="color: #656565;">&gt;&gt;&gt; </span>type(
    <span style="color: #3F70A0;">&#39;Hello, World!&#39;</span>)
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &lt;
    <span class="s23">class </span>
                                                <span style="color: #3F70A0;">&#39;str&#39;</span>&gt;
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <span style="color: #656565;">&gt;&gt;&gt; </span>type(
    <span style="color: #3FA070;">17</span>)
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &lt;
    <span class="s23">class </span>
                                                <span style="color: #3F70A0;">&#39;int&#39;</span>&gt;
                                            </p></div>
                                           <div class="card-body">
                                            <p >
                                                Not surprisingly, strings belong to the type
    <span class="s3">str </span>and integers belong to the type
    <span class="s3">int</span>. Less obviously, numbers with a decimal point belong to a type called
    <span class="s3">float</span>, because these numbers are represented in a format called
    <span class="s5">floating point</span>.
                                            </p></div>
                                           <div class="card-body">
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <span style="color: #656565;">&gt;&gt;&gt; </span>type(
    <span style="color: #3FA070;">3.2</span>)
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &lt;
    <span class="s23">class </span>
                                                <span style="color: #3F70A0;">&#39;float&#39;</span>&gt;
                                            </p></div>
                                           <div class="card-body">
                                            <p >What about values
                                                like “17” and “3.2”? They look like numbers, but they are in quotation marks like
                                                strings.</p></div>
                                           
                                           <div class="card-body">
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <a name="bookmark61"><span style="color: #656565;">&gt;&gt;&gt; </span></a>type(
                                                <span style="color: #3F70A0;">&#39;17&#39;</span>)
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &lt;
    <span class="s23">class </span>
                                                <span style="color: #3F70A0;">&#39;str&#39;</span>&gt;
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <span style="color: #656565;">&gt;&gt;&gt; </span>type(
    <span style="color: #3F70A0;">&#39;3.2&#39;</span>)
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &lt;
    <span class="s23">class </span>
                                                <span style="color: #3F70A0;">&#39;str&#39;</span>&gt;
                                            </p>
                                               </div>
                                            <div class="card-body">
                                           
                                            <p >They’re strings.
                                            </p></div>
                                            <div class="card-body">
                                            <p >
                                                When you type a large integer, you might be tempted to use commas between groups
                                                of three digits, as in 1,000,000. This is not a legal integer in Python, but it
                                                is legal:</p></div>
                                            <div class="card-body">
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <span style="color: #656565;">&gt;&gt;&gt; </span>print(
    <span style="color: #3FA070;">1</span>,
    <span style="color: #3FA070;">000</span>,
    <span style="color: #3FA070;">000</span>)
                                            </p>
                                            <p class="s15" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">1 0 0
                                            </p></div>
                                            <div class="card-body">
                                            <p >Well, that’s not
                                                what we expected at all! Python interprets 1,000,000 as a comma- separated sequence
                                                of integers, which it prints with spaces between.</p></div>
                                            <div class="card-body">
                                            <p >
                                                This is the first example we have seen of a semantic error: the code runs without
                                                producing an error message, but it doesn’t do the “right” thing.</p></div>
                                            <a href="part15.aspx">
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
                                            <a href="part17.aspx">
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

