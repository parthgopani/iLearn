<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part15.aspx.cs" Inherits="pythonlearn_files_Part15" %>

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
                                            <a href="part14.aspx">
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
                                            <a href="part16.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>Variables, expressions, and statements
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                            <div class="toc">
                                                <a class="toc0" href="part27.aspx">2.1  Values and types</a>
                                                <a class="toc0" href="part28.aspx">2.2  Variables</a>
                                                <a class="toc0" href="part29.aspx">2.3  Variable names and keywords</a>
                                                <a class="toc0" href="part30.aspx">2.4  Statements</a>
                                                <a class="toc0" href="part31.aspx">2.5  Operators and operands</a>
                                                <a class="toc0" href="part32.aspx">2.6  Expressions</a>
                                                <a class="toc1" href="part33.aspx">Exercise 1: Type the following statements in the
                                                    Python interpreter to see what they do:</a>
                                                <a class="toc0" href="part34.aspx">2.7  Order of operations</a>
                                                <a class="toc0" href="part35.aspx">2.8  Modulus operator</a>
                                                <a class="toc0" href="part36.aspx">2.9  String operations</a>
                                                <a class="toc0" href="part37.aspx">2.10  Asking the user for input</a>
                                                <a class="toc0" href="part38.aspx">2.11  Comments</a>
                                                <a class="toc0" href="part39.aspx">2.12  Choosing mnemonic variable names</a>
                                                <a class="toc0" href="part40.aspx">2.13  Debugging</a>
                                                <a class="toc0" href="part41.aspx">2.14  Glossary</a>
                                                <a class="toc0" href="part42.aspx">2.15  Exercises</a>
                                                <a class="toc1" href="part43.aspx">Exercise 2: Write a program that uses input to prompt
                                                    a user for their name and then welcomes them.</a>
                                                <a class="toc1" href="part44.aspx">Exercise 3: Write a program to prompt the user for
                                                    hours and rate per hour to compute gross pay.</a>
                                                <a class="toc1" href="part45.aspx">Exercise 4: Assume that we execute the following
                                                    assignment state- ments:</a>
                                            </div>
                                                </div>
                                            <a href="part14.aspx">
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
                                            <a href="part16.aspx">
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
        // Select the paragraphs you want to read aloud
        var paragraphs = document.querySelectorAll('.card-body p');

        // Concatenate the text content of selected paragraphs
        var textToRead = Array.from(paragraphs).map(p => p.textContent).join(' ');

        // Use ResponsiveVoice for text-to-speech
        responsiveVoice.speak(textToRead);
    }
    </script>
</asp:Content>

