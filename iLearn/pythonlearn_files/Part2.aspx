<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part2.aspx.cs" Inherits="pythonlearn_files_Part2" %>

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
                                            <a href="part1.aspx">
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
                                            <a href="part3.aspx">
                                                <button type="button" class="btn btn-outline-success btn-icon-text">
                                                    <i class="ti-alert btn-icon-prepend"></i>
                                                    Next
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align:center;">
                                                <h2>Why should you learn to write programs?</h2>
                                                </div>
                                                <div class="card-body">
                                                <p>
                                                    Writing programs (or programming) is a very creative and rewarding activity. You
                                                    can write programs for many reasons, ranging from making your living to solving
                                                    a difficult data analysis problem to having fun to helping someone else solve a
                                                    problem. This book assumes that
                                                    <span class="s5">everyone </span>needs to know how to program, and that once you
                                                    know
    how to program you will figure out what you want to do with your newfound skills.
                                                </p>
                                            </div>
                                             <div class="card-body">
                                            <p style="text-indent: 0pt; text-align: center;">
                                                <span>
                                                    <img width="169" height="94" alt="image" src="../images/pythonimages/Image_002.png" /></span>
                                            </p>
                                                 </div>
                                            <div class="card-body">
                                                <p>
                                                    We are surrounded in our daily lives with computers ranging from laptops to cell
                                                    phones. We can think of these computers as our “personal assistants” who can take
                                                    care of many things on our behalf. The hardware in our current-day computers is
                                                    essentially built to continuously ask us the question, “What would you like me to
                                                    do next?”
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    Programmers add
        an operating system and a set of applications to the hardware and we end up with
        a Personal Digital Assistant that is quite helpful and capable of helping us do
        many different things.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    Our computers are fast and have vast amounts of memory and could be very helpful
                                                    to us if we only knew the language to speak to explain to the computer what we would
                                                    like it to “do next”. If we knew this language, we could tell the computer to do
                                                    tasks on our behalf that were repetitive. Interestingly, the kinds of things computers
                                                    can do best are often the kinds of things that we humans find boring and mind-numbing.
                                                </p>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-9 stretch-card">
                                                    <div class="card">
                                                    <div class="card-body">
                                                        <p>
                                                            For example, look at the first three paragraphs of this chapter and tell me the
                                                            most commonly used word and how many times the word is used. While you were able
                                                            to read and understand the words in a few seconds, counting them is almost painful
                                                            because it is not the kind of problem that human minds are designed to solve. For
                                                            a computer, the opposite is true, reading and understanding text from a piece of
                                                            paper is hard for a computer to do but counting the words and telling you how many
                                                            times the most used word was used is very easy for the computer:
                                                        </p>
                                                    </div>
                                                        </div>
                                                </div>
                                                <div class="col-md-3 stretch-card">
                                                    <div class="card">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Example</h4>
                                                        <p class="s3">
                                                            python words.py
                                                    <br />
                                                            Enter file:words.txt
                                                    <br />
                                                            to
    <span style="color: #3FA070;">16</span>
                                                        </p>
                                                    </div>
                                                        </div>
                                                </div>
                                            </div>
                                        <div class="card-body">
                                            <p>
                                                Our “personal information
        analysis assistant” quickly told us that the word “to” was used sixteen times in
        the first three paragraphs of this chapter.
                                            </p>
                                        </div>
                                        <div class="card-body">
                                            <p>
                                                This very fact that computers are good at things that humans are not is why you
                                                need to become skilled at talking “computer language”. Once you learn this new language,
                                                you can delegate mundane tasks to your partner (the computer), leaving more time
                                                for you to do the things that you are uniquely suited for. You bring creativity,
                                                intuition, and inventiveness to this partnership.
                                            </p>
                                        </div>
                                        <a href="part1.aspx">
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
                                        <a href="part3.aspx">
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

