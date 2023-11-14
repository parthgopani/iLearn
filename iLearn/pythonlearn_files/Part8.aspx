<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part8.aspx.cs" Inherits="pythonlearn_files_Part8" %>

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
                                            <a href="part7.aspx">
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
                                            <a href="part9.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>1.6  Terminology: Interpreter and compiler
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                            <p>
                                                Python is a
    <span class="s5">high-level </span>language intended to be relatively straightforward for hu- mans to read and write and for
                                                computers to read and process. Other high-level languages include Java, C++, PHP,
                                                Ruby, Basic, Perl, JavaScript, and many more. The actual hardware inside the Central
                                                Processing Unit (CPU) does not under- stand any of these high-level languages.
                                            </p>
                                             </div>
                                            <div class="card-body">
                                            <p>
                                                The CPU understands a language we call
    <span class="s5">machine language</span>. Machine language is very simple and frankly very tiresome to write because it is represented
                                                all in zeros and ones:
                                            </p>
                                                </div>
                                           
                                             <div class="card-body">
                                            <p >001010001110100100101010000001111
                                            </p>
                                                 </div>
                                            <div class="card-body">
                                            <p class="s25" >11100110000011101010010101101101
                                            </p>
                                                </div>
                                            <div class="card-body">
                                            <p class="s25" >...
                                            </p>
                                                </div>
                                           
                                            <div class="card-body">
                                            <p>
                                                Machine language seems quite simple on the surface, given that there are only zeros
                                                and ones, but its syntax is even more complex and far more intricate than Python.
                                                So very few programmers ever write machine language. Instead we build various translators
                                                to allow programmers to write in high-level languages like Python or JavaScript
                                                and these translators convert the programs to machine language for actual execution
                                                by the CPU.</p></div>
                                            <div class="card-body">
                                            <p>
                                                Since machine language is tied to the computer hardware, machine language is not
                                                <span class="s5">portable </span>across different types of hardware. Programs written
                                                in high-level lan- guages can be moved between different computers by using a different
                                                interpreter on the new machine or recompiling the code to create a machine language
                                                version of the program for the new machine.
                                            </p>
                                                </div>
                                            <div class="card-body">
                                            <p>
                                                These programming language translators fall into two general categories: (1) inter-
                                                preters and (2) compilers.</p></div>
                                            <div class="card-body">
                                            <p>
                                                An
    <span class="s5">interpreter </span>reads the source code of the program as written by the programmer, parses the source code,
                                                and interprets the instructions on the fly. Python is an interpreter and when we
                                                are running Python interactively, we can type a line of Python (a sentence) and
                                                Python processes it immediately and is ready for us to type another line of Python.
                                            </p>
                                                </div>
                                            <div class="card-body">
                                            <p>
                                                Some of the lines of Python tell Python that you want it to remember some value
                                                for later. We need to pick a name for that value to be remembered and we can use
                                                that symbolic name to retrieve the value later. We use the term
    <span class="s5">variable </span>to refer to the labels we use to refer to this stored data.
                                            </p>
                                                </div>
                                            <div class="card-body">
                                            <p >
                                                <br />
                                            </p></div>
                                            <div class="card-body">
                                            <p class="s22" >
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">x </span>=
    <span style="color: #3FA070;">6</span>
                                            </p>
                                                </div>
                                            <div class="card-body">
                                            <p class="s22" >
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">print(x) </span>
                                                <span style="color: #3FA070;">6</span>
                                            </p></div>
                                            <div class="card-body">
                                            <p class="s22" >
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">y </span>=
    <span style="color: #231F20;">x </span>*
    <span style="color: #3FA070;">7</span>
                                            </p>
                                                </div>
                                            <div class="card-body">
                                            <p class="s5" >
                                                1.6. TERMINOLOGY: INTERPRETER AND COMPILER
    <span class="s11"></span>
                                                <span class="p">9</span>
                                            </p></div>
                                           
                                            <div class="card-body">
                                            <p class="s22">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">print(y) </span>
                                                <span style="color: #3FA070;">42</span>
                                            </p></div>
                                            <div class="card-body">
                                            <p class="s22" >&gt;&gt;&gt;
                                            </p></div>
                                           
                                            <div class="card-body">
                                            <p>
                                                In this example, we ask Python to remember the value six and use the label
    <span class="s5">x </span>so we can retrieve the value later. We verify that Python has actually remembered the value using
                                                <span class="s5">print</span>. Then we ask Python to retrieve
    <span class="s5">x </span>and multiply it by seven and put the newly computed value in
    <span class="s5">y</span>. Then we ask Python to print out the value currently in
    <span class="s5">y</span>.
                                            </p>
                                                </div>
                                            <div class="card-body">
                                            <p >
                                                Even though we are typing these commands into Python one line at a time, Python
                                                is treating them as an ordered sequence of statements with later statements able
                                                to retrieve data created in earlier statements. We are writing our first simple
                                                paragraph with four sentences in a logical and meaningful order.</p></div>
                                            <div class="card-body">
                                            <p>
                                                It is the nature of an
    <span class="s5">interpreter </span>to be able to have an interactive conversation as shown above. A
    <span class="s5">compiler </span>needs to be handed the entire program in a file, and then it runs a process to translate the
                                                high-level source code into machine language and then the compiler puts the resulting
                                                machine language into a file for later execution.
                                            </p></div>
                                            <div class="card-body">
                                            <p >
                                                If you have a Windows system, often these executable machine language programs have
                                                a suffix of “.exe” or “.dll” which stand for “executable” and “dynamic link library”
                                                respectively. In Linux and Macintosh, there is no suffix that uniquely marks a file
                                                as executable.</p>
                                                </div>
                                            <div class="card-body">
                                            <p >
                                                If you were to open an executable file in a text editor, it would look completely
                                                crazy and be unreadable:</p>
                                                </div>
                                            <div class="card-body">
                                            <p >
                                                <br />
                                            </p></div>
                                            <div class="card-body">
                                            <p class="s25">^?ELF^A^A^A^@^@^@^@^@^@^@^@^@^B^@^C^@^A^@^@^@\xa0\x82
                                            </p></div>
                                            <div class="card-body">
                                            <p class="s25" >^D^H4^@^@^@\x90^]^@^@^@^@^@^@4^@
                                                ^@^G^@(^@$^@!^@^F^@</p></div>
                                            <div class="card-body">
                                            <p class="s25" >^@^@4^@^@^@4\x80^D^H4\x80^D^H\xe0^@^@^@\xe0^@^@^@^E
                                            </p></div>
                                            <div class="card-body">
                                            <p class="s25" >^@^@^@^D^@^@^@^C^@^@^@^T^A^@^@^T\x81^D^H^T\x81^D^H^S
                                            </p></div>
                                            <div class="card-body">
                                            <p class="s25" >^@^@^@^S^@^@^@^D^@^@^@^A^@^@^@^A\^D^HQVhT\x83^D^H\xe8
                                            </p></div>
                                            <div class="card-body">
                                            <p class="s25" >....
                                            </p></div>
                                           
                                            <div class="card-body">
                                            <p >
                                                It is not easy to read or write machine language, so it is nice that we have
    <span class="s5">inter- preters </span>and
    <span class="s5">compilers </span>that allow us to write in high-level languages like Python or C.
                                            </p></div>
                                            <div class="card-body">
                                            <p >
                                                Now at this point in our discussion of compilers and interpreters, you should be
                                                wondering a bit about the Python interpreter itself. What language is it written
                                                in? Is it written in a compiled language? When we type “python”, what exactly is
                                                happening?</p></div>
                                            <div class="card-body">
                                            <p class="s21" >
                                                The Python interpreter is
                                                    written in a high-level language called “C”. You can look at the actual source code
                                                    for the Python interpreter by going to <a href="http://www.python.org/" class="s4" target="_blank">www.python.org</a>
    <span style="color: #231F20;">and working your way to their source code. So Python is
        a program itself and it is compiled into machine code. When you installed Python
        on your computer (or the vendor installed it), you copied a machine-code copy of
        the translated Python program onto your system. In Windows, the executable machine
        code for Python itself is likely in a file with a name like:</span>
                                            </p></div>
                                           
                                            <div class="card-body">
                                            <p >
                                                <a name="bookmark29">That is more than you really need to know to be a Python programmer,
                                                    but sometimes it pays to answer those little nagging questions right at the beginning.</a>
                                            </p></div>
                                            <a href="part7.aspx">
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
                                            <a href="part9.aspx">
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

