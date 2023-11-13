<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part26.aspx.cs" Inherits="pythonlearn_files_Part26" %>

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
                                            <a href="part25.aspx">
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
                                            <a href="part27.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>2.11  Comments
                                                </h2>
                                            </div>

                                            <p style="padding-left: 6pt; text-indent: 0pt; text-align: justify;">As programs get
                                                bigger and more complicated, they get more difficult to read. Formal languages are
                                                dense, and it is often difficult to look at a piece of code and figure out what
                                                it is doing, or why.</p>
                                            <p style="padding-top: 5pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                For this reason, it is a good idea to add notes to your programs to explain in natural
                                                language what the program is doing. These notes are called
    <span class="s5">comments</span>, and in Python they start with the
    <span class="s3"># </span>symbol:
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s27" style="padding-left: 7pt; text-indent: 0pt; text-align: left;"># compute
                                                the percentage of the hour that has elapsed</p>
                                            <p class="s3" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                percentage
    <span style="color: #656565;">= </span>(minute
    <span style="color: #656565;">* </span>
                                                <span style="color: #3FA070;">100</span>)
    <span style="color: #656565;">/ </span>
                                                <span style="color: #3FA070;">60</span>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 7pt; text-indent: 0pt; text-align: justify;">In this case, the
                                                comment appears on a line by itself. You can also put comments at the end of a line:
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s3" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                percentage
    <span style="color: #656565;">= </span>(minute
    <span style="color: #656565;">* </span>
                                                <span style="color: #3FA070;">100</span>)
    <span style="color: #656565;">/ </span>
                                                <span style="color: #3FA070;">60    </span>
                                                <span class="s27"># percentage of an hour</span>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                Everything from the
    <span class="s3"># </span>to the end of the line is ignored; it has no effect on the program.
                                            </p>
                                            <p style="padding-top: 5pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                Comments are most useful when they document non-obvious features of the code. It
                                                is reasonable to assume that the reader can figure out
    <span class="s5">what </span>the code does; it is much more useful to explain
    <span class="s5">why</span>.
                                            </p>
                                            <p style="padding-top: 5pt; padding-left: 6pt; text-indent: 0pt; text-align: justify;">
                                                This comment is redundant with the code and useless:</p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s3" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                v
    <span style="color: #656565;">= </span>
                                                <span style="color: #3FA070;">5   </span>
                                                <span class="s27"># assign 5 to v</span>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 6pt; text-indent: 0pt; text-align: justify;">This comment contains
                                                useful information that is not in the code:</p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s3" style="padding-left: 6pt; text-indent: 0pt; text-align: left;">
                                                v
    <span style="color: #656565;">= </span>
                                                <span style="color: #3FA070;">5    </span>
                                                <span class="s27"># velocity in meters/second.</span>
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="padding-left: 7pt; text-indent: 0pt; text-align: justify;">Good variable names
                                                can reduce the need for comments, but long names can make complex expressions hard
                                                to read, so there is a trade-off.</p>
                                            <p class="s5" style="padding-top: 1pt; padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <a name="bookmark79">2.12. CHOOSING MNEMONIC VARIABLE NAMES</a>
                                                <span class="s11"></span>
                                                <span class="p">27</span>
                                            </p>
                                            <a href="part25.aspx">
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
                                            <a href="part27.aspx">
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

