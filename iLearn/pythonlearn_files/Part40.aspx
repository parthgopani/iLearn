﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part40.aspx.cs" Inherits="pythonlearn_files_Part40" %>

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
                                            <a href="part39.aspx">
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
                                            <a href="part41.aspx">
                                                <button type="button" class="btn btn-outline-success btn-icon-text">
                                                    <i class="ti-alert btn-icon-prepend"></i>
                                                    Next
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>3.7  Catching exceptions using try and except
                                                </h2>
                                            </div>

                                            <p style="padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                Earlier we saw a code segment where we used the
    <span class="s3">input </span>and
    <span class="s3">int </span>functions to read and parse an integer number entered by the user. We also saw how treacherous doing
                                                this could be:
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">prompt </span>=
    <span style="color: #3F70A0;">&quot;What is the air velocity of an unladen swallow?\n&quot;</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">speed </span>=
    <span style="color: #231F20;">input(prompt)</span>
                                            </p>
                                            <p class="s3" style="padding-left: 6pt; text-indent: 0pt; text-align: left;">
                                                What
    <span style="color: #656565;">is </span>the air velocity of an unladen swallow? What do you mean, an African
    <span style="color: #656565;">or </span>a European swallow?
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">int(speed)</span>
                                            </p>
                                            <p class="s3" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                <span style="color: #BC7A00;">ValueError</span>: invalid literal
    <span class="s23">for </span>int()
    <span class="s23">with </span>base
    <span style="color: #3FA070;">10</span>:
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">&gt;&gt;&gt;
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-top: 6pt; padding-left: 7pt; text-indent: 0pt; text-align: justify;">
                                                When we are executing these statements in the Python interpreter, we get a new prompt
                                                from the interpreter, think “oops”, and move on to our next statement.</p>
                                            <p style="padding-top: 6pt; padding-left: 7pt; text-indent: 0pt; text-align: justify;">
                                                However if you place this code in a Python script and this error occurs, your script
                                                immediately stops in its tracks with a traceback. It does not execute the following
                                                statement.</p>
                                            <p style="padding-top: 6pt; padding-left: 7pt; text-indent: 0pt; text-align: justify;">
                                                Here is a sample program to convert a Fahrenheit temperature to a Celsius tem- perature:
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s3" style="padding-top: 5pt; padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                inp
    <span style="color: #656565;">= </span>input(
    <span style="color: #3F70A0;">&#39;Enter Fahrenheit Temperature: &#39;</span>) fahr
    <span style="color: #656565;">= </span>float(inp)
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                <span style="color: #231F20;">cel </span>=
    <span style="color: #231F20;">(fahr </span>-
    <span style="color: #3FA070;">32.0</span>
                                                <span style="color: #231F20;">) </span>*
    <span style="color: #3FA070;">5.0 </span>/
    <span style="color: #3FA070;">9.0 </span>
                                                <span style="color: #231F20;">print(cel)</span>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                <a href="http://www.py4e.com/code3/fahren.py" class="s28" target="_blank">#  Code:  http://www.py4e.com/code3/fahren.py</a>
                                            </p>
                                            <p class="s5" style="padding-top: 1pt; padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                3.7. CATCHING EXCEPTIONS USING TRY AND EXCEPT
    <span class="s11"></span>
                                                <span class="p">37</span>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 52pt; text-indent: 0pt; text-align: justify;">If we execute
                                                this code and give it invalid input, it simply fails with an unfriendly error message:
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s25" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">python
                                                fahren.py</p>
                                            <p class="s25" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">Enter
                                                Fahrenheit Temperature:72 22.22222222222222</p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s25" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">python
                                                fahren.py</p>
                                            <p class="s25" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">Enter
                                                Fahrenheit Temperature:fred Traceback (most recent call last):</p>
                                            <p class="s25" style="padding-left: 70pt; text-indent: -9pt; text-align: left;">File
                                                &quot;fahren.py&quot;, line 2, in &lt;module&gt; fahr = float(inp)</p>
                                            <p class="s25" style="padding-left: 52pt; text-indent: 0pt; line-height: 11pt; text-align: left;">
                                                ValueError: could not convert string to float: &#39;fred&#39;</p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 52pt; text-indent: 0pt; text-align: justify;">
                                                There is a conditional execution structure built into Python to handle these types
                                                of expected and unexpected errors called “try / except”. The idea of
    <span class="s3">try </span>and
    <span class="s3">except </span>is that you know that some sequence of instruction(s) may have a problem and you want to add
                                                some statements to be executed if an error occurs. These extra statements (the except
                                                block) are ignored if there is no error.
                                            </p>
                                            <p style="padding-top: 5pt; padding-left: 52pt; text-indent: 0pt; text-align: justify;">
                                                You can think of the
    <span class="s3">try </span>and
    <span class="s3">except </span>feature in Python as an “insurance policy” on a sequence of statements.
                                            </p>
                                            <p style="padding-top: 5pt; padding-left: 51pt; text-indent: 0pt; text-align: justify;">
                                                We can rewrite our temperature converter as follows:</p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                inp
    <span style="color: #656565;">= </span>input(
    <span style="color: #3F70A0;">&#39;Enter Fahrenheit Temperature:&#39;</span>)
                                            </p>
                                            <p class="s23" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                try
    <span class="s3">:</span>
                                            </p>
                                            <p class="s3" style="padding-left: 72pt; text-indent: 0pt; text-align: left;">
                                                fahr
    <span style="color: #656565;">= </span>float(inp)
                                            </p>
                                            <p class="s22" style="padding-left: 72pt; text-indent: 0pt; text-align: left;">
                                                <span style="color: #231F20;">cel </span>=
    <span style="color: #231F20;">(fahr </span>-
    <span style="color: #3FA070;">32.0</span>
                                                <span style="color: #231F20;">) </span>*
    <span style="color: #3FA070;">5.0 </span>/
    <span style="color: #3FA070;">9.0 </span>
                                                <span style="color: #231F20;">print(cel)</span>
                                            </p>
                                            <p class="s23" style="padding-left: 52pt; text-indent: 0pt; line-height: 12pt; text-align: left;">
                                                except
    <span class="s3">:</span>
                                            </p>
                                            <p class="s3" style="padding-left: 72pt; text-indent: 0pt; text-align: left;">
                                                print(
    <span style="color: #3F70A0;">&#39;Please enter a number&#39;</span>)
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <a href="http://www.py4e.com/code3/fahren2.py" class="s28" target="_blank">#  Code:
                                                    http://www.py4e.com/code3/fahren2.py</a>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 51pt; text-indent: 0pt; text-align: justify;">
                                                Python starts by executing the sequence of statements in the
    <span class="s3">try </span>block. If all goes well, it skips the
    <span class="s3">except </span>block and proceeds. If an exception occurs in the
    <span class="s3">try </span>block, Python jumps out of the
    <span class="s3">try </span>block and executes the sequence of statements in the
    <span class="s3">except </span>block.
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s25" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">python
                                                fahren2.py</p>
                                            <p class="s25" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">Enter
                                                Fahrenheit Temperature:72 22.22222222222222</p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s25" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">python
                                                fahren2.py</p>
                                            <p class="s25" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">Enter
                                                Fahrenheit Temperature:fred Please enter a number</p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 51pt; text-indent: 0pt; text-align: justify;">
                                                Handling an exception with a
    <span class="s3">try </span>statement is called
    <span class="s5">catching </span>an exception. In this example, the
    <span class="s3">except </span>clause prints an error message. In general, catching an exception gives you a chance to fix the
                                                problem, or try again, or at least end the program gracefully.
                                            </p>
                                            <a href="part39.aspx">
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
                                            <a href="part41.aspx">
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
