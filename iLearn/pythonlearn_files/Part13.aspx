<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part13.aspx.cs" Inherits="pythonlearn_files_Part13" %>

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
                                            <a href="part12.aspx">
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
                                            <a href="part14.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>1.11  Debugging
                                                </h2>
                                            </div>

                                            <p style="padding-left: 7pt; text-indent: 0pt; text-align: justify;">When Python spits
                                                out an error or even when it gives you a result that is different from what you
                                                had intended, then begins the hunt for the cause of the error. Debugging is the
                                                process of finding the cause of the error in your code. When you are debugging a
                                                program, and especially if you are working on a hard bug, there are four things
                                                to try:</p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s10" style="padding-left: 31pt; text-indent: -24pt; text-align: justify;">
                                                reading
    <span class="p">Examine your code, read it back to yourself, and check that it says
        what you meant to say.</span>
                                            </p>
                                            <p class="s10" style="padding-left: 31pt; text-indent: -24pt; text-align: justify;">
                                                running
    <span class="p">Experiment by making changes and running different versions. Often if
        you display the right thing at the right place in the program, the prob- lem becomes
        obvious, but sometimes you have to spend some time to build scaffolding.</span>
                                            </p>
                                            <p class="s10" style="padding-left: 31pt; text-indent: -24pt; text-align: justify;">
                                                ruminating
    <span class="p">Take some time to think! What kind of error is it: syntax, runtime,
        semantic? What information can you get from the error messages, or from the output
        of the program? What kind of error could cause the problem you’re seeing? What did
        you change last, before the problem appeared?</span>
                                            </p>
                                            <p class="s10" style="padding-left: 31pt; text-indent: -24pt; text-align: justify;">
                                                retreating
    <span class="p">At some point, the best thing to do is back off, undoing recent changes,
        until you get back to a program that works and that you understand. Then you can
        start rebuilding.</span>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 6pt; text-indent: 0pt; text-align: justify;">Beginning programmers
                                                sometimes get stuck on one of these activities and forget the others. Finding a
                                                hard bug requires reading, running, ruminating, and some- times retreating. If you
                                                get stuck on one of these activities, try the others. Each activity comes with its
                                                own failure mode.</p>
                                            <p style="padding-top: 6pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                For example, reading your code might help if the problem is a typographical error,
                                                but not if the problem is a conceptual misunderstanding. If you don’t understand
                                                what your program does, you can read it 100 times and never see the error, because
                                                the error is in your head.</p>
                                            <p style="padding-top: 6pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                Running experiments can help, especially if you run small, simple tests. But if
                                                you run experiments without thinking or reading your code, you might fall into a
                                                pattern I call “random walk programming”, which is the process of making random
                                                changes until the program does the right thing. Needless to say, random walk programming
                                                can take a long time.</p>
                                            <p style="padding-top: 6pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                You have to take time to think. Debugging is like an experimental science. You should
                                                have at least one hypothesis about what the problem is. If there are two or more
                                                possibilities, try to think of a test that would eliminate one of them.</p>
                                            <p style="padding-top: 6pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                Taking a break helps with the thinking. So does talking. If you explain the problem
                                                to someone else (or even to yourself), you will sometimes find the answer before
                                                you finish asking the question.</p>
                                            <p style="padding-top: 6pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                But even the best debugging techniques will fail if there are too many errors, or
                                                if the code you are trying to fix is too big and complicated. Sometimes the best
                                            </p>
                                            <p class="s5" style="padding-top: 1pt; padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <a name="bookmark37">1.12. THE LEARNING JOURNEY</a>
                                                <span class="s11"></span>
                                                <span class="p">15</span>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 52pt; text-indent: 0pt; text-align: justify;">option is to retreat,
                                                simplifying the program until you get to something that works and that you understand.
                                            </p>
                                            <p style="padding-top: 5pt; padding-left: 52pt; text-indent: 0pt; text-align: justify;">
                                                Beginning programmers are often reluctant to retreat because they can’t stand to
                                                delete a line of code (even if it’s wrong). If it makes you feel better, copy your
                                                program into another file before you start stripping it down. Then you can paste
                                                the pieces back in a little bit at a time.</p>
                                            <a href="part12.aspx">
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
                                            <a href="part14.aspx">
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

