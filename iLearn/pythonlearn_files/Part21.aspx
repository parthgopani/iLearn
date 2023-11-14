<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part21.aspx.cs" Inherits="pythonlearn_files_Part21" %>

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
                                            <a href="part20.aspx">
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
                                            <a href="part22.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>2.6  Expressions
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                            <p >
                                                An
    <span class="s5">expression </span>is a combination of values, variables, and operators. A value all by itself is considered
                                                an expression, and so is a variable, so the following are all legal expressions
                                                (assuming that the variable
    <span class="s3">x </span>has been assigned a value):
                                            </p></div>
                                           <div class="card-body">
                                            <p class="s15" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">17
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">x</p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                x
    <span style="color: #656565;">+ </span>
                                                <span style="color: #3FA070;">17</span>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p></div>
                                            <div class="card-body">
                                            <p >
                                                If you type an expression in interactive mode, the interpreter
    <span class="s5">evaluates </span>it and displays the result:
                                            </p></div>
                                            
                                            <div class="card-body">
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #3FA070;">1 </span>+
    <span style="color: #3FA070;">1</span>
                                            </p>
                                            <p class="s15" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">2
                                            </p></div>
                                            <div class="card-body">
                                            <p >
                                                But in a script, an expression all by itself doesn’t do anything! This is a common
                                                source of confusion for beginners.</p>
                                          
                                            
                                                </div>
                                            <a href="part20.aspx">
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
                                            <a href="part22.aspx">
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

