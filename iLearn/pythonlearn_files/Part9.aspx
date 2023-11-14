<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part9.aspx.cs" Inherits="pythonlearn_files_Part9" %>

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
                                            <a href="part8.aspx">
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
                                            <a href="part10.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>1.7  Writing a program
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                            <p >Typing commands
                                                into the Python interpreter is a great way to experiment with Python’s features,
                                                but it is not recommended for solving more complex problems.</p>
                                                </div>
                                             <div class="card-body">
                                            <p >
                                                When we want to write a program, we use a text editor to write the Python instructions
                                                into a file, which is called a
    <span class="s5">script</span>. By convention, Python scripts have names that end with
    <span class="s3">.py</span>.
                                            </p></div>
                                             <div class="card-body">
                                            <p >
                                                To execute the script, you have to tell the Python interpreter the name of the file.
                                                In a command window, you would type
    <span class="s3">python hello.py </span>as follows:
                                            </p></div>
                                            <div class="card-body">
                                            <p class="s3" >
                                                $
    <span class="s23">cat </span>hello.py
                                            </p>
                                            <p class="s3">
                                                <span class="s23">print</span>(
    <span style="color: #3F70A0;">&#39;Hello world!&#39;</span>)
                                            </p>
                                            <p class="s3" >
                                                $
    <span class="s23">python </span>hello.py
                                            </p></div>
                                             <div class="card-body">
                                            <p class="s23" >
                                                Hello
    <span class="s3">world!</span>
                                            </p>
                                           </div>
                                             <div class="card-body">
                                            <p>The “$” is the
                                                operating system prompt, and the “cat hello.py” is showing us that the file “hello.py”
                                                has a one-line Python program to print a string.</p></div>
                                             <div class="card-body">
                                            <p >
                                                We call the Python interpreter and tell it to read its source code from the file
                                                “hello.py” instead of prompting us for lines of Python code interactively.</p></div>
                                             <div class="card-body">
                                            <p >
                                                You will notice that there was no need to have
    <span class="s5">quit() </span>at the end of the Python program in the file. When Python is reading your source code from a
                                                file, it knows to stop when it reaches the end of the file.
                                            </p></div>
                                            <a href="part8.aspx">
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
                                            <a href="part10.aspx">
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

