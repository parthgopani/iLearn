<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part10.aspx.cs" Inherits="pythonlearn_files_Part10" %>

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
                                            <a href="part9.aspx">
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
                                            <a href="part11.aspx">
                                                <button type="button" class="btn btn-outline-success btn-icon-text">
                                                    <i class="ti-alert btn-icon-prepend"></i>
                                                    Next
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>1.8  What is a program?
                                                </h2>
                                            </div>
                                            <p style="padding-left: 7pt; text-indent: 0pt; text-align: justify;">
                                                The definition of a
    <span class="s5">program </span>at its most basic is a sequence of Python statements that have been crafted to do something.
                                                Even our simple
    <span class="s5">hello.py </span>script is a program. It is a one-line program and is not particularly useful, but in the strictest
                                                definition, it is a Python program.
                                            </p>
                                            <p style="padding-top: 6pt; padding-left: 7pt; text-indent: 0pt; text-align: justify;">
                                                It might be easiest to understand what a program is by thinking about a problem
                                                that a program might be built to solve, and then looking at a program that would
                                                solve that problem.</p>
                                            <p style="padding-top: 6pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                Lets say you are doing Social Computing research on Facebook posts and you are interested
                                                in the most frequently used word in a series of posts. You could print out the stream
                                                of Facebook posts and pore over the text looking for the most common word, but that
                                                would take a long time and be very mistake prone. You would be smart to write a
                                                Python program to handle the task quickly and accurately so you can spend the weekend
                                                doing something fun.</p>
                                            <p style="padding-top: 6pt; padding-left: 7pt; text-indent: 0pt; text-align: justify;">
                                                For example, look at the following text about a clown and a car. Look at the text
                                                and figure out the most common word and how many times it occurs.</p>
                                            <p class="s5" style="padding-top: 1pt; padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <a name="bookmark32">1.9. THE BUILDING BLOCKS OF PROGRAMS</a>
                                                <span class="s11"></span>
                                                <span class="p">11</span>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s25" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">the clown
                                                ran after the car and the car ran into the tent and the tent fell down on the clown
                                                and the car</p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-top: 6pt; padding-left: 51pt; text-indent: 0pt; text-align: justify;">
                                                Then imagine that you are doing this task looking at millions of lines of text.
                                                Frankly it would be quicker for you to learn Python and write a Python program to
                                                count the words than it would be to manually scan the words.</p>
                                            <p style="padding-top: 6pt; padding-left: 51pt; text-indent: 0pt; text-align: justify;">
                                                The even better news is that I already came up with a simple program to find the
                                                most common word in a text file. I wrote it, tested it, and now I am giving it to
                                                you to use so you can save some time.</p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                name
    <span style="color: #656565;">= </span>input(
    <span style="color: #3F70A0;">&#39;Enter file:&#39;</span>) handle
    <span style="color: #656565;">= </span>open(name,
    <span style="color: #3F70A0;">&#39;r&#39;</span>) counts
    <span style="color: #656565;">= </span>dict()
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s3" style="padding-left: 72pt; text-indent: -20pt; text-align: left;">
                                                <span class="s23">for </span>line
    <span style="color: #656565;">in </span>handle: words
    <span style="color: #656565;">= </span>line.split()
    <span class="s23">for </span>word
    <span style="color: #656565;">in </span>words:
                                            </p>
                                            <p class="s3" style="padding-left: 93pt; text-indent: 0pt; text-align: left;">
                                                counts[word]
    <span style="color: #656565;">= </span>counts.get(word,
    <span style="color: #3FA070;">0</span>)
    <span style="color: #656565;">+ </span>
                                                <span style="color: #3FA070;">1</span>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                bigcount
    <span style="color: #656565;">= </span>
                                                <span style="color: #19167C;">None </span>bigword
    <span style="color: #656565;">= </span>
                                                <span style="color: #19167C;">None</span>
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <span class="s23">for </span>word, count
    <span style="color: #656565;">in </span>list(counts.items()):
                                            </p>
                                            <p class="s22" style="padding-left: 93pt; text-indent: -20pt; text-align: left;">
                                                <span class="s23">if </span>
                                                <span style="color: #231F20;">bigcount </span>is
    <span style="color: #19167C;">None </span>or
    <span style="color: #231F20;">count </span>&gt;
    <span style="color: #231F20;">bigcount: bigword </span>=
    <span style="color: #231F20;">word</span>
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 41pt; line-height: 204%; text-align: left;">
                                                bigcount
    <span style="color: #656565;">= </span>count print(bigword, bigcount)
                                            </p>
                                            <p style="padding-left: 52pt; text-indent: 0pt; line-height: 12pt; text-align: left;">
                                                <a href="http://www.py4e.com/code3/words.py" class="s28" target="_blank">#  Code:  http://www.py4e.com/code3/words.py</a>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-top: 5pt; padding-left: 52pt; text-indent: 0pt; text-align: justify;">
                                                You don’t even need to know Python to use this program. You will need to get through
                                                Chapter 10 of this book to fully understand the awesome Python techniques that were
                                                used to make the program. You are the end user, you simply use the program and marvel
                                                at its cleverness and how it saved you so much manual effort. You simply type the
                                                code into a file called
    <span class="s5">words.py </span>
                                                <a href="http://www.py4e.com/code3/" class="s4" target="_blank">and run it or you download
                                                    the source code from </a>
                                                <span style="color: #00F;">http://www.py4e.com/code3/ </span>and run it.
                                            </p>
                                            <p style="padding-top: 6pt; padding-left: 51pt; text-indent: 0pt; text-align: justify;">
                                                This is a good example of how Python and the Python language are acting as an intermediary
                                                between you (the end user) and me (the programmer). Python is a way for us to exchange
                                                useful instruction sequences (i.e., programs) in a common language that can be used
                                                by anyone who installs Python on their computer. So neither of us are talking
    <span class="s5">to Python</span>, instead we are communicating with each other
    <span class="s5">through </span>Python.
                                            </p>
                                            <a href="part9.aspx">
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
                                            <a href="part11.aspx">
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

