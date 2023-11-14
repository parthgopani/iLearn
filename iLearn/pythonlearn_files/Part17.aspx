<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part17.aspx.cs" Inherits="pythonlearn_files_Part17" %>

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
                                            <a href="part16.aspx">
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
                                            <a href="part18.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>2.2  Variables
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                            <p >
                                                One of the most powerful features of a programming language is the ability to manipulate
                                                <span class="s5">variables</span>. A variable is a name that refers to a value.
                                            </p></div>
                                            <div class="card-body">
                                            <p >
                                                An
    <span class="s5">assignment statement </span>creates new variables and gives them values:
                                            </p></div>
                                           <div class="card-body">
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">message </span>=
    <span style="color: #3F70A0;">&#39;And now for something completely different&#39;</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">n </span>=
    <span style="color: #3FA070;">17</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">pi </span>=
    <span style="color: #3FA070;">3.1415926535897931</span>
                                            </p></div>
                                            <div class="card-body">
                                            <p >
                                                This example makes three assignments. The first assigns a string to a new variable
                                                named
    <span class="s3">message</span>; the second assigns the integer 17 to
    <span class="s3">n</span>; the third assigns the (approximate) value of
    <span class="s3">π </span>to
    <span class="s3">pi</span>.
                                            </p></div>
                                            <div class="card-body">
                                            <p >
                                                To display the value of a variable, you can use a print statement:</p>
                                           
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">print(n) </span>
                                                <span style="color: #3FA070;">17</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">print(pi) </span>
                                                <span style="color: #3FA070;">3.141592653589793</span>
                                            </p></div>
                                           <div class="card-body">
                                            <p style="padding-left: 6pt; text-indent: 0pt; text-align: left;">The type of a variable
                                                is the type of the value it refers to.</p>
                                            
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">type(message)</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &lt;
    <span class="s23">class </span>
                                                <span style="color: #3F70A0;">&#39;str&#39;</span>&gt;
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">type(n)</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &lt;
    <span class="s23">class </span>
                                                <span style="color: #3F70A0;">&#39;int&#39;</span>&gt;
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">type(pi)</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &lt;
    <span class="s23">class </span>
                                                <span style="color: #3F70A0;">&#39;float&#39;</span>&gt;
                                            </p></div>
                                            <div class="card-body">
                                            <p class="s5" style="padding-top: 1pt; padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <a name="bookmark63">2.3. VARIABLE NAMES AND KEYWORDS</a>
                                                <span class="s11"></span>
                                                <span class="p">21</span>
                                            </p></div>
                                            <a href="part16.aspx">
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
                                            <a href="part18.aspx">
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

