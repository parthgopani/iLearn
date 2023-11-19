<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part12.aspx.cs" Inherits="pythonlearn_files_Part12" %>

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
                                            <a href="part11.aspx">
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
                                            <a href="part13.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>1.10  What could possibly go wrong?
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    As we saw in our
                                                earliest conversations with Python, we must communicate very precisely when we write
                                                    Python code. The smallest deviation or mistake will cause Python to give up looking
                                                    at your program.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    Beginning programmers often take the fact that Python leaves no room for errors
                                                    as evidence that Python is mean, hateful, and cruel. While Python seems to like
                                                    everyone else, Python knows them personally and holds a grudge against them. Because
                                                    of this grudge, Python takes our perfectly written programs and rejects them as
                                                    “unfit” just to torment us.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    &gt;&gt;&gt;
    <span style="color: #231F20;">print </span>
                                                    <span style="color: #3F70A0;">&#39;Hello world!&#39;</span>
                                                </p>
                                                <p>
                                                    File
    <span style="color: #3F70A0;">&quot;&lt;stdin&gt;&quot;</span>, line
    <span style="color: #3FA070;">1 </span>
                                                </p>
                                                <p>
                                                    primt
    <span style="color: #3F70A0;">&#39;Hello world!&#39;</span>
                                                </p>
                                                <p>
                                                    <span style="color: #BC7A00;">SyntaxError</span>
                                                    <span style="color: #231F20;">: invalid syntax</span>
                                                </p>
                                                <p>
                                                    <span style="color: #656565;">&gt;&gt;&gt; </span>primt (
    <span style="color: #3F70A0;">&#39;Hello world&#39;</span>) 
                                                </p>
                                                <p>
                                                    Traceback (most recent call last):
                                                </p>
                                                <p>
                                                    File
    <span style="color: #3F70A0;">&quot;&lt;stdin&gt;&quot;</span>, line
    <span style="color: #3FA070;">1</span>,
    <span style="color: #656565;">in &lt;</span>module
    <span style="color: #656565;">&gt; </span>
                                                </p>
                                                <p>
                                                    <span style="color: #BC7A00;">NameError</span>: name
    <span style="color: #3F70A0;">&#39;primt&#39; </span>
                                                    <span style="color: #656565;">is not </span>defined
                                                </p>
                                                <br />
                                                <p>
                                                    <span style="color: #656565;">&gt;&gt;&gt; </span>I hate you Python
    <span style="color: #656565;">! </span>
                                                </p>
                                                <p>
                                                    File
    <span style="color: #3F70A0;">&quot;&lt;stdin&gt;&quot;</span>, line
    <span style="color: #3FA070;">1 </span>
                                                </p>
                                                <p>
                                                    I hate you Python
    <span style="color: #656565;">!</span>
                                                </p>
                                                <p>
                                                    SyntaxError
    <span style="color: #231F20;">: invalid syntax</span>
                                                </p>

                                                <p>
                                                    <span style="color: #656565;">&gt;&gt;&gt; </span>
                                                    <span class="s23">if </span>you come out of there, I would teach you a lesson
                                                    
                                                </p>
                                                <p>
                                                    File
                                                    <span style="color: #3F70A0;">&quot;&lt;stdin&gt;&quot;</span>, line
    <span style="color: #3FA070;">1</span>
                                                </p>
                                                <p>
                                                    if
    <span class="s3">you come out of there, I would teach you a lesson</span>
                                                </p>
                                                <p>
                                                    SyntaxError
    <span style="color: #231F20;">: invalid syntax</span>
                                                </p>
                                                <p>
                                                    &gt;&gt;&gt;
                                                </p>
                                            </div>

                                            <div class="card-body">
                                                <p>
                                                    There is little
                                                to be gained by arguing with Python. It is just a tool. It has no emotions and it
                                                is happy and ready to serve you whenever you need it. Its error messages sound harsh,
                                                    but they are just Python’s call for help. It has looked at what you typed, and it
                                                    simply cannot understand what you have entered.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    Python is much more like a dog, loving you unconditionally, having a few key words
                                                    that it understands, looking you with a sweet look on its face (
    <span class="s3">&gt;&gt;&gt;</span>), and waiting for you to say something it understands. When Python says “SyntaxError: invalid
                                                    syntax”, it is simply wagging its tail and saying, “You seemed to say something
                                                    but I just don’t understand what you meant, but please keep talking to me (
    <span class="s3">&gt;&gt;&gt;</span>).”
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    As your programs become increasingly sophisticated, you will encounter three gen-
                                                    eral types of errors:
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    <b>Syntax errors </b>These are the first errors you will make and the easiest to
                                                    fix. A syntax error means that you have violated the “grammar” rules of Python.
                                                    Python does its best to point right at the line and character where it noticed it
                                                    was confused. The only tricky bit of syntax errors is that sometimes the mistake
                                                    that needs fixing is actually earlier in the program than where Python
    <span class="s5">noticed </span>it was confused. So the line and character that Python indicates in a syntax error may just
                                                be a starting point for your investigation.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p class="s10">
                                                    Logic errors
    <span class="p">A logic error is when your program has good syntax but there is a mistake
        in the order of the statements or perhaps a mistake in how the statements relate
        to one another. A good example of a logic error might be, “take a drink from your
        water bottle, put it in your backpack, walk to the library, and then put the top
        back on the bottle.”</span>
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    <b>Semantic errors </b>A semantic error is when your description of the steps to
                                                    take is syntactically perfect and in the right order, but there is simply a mistake
                                                    in the program. The program is perfectly correct but it does not do what you
    <span class="s5">intended </span>for it to do. A simple example would be if you were giving a person directions to a restaurant
                                                    and said, “
    <span class="s11"></span>when you reach the intersection with
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    the gas station,
                                                turn left and go one mile and the restaurant is a red building on your left.” Your
                                                friend is very late and calls you to tell you that they are on a farm and walking
                                                around behind a barn, with no sign of a restaurant. Then you say “did you turn left
                                                    or right at the gas station?” and they say, “I followed your directions perfectly,
                                                    I have them written down, it says turn left and go one mile at the gas station.”
                                                    Then you say, “I am very sorry, because while my instructions were syntactically
                                                    correct, they sadly contained a small but undetected semantic error.”.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    <a name="bookmark35">Again in all three types of errors, Python is merely trying its
                                                        hardest to do exactly what you have asked.</a>
                                                </p>
                                            </div>
                                            <a href="part11.aspx">
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
                                            <a href="part13.aspx">
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

