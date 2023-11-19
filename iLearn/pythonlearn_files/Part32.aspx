<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part32.aspx.cs" Inherits="pythonlearn_files_Part32" %>

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
                                            <a href="part31.aspx">
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
                                            <a href="part33.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>3.3  Conditional execution
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    In order to write useful programs, we almost always need the ability to check condi-
                                                    tions and change the behavior of the program accordingly.
    <span class="s5">Conditional statements </span>give us this ability. The simplest form is the
    <span class="s3">if </span>statement:
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    <span class="s23">if </span>x
    <span style="color: #656565;">&gt; </span>
                                                    <span style="color: #3FA070;">0 </span>:
                                                </p>
                                                <p>
                                                    print(
    <span style="color: #3F70A0;">&#39;x is positive&#39;</span>)
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    The boolean expression after the
                                                    <span class="s3">if </span>statement is called the
                                                    <span class="s5">condition</span>. We end the
                                                    <span class="s3">if </span>statement with a colon character (:) and the line(s)
                                                    after the if statement are indented.
                                                </p>
                                            </div>
                                                <p style="text-indent: 0pt; text-align: center;">
                                                    <span>
                                                        <img width="390" height="270" alt="image" src="../images/pythonimages/Image_009.png" /></span>
                                                </p>

                                            <div class="card-body">
                                                <p>
                                                    If the logical
                                                condition is true, then the indented statement gets executed. If the logical condition
                                                    is false, the indented statement is skipped.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    <span class="s3">if </span>statements have the same structure as function definitions
                                                    or
    <span class="s3">for </span>
                                                    loops
                      . The statement consists of a header line that
                                                ends with the colon character (:) followed by an indented block. Statements like
                                                this are called
    <span class="s5">compound statements </span>because they stretch across more than one line.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    There is no limit on the number of statements that can appear in the body, but there
                                                    must be at least one. Occasionally, it is useful to have a body with no statements
                                                    (usually as a place holder for code you haven’t written yet). In that case, you
                                                    can use the
    <span class="s3">pass </span>statement, which does nothing.
                                                </p>
                                            </div>

                                            <div class="card-body">
                                                <p>
                                                    <span class="s23">if </span>x
    <span style="color: #656565;">&lt; </span>
                                                    <span style="color: #3FA070;">0 </span>:
                                                </p>
                                                <p>
                                                    pass
    <span style="color: #65B9E3;"># need to handle negative values!</span>
                                                </p>
                                            </div>


                                            <div class="card-body">
                                                <p>
                                                    If you enter an
    <span class="s3">if </span>statement in the Python interpreter, the prompt will change from three chevrons to three dots to
                                                indicate you are in the middle of a block of statements, as shown below:
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    &gt;&gt;&gt;
    <span style="color: #231F20;">x </span>=
    <span style="color: #3FA070;">3</span>
                                                </p>
                                                <p>
                                                    &gt;&gt;&gt;
    <span class="s23">if </span>
                                                    <span style="color: #231F20;">x </span>&lt;
    <span style="color: #3FA070;">10</span>
                                                    <span style="color: #231F20;">:</span>
                                                </p>
                                                <p>
                                                    ...  print(
    <span style="color: #3F70A0;">&#39;Small&#39;</span>)
                                                </p>
                                                <p>
                                                    ...
                                                </p>
                                                <p>
                                                    Small
                                                </p>
                                                <p>
                                                    &gt;&gt;&gt;
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    When using the
                                                Python interpreter, you must leave a blank line at the end of a block, otherwise
                                                Python will return an error:
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    &gt;&gt;&gt;
    <span style="color: #231F20;">x </span>=
    <span style="color: #3FA070;">3</span>
                                                </p>
                                                <p>
                                                    &gt;&gt;&gt;
    <span class="s23">if </span>
                                                    <span style="color: #231F20;">x </span>&lt;
    <span style="color: #3FA070;">10</span>
                                                    <span style="color: #231F20;">:</span>
                                                </p>
                                                <p>
                                                    ...  print(
    <span style="color: #3F70A0;">&#39;Small&#39;</span>)
                                                </p>
                                                <p>
                                                    ... print(
    <span style="color: #3F70A0;">&#39;Done&#39;</span>)
                                                </p>
                                                <p>
                                                    File
    <span style="color: #3F70A0;">&quot;&lt;stdin&gt;&quot;</span>, line
                                                </p>
                                                <p>
                                                    <span style="color: #3FA070;">3 </span>print(
    <span style="color: #3F70A0;">&#39;Done&#39;</span>)
                                                </p>
                                                <p>
                                                    SyntaxError
    <span style="color: #231F20;">: invalid syntax</span>
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <div class="card-body">
                                                    <p>
                                                        A blank line at
                                                the end of a block of statements is not necessary when writing and executing a script,
                                                    but it may improve readability of your code.
                                                    </p>
                                                </div>
                                                <a href="part31.aspx">
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
                                                <a href="part33.aspx">
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
    </div>

</asp:Content>

