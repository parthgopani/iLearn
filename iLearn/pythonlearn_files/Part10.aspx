<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part10.aspx.cs" Inherits="pythonlearn_files_Part10" %>

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
                                            <a href="part9.aspx">
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
                                            <a href="part11.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>1.8  What is a program?
                                                </h2>
                                            </div>
                                             <div class="card-body">
                                            <p>
                                                The definition of a
    <span class="s5">program </span>at its most basic is a sequence of Python statements that have been crafted to do something.
                                                Even our simple
    <span class="s5">hello.py </span>script is a program. It is a one-line program and is not particularly useful, but in the strictest
                                                definition, it is a Python program.
                                            </p></div>
                                             <div class="card-body">
                                            <p>
                                                It might be easiest to understand what a program is by thinking about a problem
                                                that a program might be built to solve, and then looking at a program that would
                                                solve that problem.</p></div>
                                             <div class="card-body">
                                            <p>
                                                Lets say you are doing Social Computing research on Facebook posts and you are interested
                                                in the most frequently used word in a series of posts. You could print out the stream
                                                of Facebook posts and pore over the text looking for the most common word, but that
                                                would take a long time and be very mistake prone. You would be smart to write a
                                                Python program to handle the task quickly and accurately so you can spend the weekend
                                                doing something fun.</p></div>
                                             <div class="card-body">
                                            <p >
                                                For example, look at the following text about a clown and a car. Look at the text
                                                and figure out the most common word and how many times it occurs.</p></div>
                                             <div class="card-body">
                                            <p class="s25">the clown
                                                ran after the car and the car ran into the tent and the tent fell down on the clown
                                                and the car</p></div>
                                            <div class="card-body">
                                            <p >
                                                Then imagine that you are doing this task looking at millions of lines of text.
                                                Frankly it would be quicker for you to learn Python and write a Python program to
                                                count the words than it would be to manually scan the words.</p></div>
                                             <div class="card-body">
                                            <p >
                                                The even better news is that I already came up with a simple program to find the
                                                most common word in a text file. I wrote it, tested it, and now I am giving it to
                                                you to use so you can save some time.</p></div>
                                             <div class="card-body">
                                            <p >
                                                name
    <span style="color: #656565;">= </span>input(
    <span style="color: #3F70A0;">&#39;Enter file:&#39;</span>) handle
    <span style="color: #656565;">= </span>open(name,
    <span style="color: #3F70A0;">&#39;r&#39;</span>) counts
    <span style="color: #656565;">= </span>dict()
                                            </p>
                                            <p class="s3" >
                                                <span class="s23">for </span>line
    <span style="color: #656565;">in </span>handle: words
    <span style="color: #656565;">= </span>line.split()
    <span class="s23">for </span>word
    <span style="color: #656565;">in </span>words:
                                            </p>
                                            <p class="s3" >
                                                counts[word]
    <span style="color: #656565;">= </span>counts.get(word,
    <span style="color: #3FA070;">0</span>)
    <span style="color: #656565;">+ </span>
                                                <span style="color: #3FA070;">1</span>
                                            </p>
                                            <p class="s3" >
                                                bigcount
    <span style="color: #656565;">= </span>
                                                <span style="color: #19167C;">None </span>bigword
    <span style="color: #656565;">= </span>
                                                <span style="color: #19167C;">None</span>
                                            </p>
                                            <p class="s3" >
                                                <span class="s23">for </span>word, count
    <span style="color: #656565;">in </span>list(counts.items()):
                                            </p>
                                            <p class="s22" >
                                                <span class="s23">if </span>
                                                <span style="color: #231F20;">bigcount </span>is
    <span style="color: #19167C;">None </span>or
    <span style="color: #231F20;">count </span>&gt;
    <span style="color: #231F20;">bigcount: bigword </span>=
    <span style="color: #231F20;">word</span>
                                            </p>
                                            <p class="s3" >
                                                bigcount
    <span style="color: #656565;">= </span>count print(bigword, bigcount)
                                            </p></div>
                                             <div class="card-body">
                                            <p >
                                                <a href="http://www.py4e.com/code3/words.py" class="s28" target="_blank">#  Code:  http://www.py4e.com/code3/words.py</a>
                                            </p></div>
                                            <div class="card-body">
                                            <p >
                                                You don’t even need to know Python to use this program. You will need to get through
                                                Chapter 10 of this book to fully understand the awesome Python techniques that were
                                                used to make the program. You are the end user, you simply use the program and marvel
                                                at its cleverness and how it saved you so much manual effort. You simply type the
                                                code into a file called
    <span class="s5">words.py </span>
                                                <a href="http://www.py4e.com/code3/" class="s4" target="_blank">and run it or you download
                                                    the source code from </a>
                                                <span style="color: #00F;">http://www.py4e.com/code3/ </span>and run it.
                                            </p></div>
                                             <div class="card-body">
                                            <p >
                                                This is a good example of how Python and the Python language are acting as an intermediary
                                                between you (the end user) and me (the programmer). Python is a way for us to exchange
                                                useful instruction sequences (i.e., programs) in a common language that can be used
                                                by anyone who installs Python on their computer. So neither of us are talking
    <span class="s5">to Python</span>, instead we are communicating with each other
    <span class="s5">through </span>Python.
                                            </p></div>
                                            <a href="part9.aspx">
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
                                            <a href="part11.aspx">
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

