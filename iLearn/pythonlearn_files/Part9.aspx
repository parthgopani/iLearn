<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part9.aspx.cs" Inherits="pythonlearn_files_Part9" %>

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
                                            <a href="part8.aspx">
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
                                            <a href="part10.aspx">
                                                <button type="button" class="btn btn-outline-success btn-icon-text">
                                                    <i class="ti-alert btn-icon-prepend"></i>
                                                    Next
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>1.7  Writing a program
                                                </h2>
                                            </div>
                                            <p style="padding-left: 7pt; text-indent: 0pt; text-align: justify;">Typing commands
                                                into the Python interpreter is a great way to experiment with Python’s features,
                                                but it is not recommended for solving more complex problems.</p>
                                            <p style="padding-top: 6pt; padding-left: 7pt; text-indent: 0pt; text-align: justify;">
                                                When we want to write a program, we use a text editor to write the Python instructions
                                                into a file, which is called a
    <span class="s5">script</span>. By convention, Python scripts have names that end with
    <span class="s3">.py</span>.
                                            </p>
                                            <p style="padding-top: 6pt; padding-left: 7pt; text-indent: 0pt; text-align: justify;">
                                                To execute the script, you have to tell the Python interpreter the name of the file.
                                                In a command window, you would type
    <span class="s3">python hello.py </span>as follows:
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s3" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                $
    <span class="s23">cat </span>hello.py
                                            </p>
                                            <p class="s3" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                <span class="s23">print</span>(
    <span style="color: #3F70A0;">&#39;Hello world!&#39;</span>)
                                            </p>
                                            <p class="s3" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                $
    <span class="s23">python </span>hello.py
                                            </p>
                                            <p class="s23" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                Hello
    <span class="s3">world!</span>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 6pt; text-indent: 0pt; text-align: justify;">The “$” is the
                                                operating system prompt, and the “cat hello.py” is showing us that the file “hello.py”
                                                has a one-line Python program to print a string.</p>
                                            <p style="padding-top: 6pt; padding-left: 5pt; text-indent: 0pt; text-align: justify;">
                                                We call the Python interpreter and tell it to read its source code from the file
                                                “hello.py” instead of prompting us for lines of Python code interactively.</p>
                                            <p style="padding-top: 6pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                You will notice that there was no need to have
    <span class="s5">quit() </span>at the end of the Python program in the file. When Python is reading your source code from a
                                                file, it knows to stop when it reaches the end of the file.
                                            </p>
                                            <a href="part8.aspx">
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
                                            <a href="part10.aspx">
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

