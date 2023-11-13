<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="PythonTutorial.aspx.cs" Inherits="PythonTutorial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
            <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#learn" aria-expanded="false"
                    aria-controls="ui-basic">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">Learn Python</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="learn">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part3.aspx">
                                <span class="menu-title">1.1  Creativity and motivation</span>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part4.aspx">
                                <span class="menu-title">1.2  Computer hardware architecture</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part5.aspx">
                                <span class="menu-title">1.3  Understanding programming</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part6.aspx">
                                <span class="menu-title">1.4  Words and sentences</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part7.aspx">
                                <span class="menu-title">1.5  Conversing with Python</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part8.aspx">
                                <span class="menu-title">1.6  Terminology: Interpreter and compiler</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part9.aspx">
                                <span class="menu-title">1.7  Writing a program</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part10.aspx">
                                <span class="menu-title">1.8  What is a program?</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part11.aspx">
                                <span class="menu-title">1.9  The building blocks of programs</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part12.aspx">
                                <span class="menu-title">1.10  What could possibly go wrong?</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part13.aspx">
                                <span class="menu-title">1.11  Debugging</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part14.aspx">
                                <span class="menu-title">1.12  The learning journey</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#variable" aria-expanded="false"
                    aria-controls="ui-basic">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">Basic Python</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="variable">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part16.aspx">
                                <span class="menu-title">2.1  Values and types</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part17.aspx">
                                <span class="menu-title">2.2  Variables</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part18.aspx">
                                <span class="menu-title">2.3  Variable names and keywords</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part19.aspx">
                                <span class="menu-title">2.4  Statements</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part20.aspx">
                                <span class="menu-title">2.5  Operators and operands</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part21.aspx">
                                <span class="menu-title">2.6  Expressions</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part22.aspx">
                                <span class="menu-title">2.7  Order of operations</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part23.aspx">
                                <span class="menu-title">2.8  Modulus operator</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part24.aspx">
                                <span class="menu-title">2.9  String operations</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part25.aspx">
                                <span class="menu-title">2.10  Asking the user for input</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part26.aspx">
                                <span class="menu-title">2.11  Comments</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part27.aspx">
                                <span class="menu-title">2.12  Choosing mnemonic variable names</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part28.aspx">
                                <span class="menu-title">2.13  Debugging</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#conditional" aria-expanded="false"
                    aria-controls="ui-basic">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">Conditional</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="conditional">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part30.aspx">
                                <span class="menu-title">3.1  Boolean expressions</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/par31.aspx">
                                <span class="menu-title">3.2  Logical operators</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part32.aspx">
                                <span class="menu-title">3.3  Conditional execution</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part33.aspx">
                                <span class="menu-title">3.4  Alternative execution</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part34.aspx">
                                <span class="menu-title">3.5  Chained conditionals</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part35.aspx">
                                <span class="menu-title">3.6  Nested conditionals</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part36.aspx">
                                <span class="menu-title">3.7  Catching exceptions using try and except</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pythonlearn_files/part37.aspx">
                                <span class="menu-title">3.8  Short-circuit evaluation of logical expressions</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
        </ul>
    </nav>

    <div class="content-wrapper">

    </div>
</asp:Content>

