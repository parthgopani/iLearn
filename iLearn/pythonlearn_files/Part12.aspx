<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part12.aspx.cs" Inherits="pythonlearn_files_Part12" %>

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
                                            <a href="part11.aspx">
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
                                            <a href="part13.aspx">
                                                <button type="button" class="btn btn-outline-success btn-icon-text">
                                                    <i class="ti-alert btn-icon-prepend"></i>
                                                    Next
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>1.10  What could possibly go wrong?
                                                </h2>
                                            </div>

                                            <p style="padding-left: 6pt; text-indent: 0pt; text-align: justify;">As we saw in our
                                                earliest conversations with Python, we must communicate very precisely when we write
                                                Python code. The smallest deviation or mistake will cause Python to give up looking
                                                at your program.</p>
                                            <p style="padding-top: 6pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                Beginning programmers often take the fact that Python leaves no room for errors
                                                as evidence that Python is mean, hateful, and cruel. While Python seems to like
                                                everyone else, Python knows them personally and holds a grudge against them. Because
                                                of this grudge, Python takes our perfectly written programs and rejects them as
                                                “unfit” just to torment us.</p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">primt </span>
                                                <span style="color: #3F70A0;">&#39;Hello world!&#39;</span>
                                            </p>
                                            <p class="s3" style="padding-left: 17pt; text-indent: -10pt; text-align: left;">
                                                File
    <span style="color: #3F70A0;">&quot;&lt;stdin&gt;&quot;</span>, line
    <span style="color: #3FA070;">1 </span>primt
    <span style="color: #3F70A0;">&#39;Hello world!&#39;</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 109pt; text-align: left;">
                                                ^
    <span style="color: #BC7A00;">SyntaxError</span>
                                                <span style="color: #231F20;">: invalid syntax</span>
                                            </p>
                                            <p class="s3" style="padding-left: 6pt; text-indent: 0pt; text-align: left;">
                                                <span style="color: #656565;">&gt;&gt;&gt; </span>primt (
    <span style="color: #3F70A0;">&#39;Hello world&#39;</span>) Traceback (most recent call last):
                                            </p>
                                            <p class="s3" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                File
    <span style="color: #3F70A0;">&quot;&lt;stdin&gt;&quot;</span>, line
    <span style="color: #3FA070;">1</span>,
    <span style="color: #656565;">in &lt;</span>module
    <span style="color: #656565;">&gt; </span>
                                                <span style="color: #BC7A00;">NameError</span>: name
    <span style="color: #3F70A0;">&#39;primt&#39; </span>
                                                <span style="color: #656565;">is not </span>defined
                                            </p>
                                            <p class="s5" style="padding-top: 1pt; padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                1.10. WHAT COULD POSSIBLY GO WRONG?
    <span class="s11"></span>
                                                <span class="p">13</span>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: center;">
                                                <span style="color: #656565;">&gt;&gt;&gt; </span>I hate you Python
    <span style="color: #656565;">! </span>File
    <span style="color: #3F70A0;">&quot;&lt;stdin&gt;&quot;</span>, line
    <span style="color: #3FA070;">1 </span>I hate you Python
    <span style="color: #656565;">!</span>
                                            </p>
                                            <p class="s22" style="text-indent: 0pt; text-align: center;">^</p>
                                            <p class="s24" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                SyntaxError
    <span style="color: #231F20;">: invalid syntax</span>
                                            </p>
                                            <p class="s3" style="padding-left: 51pt; text-indent: 0pt; text-align: left;">
                                                <span style="color: #656565;">&gt;&gt;&gt; </span>
                                                <span class="s23">if </span>you come out of there, I would teach you a lesson File
                                                <span style="color: #3F70A0;">&quot;&lt;stdin&gt;&quot;</span>, line
    <span style="color: #3FA070;">1</span>
                                            </p>
                                            <p class="s23" style="padding-left: 62pt; text-indent: 0pt; text-align: left;">
                                                if
    <span class="s3">you come out of there, I would teach you a lesson</span>
                                            </p>
                                            <p class="s22" style="padding-left: 114pt; text-indent: 0pt; text-align: left;">^
                                            </p>
                                            <p class="s24" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                SyntaxError
    <span style="color: #231F20;">: invalid syntax</span>
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">&gt;&gt;&gt;
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 51pt; text-indent: 0pt; text-align: justify;">There is little
                                                to be gained by arguing with Python. It is just a tool. It has no emotions and it
                                                is happy and ready to serve you whenever you need it. Its error messages sound harsh,
                                                but they are just Python’s call for help. It has looked at what you typed, and it
                                                simply cannot understand what you have entered.</p>
                                            <p style="padding-top: 5pt; padding-left: 51pt; text-indent: 0pt; text-align: justify;">
                                                Python is much more like a dog, loving you unconditionally, having a few key words
                                                that it understands, looking you with a sweet look on its face (
    <span class="s3">&gt;&gt;&gt;</span>), and waiting for you to say something it understands. When Python says “SyntaxError: invalid
                                                syntax”, it is simply wagging its tail and saying, “You seemed to say something
                                                but I just don’t understand what you meant, but please keep talking to me (
    <span class="s3">&gt;&gt;&gt;</span>).”
                                            </p>
                                            <p style="padding-top: 5pt; padding-left: 52pt; text-indent: 0pt; text-align: justify;">
                                                As your programs become increasingly sophisticated, you will encounter three gen-
                                                eral types of errors:</p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 76pt; text-indent: -24pt; text-align: justify;">
                                                <b>Syntax errors </b>These are the first errors you will make and the easiest to
                                                fix. A syntax error means that you have violated the “grammar” rules of Python.
                                                Python does its best to point right at the line and character where it noticed it
                                                was confused. The only tricky bit of syntax errors is that sometimes the mistake
                                                that needs fixing is actually earlier in the program than where Python
    <span class="s5">noticed </span>it was confused. So the line and character that Python indicates in a syntax error may just
                                                be a starting point for your investigation.
                                            </p>
                                            <p class="s10" style="padding-left: 75pt; text-indent: -23pt; text-align: justify;">
                                                Logic errors
    <span class="p">A logic error is when your program has good syntax but there is a mistake
        in the order of the statements or perhaps a mistake in how the statements relate
        to one another. A good example of a logic error might be, “take a drink from your
        water bottle, put it in your backpack, walk to the library, and then put the top
        back on the bottle.”</span>
                                            </p>
                                            <p style="padding-left: 76pt; text-indent: -24pt; text-align: justify;">
                                                <b>Semantic errors </b>A semantic error is when your description of the steps to
                                                take is syntactically perfect and in the right order, but there is simply a mistake
                                                in the program. The program is perfectly correct but it does not do what you
    <span class="s5">intended </span>for it to do. A simple example would be if you were giving a person directions to a restaurant
                                                and said, “
    <span class="s11"></span>when you reach the intersection with
                                            </p>
                                            <p style="padding-left: 76pt; text-indent: 0pt; text-align: justify;">the gas station,
                                                turn left and go one mile and the restaurant is a red building on your left.” Your
                                                friend is very late and calls you to tell you that they are on a farm and walking
                                                around behind a barn, with no sign of a restaurant. Then you say “did you turn left
                                                or right at the gas station?” and they say, “I followed your directions perfectly,
                                                I have them written down, it says turn left and go one mile at the gas station.”
                                                Then you say, “I am very sorry, because while my instructions were syntactically
                                                correct, they sadly contained a small but undetected semantic error.”.</p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-top: 3pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                <a name="bookmark35">Again in all three types of errors, Python is merely trying its
                                                    hardest to do exactly what you have asked.</a>
                                            </p>
                                            <a href="part11.aspx">
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
                                            <a href="part13.aspx">
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

