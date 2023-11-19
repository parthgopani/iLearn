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
                            <a class="nav-link" href="pythonlearn_files/part31.aspx">
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
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-md-12 grid-margin">
                    <div class="row">
                        <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                            <h2 class="font-weight-bold">Python Tutorial</h2>

                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <p class="card-title">Learn Python</p>
                            <div class="row">
                                <div class="col-12">
                                    <p>
                                        Python is one of the most popular programming languages. Although it is a general-purpose
                                        language, it is used in various areas of applications such as Machine Learning,
                                        Artificial Intelligence, web development, IoT, and more.
                                    </p>
                                    <br />
                                    <p>
                                        This Python tutorial has been written for the beginners to help them understand
                                        the basic to advanced concepts of Python Programming Language. After completing
                                        this tutorial, you will find yourself at a great level of expertise in Python, from
                                        where you can take yourself to the next levels to become a world class Software
                                        Engineer.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <p class="card-title">What is Python?</p>
                            <div class="row">
                                <div class="col-12">
                                    <p>
                                        Python is a very popular general-purpose interpreted, interactive, object-oriented,
                                        and high-level programming language. Python is dynamically-typed and garbage-collected
                                        programming language. It was created by Guido van Rossum during 1985- 1990. Like
                                        Perl, Python source code is also available under the GNU General Public License
                                        (GPL).
                                    </p>
                                    <br />
                                    <p>
                                        This tutorial gives a complete understanding of Python programming language starting
                                        from basic conceopts to advanced concepts. This tutorial will take you through simple
                                        and practical approaches while learning Python Programming language.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <p class="card-title">Learn by Example</p>
                            <div class="row">
                                <div class="col-12">
                                    <p>
                                        <a name="bookmark26">print(</a>
                                        <span style="color: #3F70A0;">&#39;Hello world!&#39;</span>)
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <p class="card-title">Why to Learn Python?</p>
                            <div class="row">
                                <div class="col-12">
                                    <p>
                                        Python is consistently rated as one of the world's most popular programming languages.
                                        Python is fairly easy to learn, so if you are starting to learn any programming
                                        language then Python could be your great choice. Today various Schools, Colleges
                                        and Universities are teaching Python as their primary programming language. There
                                        are many other good reasons which makes Python as the top choice of any programmer:
                                    </p>
                                    <br />
                                    <p>
                                        This Python tutorial has been written for the beginners to help them understand
                                        the basic to advanced concepts of Python Programming Language. After completing
                                        this tutorial, you will find yourself at a great level of expertise in Python, from
                                        where you can take yourself to the next levels to become a world class Software
                                        Engineer.
                                    </p>
                                    <br />
                                    <ul>
                                        <li>Python is Open Source which means its available free of cost.</li>
                                        <li>Python is simple and so easy to learn</li>
                                        <li>Python is versatile and can be used to create many different things.</li>
                                        <li>Python has powerful development libraries include AI, ML etc.</li>
                                        <li>Python is much in demand and ensures high salary</li>
                                    </ul>
                                    <p>
                                        Python is a MUST for students and working professionals to become a great Software
                                        Engineer specially when they are working in Web Development Domain. I will list
                                        down some of the key advantages of learning Python:
                                    </p>
                                    <br />
                                    <ul>
                                        <li><b>Python is Interpreted −</b> Python is processed at runtime by the interpreter.
                                            You do not need to compile your program before executing it. This is similar to
                                            PERL and PHP.</li>
                                        <li><b>Python is Interactive −</b> You can actually sit at a Python prompt and interact
                                            with the interpreter directly to write your programs.</li>
                                        <li><b>Python is Object-Oriented −</b> Python supports Object-Oriented style or technique
                                            of programming that encapsulates code within objects.</li>
                                        <li><b>Python is a Beginner's Language −</b> Python is a great language for the beginner-level
                                            programmers and supports the development of a wide range of applications from simple
                                            text processing to WWW browsers to games.</li>
                                    </ul>
                                    <div class="card-body" style="text-align:center;">
                                            <asp:Button ID="btnlearnmore" runat="server" Text="Learn More" class="btn btn-outline-primary btn-icon-text" OnClick="btnlearnmore_Click"/>
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

