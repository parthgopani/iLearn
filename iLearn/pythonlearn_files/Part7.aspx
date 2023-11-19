<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part7.aspx.cs" Inherits="pythonlearn_files_Part7" %>

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
                                            <a href="part6.aspx">
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
                                            <a href="part8.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>1.5  Conversing with Python
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    Now that we have
                                                a word and a simple sentence that we know in Python, we need to know how to start
                                                a conversation with Python to test our new language skills.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    Before you can converse with
                                                    Python, you must first install the Python software on your computer and learn how
                                                    to start Python on your computer. That is too much detail for this chapter so I
                                                    suggest that you consult
                                                <span style="color: #00F;">www.py4e.com </span>where I have detailed instructions
                                                and screencasts of setting up and starting Python on Macintosh and Windows systems.
                                                    At some point, you will be in a terminal or command window and you will type
    <span class="s5">python </span>and the Python interpreter will start executing in interactive mode and appear somewhat as follows:
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    Python
                                                <span style="color: #3FA070;">3.5.1 </span>(v3
                                                <span style="color: #3FA070;">.5.1</span>:37a07cee5969, Dec
                                                <span style="color: #3FA070;">6 2015</span>,
                                                <span style="color: #3FA070;">01</span>:
                                                <span style="color: #3FA070;">54</span>:
                                                <span style="color: #3FA070;">25</span>) [MSC v
                                                <span style="color: #3FA070;">.1900 64 </span>bit (AMD64)] on win32
                                                </p>

                                                <p>
                                                    <span style="color: #231F20;">Type </span>&quot;help&quot;
                                                <span style="color: #231F20;">, </span>&quot;copyright&quot;
                                                <span style="color: #231F20;">, </span>&quot;credits&quot;
                                                <span style="color: #656565;">or </span>&quot;license&quot;
                                                <span class="s23">for </span>
                                                    <span style="color: #231F20;">more information.</span>
                                                </p>

                                                <p>
                                                    &gt;&gt;&gt;
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    The
    <span class="s3">&gt;&gt;&gt; </span>prompt is the Python interpreter’s way of asking you, “What do you want me to do next?”
                                                Python is ready to have a conversation with you. All you have to know is how to
                                                speak the Python language.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    Let’s say for example that you did not know even the simplest Python language words
                                                    or sentences. You might want to use the standard line that astronauts use when they
                                                    land on a faraway planet and try to speak with the inhabitants of the planet:
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    <span style="color: #656565;">&gt;&gt;&gt; </span>I come
                                                <span style="color: #656565;">in </span>peace, please take me to your leader File
                                                <span style="color: #3F70A0;">&quot;&lt;stdin&gt;&quot;</span>, line
                                                <span style="color: #3FA070;">1</span>
                                                </p>
                                                <p>
                                                    I come
                                                <span style="color: #656565;">in </span>peace, please take me to your leader
                                                </p>
                                                <p>
                                                    <span style="color: #BC7A00;">SyntaxError</span>: invalid syntax
                                                </p>
                                                <p>
                                                    &gt;&gt;&gt;
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    This is not going
                                                so well. Unless you think of something quickly, the inhabitants of the planet are
                                                likely to stab you with their spears, put you on a spit, roast you over a fire,
                                                and eat you for dinner.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    Luckily you brought a copy of this book on your travels, and you thumb to this very
                                                    page and try again:
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    <span style="color: #656565;">&gt;&gt;&gt; </span>print(
                                                <span style="color: #3F70A0;">&#39;Hello world!&#39;</span>) Hello world
                                                <span style="color: #656565;">!</span>
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    This is looking much
                                                better, so you try to communicate some more:
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    <span style="color: #656565;">&gt;&gt;&gt; </span>print(
                                                <span style="color: #3F70A0;">&#39;You must be the legendary god that comes from the
                                                    sky&#39;</span>) You must be the legendary god that comes from the sky
                                                </p>
                                                <p>
                                                    <span style="color: #656565;">&gt;&gt;&gt; </span>print(
                                                <span style="color: #3F70A0;">&#39;We have been waiting for you for a long time&#39;</span>)
                                                    We have been waiting
                                                <span class="s23">for </span>you
                                                <span class="s23">for </span>a long time
                                                </p>
                                                <p>
                                                    <span style="color: #656565;">&gt;&gt;&gt; </span>print(
                                                <span style="color: #3F70A0;">&#39;Our legend says you will be very tasty with mustard&#39;</span>)
                                                    Our legend says you will
                                                be very tasty
                                                <span class="s23">with </span>mustard
                                                </p>
                                                <p>
                                                    &gt;&gt;&gt;
                                                <span style="color: #231F20;">print </span>
                                                    <span style="color: #3F70A0;">&#39;We will have a feast tonight unless you say File
                                                        &quot;&lt;stdin&gt;&quot;, line 1</span>
                                                </p>

                                                <p style="padding-left: 27pt;">
                                                    print &#39;
                                                <span style="color: #231F20;">We will have a feast tonight unless you say</span>
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    <span style="color: #BC7A00;">SyntaxError</span>: Missing parentheses
                                                <span style="color: #656565;">in </span>call to
                                                <span style="color: #3F70A0;">&#39;print&#39;</span>
                                                </p>
                                                <p>
                                                    &gt;&gt;&gt;
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    The conversation
                                                was going so well for a while and then you made the tiniest mistake using the Python
                                                    language and Python brought the spears back out.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    At this point, you should also realize that while Python is amazingly complex and
                                                    powerful and very picky about the syntax you use to communicate with it, Python
                                                    is
                                                <span class="s5">not </span>intelligent. You are really just having a conversation with
                                                    yourself, but using proper syntax.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    In a sense, when you use a program written by someone else the conversation is between
                                                    you and those other programmers with Python acting as an intermediary. Python is
                                                    a way for the creators of programs to express how the conversation is supposed to
                                                    proceed. And in just a few more chapters, you will be one of those programmers using
                                                    Python to talk to the users of your program.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    Before we leave our first conversation with the Python interpreter, you should prob-
                                                    ably know the proper way to say “good-bye” when interacting with the inhabitants
                                                    of Planet Python:
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    &gt;&gt;&gt;
                                                <span style="color: #231F20;">good</span>-
                                                <span style="color: #231F20;">bye</span>
                                                </p>

                                                <p>
                                                    Traceback
                                                (most recent call last):
                                                </p>
                                                <p>
                                                    File
                                                <span style="color: #3F70A0;">&quot;&lt;stdin&gt;&quot;</span>, line
                                                <span style="color: #3FA070;">1</span>,
                                                <span style="color: #656565;">in &lt;</span>module
                                                <span style="color: #656565;">&gt; </span>
                                                    <span style="color: #BC7A00;">NameError</span>: name
                                                <span style="color: #3F70A0;">&#39;good&#39; </span>
                                                    <span style="color: #656565;">is not </span>defined
                                                </p>
                                                <p>
                                                    &gt;&gt;&gt;
                                                <span class="s23">if </span>
                                                    <span style="color: #231F20;">you don</span>
                                                    <span style="color: #3F70A0;">&#39;t mind, I need to leave File &quot;&lt;stdin&gt;&quot;,
                                                        line 1</span>
                                                </p>
                                                <p>
                                                    if you don&#39;
                                                <span style="color: #231F20;">t mind, I need to leave</span>
                                                </p>
                                                <p>
                                                    <span style="color: #BC7A00;">SyntaxError</span>: invalid syntax
                                                </p>
                                                <p>
                                                    &gt;&gt;&gt;
                                                <span style="color: #231F20;">quit()</span>
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    You will notice that the error is different for the first two incorrect attempts.
                                                    The second error is different because
                                                <span class="s5">if </span>is a reserved word and Python saw the reserved word and thought
                                                    we were trying to say something but
                                                got the syntax of the sentence wrong.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    The proper way to say “good-bye” to Python is to enter
                                                <span class="s5">quit() </span>at the interactive chevron
                                                <span class="s3">&gt;&gt;&gt; </span>prompt. It would have probably taken you quite
                                                    a while to guess that one, so having a book
                                                handy probably will turn out to be helpful.
                                                </p>
                                            </div>
                                            <a href="part6.aspx">
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
                                            <a href="part8.aspx">
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


