<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part28.aspx.cs" Inherits="pythonlearn_files_Part28" %>

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
                                            <a href="part27.aspx">
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
                                            <a href="part29.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>2.13  Debugging
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    At this point, the syntax error you are most likely to make is an illegal variable
                                                    name, like
    <span class="s3">class </span>and
    <span class="s3">yield</span>, which are keywords, or
    <span class="s3">odd~job </span>and
    <span class="s3">US$</span>, which contain illegal characters.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    If you put a space in a variable name, Python thinks it is two operands without
                                                    an operator:
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    &gt;&gt;&gt;
    <span style="color: #231F20;">bad name </span>=
    <span style="color: #3FA070;">5 </span>
                                                </p>
                                                <p>
                                                    <span style="color: #BC7A00;">SyntaxError</span>
                                                    <span style="color: #231F20;">: invalid syntax</span>
                                                </p>
                                                <p>
                                                    <br />
                                                </p>
                                                <p>
                                                    &gt;&gt;&gt;
    <span style="color: #231F20;">month </span>=
    <span style="color: #3FA070;">09</span>
                                                </p>
                                                <p>
                                                    File
    <span style="color: #3F70A0;">&quot;&lt;stdin&gt;&quot;</span>, line
    <span style="color: #3FA070;">1 </span>
                                                </p>
                                                <p>
                                                    month
    <span style="color: #656565;">= </span>
                                                    <span style="color: #3FA070;">09</span>
                                                </p>
                                                <p>
                                                    <span style="color: #BC7A00;">SyntaxError</span>
                                                    <span style="color: #231F20;">: invalid token</span>
                                                </p>
                                            </div>

                                            <div class="card-body">
                                                <p>
                                                    For syntax errors, the error messages don’t help much. The most common messages
                                                    are
    <span class="s3">SyntaxError: invalid syntax </span>and
    <span class="s3">SyntaxError: invalid token</span>, neither of which is very informative.
                                                </p>
                                                <p>
                                                    The runtime error you are most likely to make is a “use before def;” that is, trying
                                                    to use a variable before you have assigned a value. This can happen if you spell
                                                    a variable name wrong:
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    &gt;&gt;&gt;
    <span style="color: #231F20;">principal </span>=
    <span style="color: #3FA070;">327.68</span>
                                                </p>
                                                <p>
                                                    &gt;&gt;&gt;
    <span style="color: #231F20;">interest </span>=
    <span style="color: #231F20;">principle </span>*
    <span style="color: #231F20;">rate</span>
                                                </p>
                                                <p>
                                                    <span style="color: #BC7A00;">NameError</span>: name
    <span style="color: #3F70A0;">&#39;principle&#39; </span>
                                                    <span style="color: #656565;">is not </span>defined
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    Variables names are case sensitive, so
    <span class="s3">LaTeX </span>is not the same as
    <span class="s3">latex</span>.
                                                </p>
                                                <p>
                                                    At this point, the most likely cause of a semantic error is the order of operations.
                                                    For example, to evaluate 1
    <span class="s3">/</span>2
    <span class="s3">π</span>, you might be tempted to write
                                                </p>
                                                <p>
                                                    <br />
                                                </p>
                                                <p>
                                                    &gt;&gt;&gt;
    <span style="color: #3FA070;">1.0 </span>/
    <span style="color: #3FA070;">2.0 </span>*
    <span style="color: #231F20;">pi</span>
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    But the division happens first, so you would get
    <span class="s3">π/</span>2, which is not the same thing! There is no way for Python to know what you meant to write, so in
                                                this case you don’t get an error message; you just get the wrong answer.
                                                </p>
                                            </div>
                                            <a href="part27.aspx">
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
                                            <a href="part29.aspx">
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

