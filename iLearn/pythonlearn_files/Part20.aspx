<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part20.aspx.cs" Inherits="pythonlearn_files_Part20" %>

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
                                            <a href="part19.aspx">
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
                                            <a href="part21.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>2.5  Operators and operands
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                            <p class="s5" >
                                                Operators
    <span class="p">are special symbols that represent computations like addition and mul-
        tiplication. The values the operator is applied to are called </span>operands
    <span class="p">.</span>
                                            </p></div>
                                            <div class="card-body">
                                            <p >
                                                The operators
    <span class="s3">+</span>,
    <span class="s3">-</span>,
    <span class="s3">*</span>,
    <span class="s3">/</span>, and
    <span class="s3">** </span>perform addition, subtraction, multiplication, division, and exponentiation, as in the following
                                                examples:
                                            </p></div>
                                           <div class="card-body">
                                            <p class="s15" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">20+32
                                            </p>
                                            <p class="s3" style="padding-left: 6pt; text-indent: 0pt; text-align: left;">
                                                hour
    <span style="color: #3FA070;">-1 </span>hour
    <span style="color: #656565;">*</span>
                                                <span style="color: #3FA070;">60</span>
                                                <span style="color: #656565;">+</span>minute minute
    <span style="color: #656565;">/</span>
                                                <span style="color: #3FA070;">60</span>
                                            </p>
                                            <p class="s15" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                5
    <span style="color: #656565;">**</span>2
    <span style="color: #231F20;">(</span>5+9
    <span style="color: #231F20;">)</span>
                                                <span style="color: #656565;">*</span>
                                                <span style="color: #231F20;">(</span>15-7
    <span style="color: #231F20;">)</span>
                                            </p></div>
                                           <div class="card-body">
                                            <p >There has been a change
                                                in the division operator between Python 2.x and Python</p></div>
                                            <div class="card-body">
                                            <p >3.x. In Python 3.x,
                                                the result of this division is a floating point result:</p></div>
                                           <div class="card-body">
                                            <p class="s22"  style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">minute </span>=
    <span style="color: #3FA070;">59</span>
                                            </p></div>
                                            <div class="card-body">
                                            <p class="s22"  style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">minute</span>/
    <span style="color: #3FA070;">60 0.9833333333333333</span>
                                            </p></div>
                                            <div class="card-body">
                                            <p >The division operator
                                                in Python 2.0 would divide two integers and truncate the result to an integer:
                                            </p></div>
                                            <div class="card-body">
                                            <p class="s22"  style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">minute </span>=
    <span style="color: #3FA070;">59</span>
                                            </p></div>
                                            <div class="card-body">
                                            <p class="s22"  style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">minute</span>/
    <span style="color: #3FA070;">60 0</span>
                                            </p></div>
                                            <div class="card-body">
                                            <p >
                                                To obtain the same answer in Python 3.0 use floored (
    <span class="s3">// </span>integer) division.
                                            </p></div>
                                            <div class="card-body">
                                            <p class="s5" >
                                                <a name="bookmark68">2.6. EXPRESSIONS</a>
                                                <span class="s11"></span>
                                               
                                            </p></div>
                                            <div class="card-body">
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">minute </span>=
    <span style="color: #3FA070;">59</span>
                                            </p></div>
                                            <div class="card-body">
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">minute</span>//
    <span style="color: #3FA070;">60 0</span>
                                            </p></div>
                                            <div class="card-body">
                                            <p >In Python 3.0
                                                integer division functions much more as you would expect if you entered the expression
                                                on a calculator.</p></div>
                                            <a href="part19.aspx">
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
                                            <a href="part21.aspx">
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
    <script>
function readAloud() {
    var paragraphs = document.querySelectorAll('.card-body p');
    var textToRead = Array.from(paragraphs).map(p => p.textContent).join(' ');
    responsiveVoice.speak(textToRead);
}
    </script>
</asp:Content>

