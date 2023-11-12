﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part27.aspx.cs" Inherits="pythonlearn_files_Part27" %>

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
                                            <a href="part26.aspx">
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
                                            <a href="part28.aspx">
                                                <button type="button" class="btn btn-outline-success btn-icon-text">
                                                    <i class="ti-alert btn-icon-prepend"></i>
                                                    Next
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>2.12  Choosing mnemonic variable names
                                                </h2>
                                            </div>

                                            <p style="padding-left: 51pt; text-indent: 0pt; text-align: justify;">
                                                As long as you
                                                follow the simple rules of variable naming, and avoid reserved words, you have a
                                                lot of choice when you name your variables. In the beginning, this choice can be
                                                confusing both when you read a program and when you write your own programs. For
                                                example, the following three programs are identical in terms of what they accomplish,
                                                but very different when you read them and try to understand them.
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s3" style="padding-top: 6pt; padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                a
    <span style="color: #656565;">= </span>
                                                <span style="color: #3FA070;">35.0</span>
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                b
    <span style="color: #656565;">= </span>
                                                <span style="color: #3FA070;">12.50</span>
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                c
    <span style="color: #656565;">= </span>a
    <span style="color: #656565;">* </span>b print(c)
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s3" style="padding-top: 6pt; padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                hours
    <span style="color: #656565;">= </span>
                                                <span style="color: #3FA070;">35.0</span>
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                rate
    <span style="color: #656565;">= </span>
                                                <span style="color: #3FA070;">12.50</span>
                                            </p>
                                            <p class="s3" style="padding-left: 51pt; text-indent: 0pt; text-align: left;">
                                                pay
    <span style="color: #656565;">= </span>hours
    <span style="color: #656565;">* </span>rate print(pay)
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s3" style="padding-top: 6pt; padding-left: 51pt; text-indent: 0pt; text-align: left;">
                                                x1q3z9ahd
    <span style="color: #656565;">= </span>
                                                <span style="color: #3FA070;">35.0</span>
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                x1q3z9afd
    <span style="color: #656565;">= </span>
                                                <span style="color: #3FA070;">12.50</span>
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                x1q3p9afd
    <span style="color: #656565;">= </span>x1q3z9ahd
    <span style="color: #656565;">* </span>x1q3z9afd print(x1q3p9afd)
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-top: 6pt; padding-left: 51pt; text-indent: 0pt; text-align: justify;">
                                                The Python interpreter sees all three of these programs as
    <span class="s5">exactly the same </span>but humans see and understand these programs quite differently. Humans will most quickly
                                                understand the
    <span class="s5">intent </span>of the second program because the programmer has chosen variable names that reflect their intent
                                                regarding what data will be stored in each variable.
                                            </p>
                                            <p style="padding-top: 6pt; padding-left: 51pt; text-indent: 0pt; text-align: justify;">
                                                We call these wisely chosen variable names “mnemonic variable names”. The word
    <a href="part39.aspx#bookmark81" style="color: #231F20; font-family: &quot; bookman old style&quot;
        , serif; font-style: italic; font-weight: normal; text-decoration: none; font-size: 10pt;">
        mnemonic</a>
                                                <span style="color: #00F; font-family: &quot; eras medium itc&quot; , sans-serif;
                                                    font-style: normal; font-weight: normal; text-decoration: none; font-size: 6.5pt;
                                                    vertical-align: 3pt;">2</span>
                                                <span class="s7"></span>means “memory aid”. We choose mnemonic variable names to
                                                help us remember why we created the variable in the first place.
                                            </p>
                                            <p style="padding-top: 7pt; padding-left: 51pt; text-indent: 0pt; text-align: justify;">
                                                While this all sounds great, and it is a very good idea to use mnemonic variable
                                                names, mnemonic variable names can get in the way of a beginning programmer’s ability
                                                to parse and understand code. This is because beginning programmers have not yet
                                                memorized the reserved words (there are only 35 of them) and sometimes variables
                                                with names that are too descriptive start to look like part of the language and
                                                not just well-chosen variable names.
                                            </p>
                                            <p style="padding-top: 6pt; padding-left: 51pt; text-indent: 0pt; text-align: justify;">
                                                Take a quick look at the following Python sample code which loops through some data.
                                                We will cover loops soon, but for now try to just puzzle through what this means:
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s3" style="padding-top: 6pt; padding-left: 72pt; text-indent: -20pt; text-align: left;">
                                                <span class="s23">for </span>word
    <span style="color: #656565;">in </span>words: print(word)
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 52pt; text-indent: 0pt; line-height: 1pt; text-align: left;">
                                                <span>
                                                    <img width="190" height="1" alt="image" src="Image_008.png" /></span>
                                            </p>
                                            <p class="s8" style="padding-left: 50pt; text-indent: 12pt; text-align: left;">
                                                <a name="bookmark81">2</a>
                                                <a href="https://en.wikipedia.org/wiki/Mnemonic" class="s81" target="_blank">See
                                                </a>
                                                <span class="s31">https://en.wikipedia.org/wiki/Mnemonic </span>
                                                <span class="s9">for an extended description of the word “mnemonic”.</span>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-top: 3pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                <a name="bookmark82">What is happening here? Which of the tokens (for, word, in, etc.)
                                                    are reserved words and which are just variable names? Does Python understand at
                                                    a funda- mental level the notion of words? Beginning programmers have trouble separating
                                                    what parts of the code </a>
                                                <span class="s5">must </span>be the same as this example and what parts of the code
                                                are simply choices made by the programmer.
                                            </p>
                                            <p style="padding-top: 7pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                The following code is equivalent to the above code:
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s3" style="padding-top: 8pt; padding-left: 27pt; text-indent: -20pt; text-align: left;">
                                                <span class="s23">for </span>slice
    <span style="color: #656565;">in </span>pizza: print(slice)
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-top: 8pt; padding-left: 7pt; text-indent: 0pt; text-align: justify;">
                                                It is easier for the beginning programmer to look at this code and know which parts
                                                are reserved words defined by Python and which parts are simply variable names chosen
                                                by the programmer. It is pretty clear that Python has no fundamental understanding
                                                of pizza and slices and the fact that a pizza consists of a set of one or more slices.
                                            </p>
                                            <p style="padding-top: 7pt; padding-left: 7pt; text-indent: 0pt; text-align: justify;">
                                                But if our program is truly about reading data and looking for words in the data,
                                                <span class="s3">pizza </span>and
    <span class="s3">slice </span>are very un-mnemonic variable names. Choosing them as variable names distracts from the meaning
                                                of the program.
                                            </p>
                                            <p style="padding-top: 7pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                After a pretty short period of time, you will know the most common reserved words
                                                and you will start to see the reserved words jumping out at you:
                                            </p>
                                            <p style="padding-top: 7pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                The parts of the code that are defined by Python (
    <span class="s3">for</span>,
    <span class="s3">in</span>,
    <span class="s3">print</span>, and
    <span class="s3">:</span>) are in bold and the programmer-chosen variables (
    <span class="s3">word </span>and
    <span class="s3">words</span>) are not in bold. Many text editors are aware of Python syntax and will color reserved words differently
                                                to give you clues to keep your variables and reserved words separate. After a while
                                                you will begin to read Python and quickly determine what is a variable and what
                                                is a reserved word.
                                            </p>
                                            <a href="part26.aspx">
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
                                            <a href="part28.aspx">
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
