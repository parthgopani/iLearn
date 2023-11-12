<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part32.aspx.cs" Inherits="pythonlearn_files_Part32" %>

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
                                            <a href="part31.aspx">
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
                                            <a href="part33.aspx">
                                                <button type="button" class="btn btn-outline-success btn-icon-text">
                                                    <i class="ti-alert btn-icon-prepend"></i>
                                                    Next
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>3.3  Conditional execution
                                                </h2>
                                            </div>

                                            <p style="padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                In order to write useful programs, we almost always need the ability to check condi-
                                                tions and change the behavior of the program accordingly.
    <span class="s5">Conditional statements </span>give us this ability. The simplest form is the
    <span class="s3">if </span>statement:
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s3" style="padding-top: 6pt; padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                <span class="s23">if </span>x
    <span style="color: #656565;">&gt; </span>
                                                <span style="color: #3FA070;">0 </span>:
                                            </p>
                                            <p class="s3" style="padding-left: 27pt; text-indent: 0pt; text-align: left;">
                                                print(
    <span style="color: #3F70A0;">&#39;x is positive&#39;</span>)
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <span>
                                                    <img width="158" height="136" alt="image" src="Image_009.png" /></span>
                                            </p>
                                            <p class="s33" style="text-indent: 0pt; text-align: left;">Yes</p>
                                            <p style="text-indent: 0pt; text-align: left;" />
                                            <p class="s34" style="text-indent: 0pt; line-height: 7pt; text-align: left;">
                                                x
    <span class="s35"></span>&gt;
    <span class="s35"></span>0
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;" />
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s34" style="padding-left: 11pt; text-indent: 0pt; text-align: left;">
                                                print(‘x
    <span class="s35"></span>is
    <span class="s35"></span>postitive’)
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;" />
                                            <p style="padding-top: 6pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                The boolean expression after the
    <span class="s3">if </span>statement is called the
    <span class="s5">condition</span>. We end the
    <span class="s3">if </span>statement with a colon character (:) and the line(s) after the if statement are indented.
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-top: 3pt; padding-left: 142pt; text-indent: 0pt; text-align: left;">
                                                Figure 3.1: If Logic</p>
                                            <p class="s5" style="padding-top: 1pt; padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <a name="bookmark106">3.4. ALTERNATIVE EXECUTION</a>
                                                <span class="s11"></span>
                                                <span class="p">33</span>
                                                <a name="bookmark108">&zwnj;</a>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 52pt; text-indent: 0pt; text-align: justify;">If the logical
                                                condition is true, then the indented statement gets executed. If the logical condition
                                                is false, the indented statement is skipped.</p>
                                            <p style="padding-top: 5pt; padding-left: 51pt; text-indent: 0pt; text-align: justify;">
                                                <span class="s3">if </span>statements have the same structure as function definitions
                                                or
    <span class="s3">for </span>
                                                <a href="part49.aspx#bookmark108" class="s4">loops</a>
                                                <span style="color: #00F; font-family: &quot; eras medium itc&quot; , sans-serif;
                                                    font-style: normal; font-weight: normal; text-decoration: none; font-size: 6.5pt;
                                                    vertical-align: 3pt;">1</span>. The statement consists of a header line that
                                                ends with the colon character (:) followed by an indented block. Statements like
                                                this are called
    <span class="s5">compound statements </span>because they stretch across more than one line.
                                            </p>
                                            <p style="padding-top: 6pt; padding-left: 51pt; text-indent: 0pt; text-align: justify;">
                                                There is no limit on the number of statements that can appear in the body, but there
                                                must be at least one. Occasionally, it is useful to have a body with no statements
                                                (usually as a place holder for code you haven’t written yet). In that case, you
                                                can use the
    <span class="s3">pass </span>statement, which does nothing.
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <span class="s23">if </span>x
    <span style="color: #656565;">&lt; </span>
                                                <span style="color: #3FA070;">0 </span>:
                                            </p>
                                            <p class="s23" style="padding-left: 72pt; text-indent: 0pt; text-align: left;">
                                                pass
    <span class="s27"># need to handle negative values!</span>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 52pt; text-indent: 0pt; text-align: justify;">
                                                If you enter an
    <span class="s3">if </span>statement in the Python interpreter, the prompt will change from three chevrons to three dots to
                                                indicate you are in the middle of a block of statements, as shown below:
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">x </span>=
    <span style="color: #3FA070;">3</span>
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span class="s23">if </span>
                                                <span style="color: #231F20;">x </span>&lt;
    <span style="color: #3FA070;">10</span>
                                                <span style="color: #231F20;">:</span>
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                ...  print(
    <span style="color: #3F70A0;">&#39;Small&#39;</span>)
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">...
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">Small
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">&gt;&gt;&gt;
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 52pt; text-indent: 0pt; text-align: justify;">When using the
                                                Python interpreter, you must leave a blank line at the end of a block, otherwise
                                                Python will return an error:</p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">x </span>=
    <span style="color: #3FA070;">3</span>
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span class="s23">if </span>
                                                <span style="color: #231F20;">x </span>&lt;
    <span style="color: #3FA070;">10</span>
                                                <span style="color: #231F20;">:</span>
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                ...  print(
    <span style="color: #3F70A0;">&#39;Small&#39;</span>)
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                ... print(
    <span style="color: #3F70A0;">&#39;Done&#39;</span>)
                                            </p>
                                            <p class="s3" style="padding-left: 72pt; text-indent: -10pt; text-align: left;">
                                                File
    <span style="color: #3F70A0;">&quot;&lt;stdin&gt;&quot;</span>, line
    <span style="color: #3FA070;">3 </span>print(
    <span style="color: #3F70A0;">&#39;Done&#39;</span>)
                                            </p>
                                            <p class="s22" style="padding-left: 93pt; text-indent: 0pt; text-align: left;">^
                                            </p>
                                            <p class="s24" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                SyntaxError
    <span style="color: #231F20;">: invalid syntax</span>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 51pt; text-indent: 0pt; text-align: justify;">A blank line at
                                                the end of a block of statements is not necessary when writing and executing a script,
                                                but it may improve readability of your code.</p>
                                            <a href="part31.aspx">
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
                                            <a href="part33.aspx">
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

