<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part41.aspx.cs" Inherits="pythonlearn_files_Part41" %>

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
                                            <a href="part40.aspx">
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
                                            <div class="card-body" style="text-align: center;">
                                                <h2>3.8  Short-circuit evaluation of logical expressions
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                            <p>
                                                When Python is processing a logical expression such as
    <span class="s3">x &gt;= 2 and (x/y) &gt; 2</span>, it evaluates the expression from left to right. Because of the definition
                                                of
    <span class="s3">and</span>, if
    <span class="s3">x </span>is less than 2, the expression
    <span class="s3">x &gt;= 2 </span>is
    <span class="s3">False </span>and so the whole expression is
    <span class="s3">False </span>regardless of whether
    <span class="s3">(x/y) &gt; 2 </span>evaluates to
    <span class="s3">True </span>or
    <span class="s3">False</span>.
                                            </p>
                                                </div>
                                            <div class="card-body">
                                            <p >
                                                When Python detects that there is nothing to be gained by evaluating the rest of
                                                a logical expression, it stops its evaluation and does not do the computations in
                                                the rest of the logical expression. When the evaluation of a logical expression
                                                stops because the overall value is already known, it is called
    <span class="s5">short-circuiting </span>the evaluation.
                                            </p></div>
                                            <div class="card-body">
                                            <p >
                                                While this may seem like a fine point, the short-circuit behavior leads to a clever
                                                technique called the
    <span class="s5">guardian pattern</span>. Consider the following code sequence in the Python interpreter:
                                            </p></div>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <div class="card-body">
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">x </span>=
    <span style="color: #3FA070;">6</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">y </span>=
    <span style="color: #3FA070;">2</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">x </span>&gt;=
    <span style="color: #3FA070;">2 </span>and
    <span style="color: #231F20;">(x</span>/
    <span style="color: #231F20;">y) </span>&gt;
    <span style="color: #3FA070;">2 </span>
                                                <span style="color: #19167C;">True</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">x </span>=
    <span style="color: #3FA070;">1</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">y </span>=
    <span style="color: #3FA070;">0</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">x </span>&gt;=
    <span style="color: #3FA070;">2 </span>and
    <span style="color: #231F20;">(x</span>/
    <span style="color: #231F20;">y) </span>&gt;
    <span style="color: #3FA070;">2 </span>
                                                <span style="color: #19167C;">False</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">x </span>=
    <span style="color: #3FA070;">6</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">y </span>=
    <span style="color: #3FA070;">0</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">x </span>&gt;=
    <span style="color: #3FA070;">2 </span>and
    <span style="color: #231F20;">(x</span>/
    <span style="color: #231F20;">y) </span>&gt;
    <span style="color: #3FA070;">2</span>
                                            </p>
                                            <p class="s3" style="padding-left: 17pt; text-indent: -10pt; text-align: left;">
                                                Traceback (most recent call last): File
    <span style="color: #3F70A0;">&quot;&lt;stdin&gt;&quot;</span>, line
    <span style="color: #3FA070;">1</span>,
    <span style="color: #656565;">in &lt;</span>module
    <span style="color: #656565;">&gt;</span>
                                            </p>
                                            <p class="s24" style="padding-left: 7pt; text-indent: 0pt; line-height: 12pt; text-align: left;">
                                                ZeroDivisionError
    <span style="color: #231F20;">: division by zero</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">&gt;&gt;&gt;
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p></div>
                                            <div class="card-body">
                                            <p >
                                                The third calculation failed because Python was evaluating
    <span class="s3">(x/y) </span>and
    <span class="s3">y </span>was zero, which causes a runtime error. But the first and the second examples did
    <span class="s5">not </span>fail because in the first calculation
    <span class="s3">y </span>was non zero and in the second one the first part of these expressions
    <span class="s3">x &gt;= 2 </span>evaluated to
    <span class="s3">False </span>so the
    <span class="s3">(x/y) </span>was not ever executed due to the
    <span class="s5">short-circuit </span>rule and there was no error.
                                            </p></div>
                                            <div class="card-body">
                                            <p >
                                                We can construct the logical expression to strategically place a
    <span class="s5">guard </span>evaluation just before the evaluation that might cause an error as follows:
                                            </p></div>
                                            <div class="card-body">
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">x </span>=
    <span style="color: #3FA070;">1</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">y </span>=
    <span style="color: #3FA070;">0</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">x </span>&gt;=
    <span style="color: #3FA070;">2 </span>and
    <span style="color: #231F20;">y </span>!=
    <span style="color: #3FA070;">0 </span>and
    <span style="color: #231F20;">(x</span>/
    <span style="color: #231F20;">y) </span>&gt;
    <span style="color: #3FA070;">2 </span>
                                                <span style="color: #19167C;">False</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">x </span>=
    <span style="color: #3FA070;">6</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">y </span>=
    <span style="color: #3FA070;">0</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">x </span>&gt;=
    <span style="color: #3FA070;">2 </span>and
    <span style="color: #231F20;">y </span>!=
    <span style="color: #3FA070;">0 </span>and
    <span style="color: #231F20;">(x</span>/
    <span style="color: #231F20;">y) </span>&gt;
    <span style="color: #3FA070;">2 </span>
                                                <span style="color: #19167C;">False</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">x </span>&gt;=
    <span style="color: #3FA070;">2 </span>and
    <span style="color: #231F20;">(x</span>/
    <span style="color: #231F20;">y) </span>&gt;
    <span style="color: #3FA070;">2 </span>and
    <span style="color: #231F20;">y </span>!=
    <span style="color: #3FA070;">0</span>
                                            </p>
                                                </div>
                                            <div class="card-body">
                                            <p class="s5" >
                                                <a name="bookmark117">3.9. DEBUGGING</a>
                                              
                                            </p>
                                           
                                                </div>
                                            <div class="card-body">
                                            <p class="s3" style="padding-left: 62pt; text-indent: -10pt; text-align: left;">
                                                Traceback (most recent call last): File
    <span style="color: #3F70A0;">&quot;&lt;stdin&gt;&quot;</span>, line
    <span style="color: #3FA070;">1</span>,
    <span style="color: #656565;">in &lt;</span>module
    <span style="color: #656565;">&gt;</span>
                                            </p>
                                            <p class="s24" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                ZeroDivisionError
    <span style="color: #231F20;">: division by zero</span>
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">&gt;&gt;&gt;
                                            </p>
                                           
                                                </div>
                                            <div class="card-body">
                                            <p >
                                                In the first logical expression,
    <span class="s3">x &gt;= 2 </span>is
    <span class="s3">False </span>so the evaluation stops at the
    <span class="s3">and</span>. In the second logical expression,
    <span class="s3">x &gt;= 2 </span>is
    <span class="s3">True </span>but
    <span class="s3">y != 0 </span>is
    <span class="s3">False </span>so we never reach
    <span class="s3">(x/y)</span>.
                                            </p>
                                                </div>
                                            <div class="card-body">
                                            <p >
                                                In the third logical expression, the
    <span class="s3">y != 0 </span>is
    <span class="s5">after </span>the
    <span class="s3">(x/y) </span>calculation so the expression fails with an error.
                                            </p></div>
                                            <div class="card-body">
                                            <p >
                                                In the second expression, we say that
    <span class="s3">y != 0 </span>acts as a
    <span class="s5">guard </span>to insure that we only execute
    <span class="s3">(x/y) </span>if
    <span class="s3">y </span>is non-zero.
                                            </p></div>
                                            <a href="part40.aspx">
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

