<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part24.aspx.cs" Inherits="pythonlearn_files_Part24" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
                                            <a href="part23.aspx">
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
                                            <a href="part25.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>2.8  Modulus operator
                                                </h2>
                                            </div>
                                             <div class="card-body">
                                            <p>
                                                The
    <span class="s3">+ </span>operator works with strings, but it is not addition in the mathematical sense. Instead it performs
                                                <span class="s5">concatenation</span>, which means joining the strings by linking
                                                them end to end. For example:
                                            </p></div>
                                             <div class="card-body">
                                            
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">first </span>=
    <span style="color: #3FA070;">10</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">second </span>=
    <span style="color: #3FA070;">15</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">print(first</span>+
    <span style="color: #231F20;">second) </span>
                                                <span style="color: #3FA070;">25</span>
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">first </span>=
    <span style="color: #3F70A0;">&#39;100&#39;</span>
                                            </p>
                                                 </div>
                                            <br />
                                             <div class="card-body">
                                            <p class="s5" style="padding-top: 1pt; padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <a name="bookmark74">2.10. ASKING THE USER FOR INPUT</a>
                                                <span class="s11"></span>
                                               
                                                <a name="bookmark76">&zwnj;</a>
                                            </p>
                                           <br />
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">second </span>=
    <span style="color: #3F70A0;">&#39;150&#39;</span>
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">print(first </span>+
    <span style="color: #231F20;">second) </span>
                                                <span style="color: #3FA070;">100150</span>
                                            </p>
                                           </div>
                                             <div class="card-body">
                                            <p style="padding-left: 51pt; text-indent: 0pt; text-align: justify;">
                                                The
    <span class="s3">* </span>operator also works with strings by multiplying the content of a string by an integer. For example:
                                            </p></div>
                                             <div class="card-body">
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">first </span>=
    <span style="color: #3F70A0;">&#39;Test &#39;</span>
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">second </span>=
    <span style="color: #3FA070;">3</span>
                                            </p>
                                            <p class="s22" style="padding-left: 51pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">print(first </span>*
    <span style="color: #231F20;">second) Test Test Test</span>
                                            </p></div>
                                            <a href="part23.aspx">
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
                                            <a href="part25.aspx">
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

