<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part34.aspx.cs" Inherits="pythonlearn_files_Part34" %>

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
                                            <a href="part33.aspx">
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
                                            <a href="part35.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>3.5  Chained conditionals
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    Sometimes there are more than two possibilities and we need more than two branches.
                                                    One way to express a computation like that is a
                                                    <span class="s5">chained conditional</span>:
                                                </p>
                                            </div>

                                            <div class="card-body">
                                                <p>
                                                    <span class="s23">if </span>x
                                                    <span style="color: #656565;">&lt; </span>y:
                                                </p>
                                                <p>
                                                    print(
                                                    <span style="color: #3F70A0;">&#39;x is less than y&#39;</span>)
                                                </p>
                                                <p>
                                                    <span class="s23">elif </span>x
                                                    <span style="color: #656565;">&gt; </span>y:
                                                </p>
                                                <p>
                                                    print(
                                                    <span style="color: #3F70A0;">&#39;x is greater than y&#39;</span>)
                                                </p>
                                                <p>
                                                    else
                                                </p>
                                                <p>
                                                    print(
                                                    <span style="color: #3F70A0;">&#39;x and y are equal&#39;</span>)
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    elif
                                                    <span class="p">is an abbreviation of “else if.” Again, exactly one branch will be executed.</span>
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    There is no limit on the number of
                                                    <span class="s3">elif </span>statements. If there is an
                                                    <span class="s3">else </span>clause, it has to be at the end, but there doesn’t
                                                    have to be one.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    <span class="s23">if </span>choice
                                                    <span style="color: #656565;">== </span>
                                                    <span style="color: #3F70A0;">&#39;a&#39;</span>: 
                                                    </p>
<p>print(
                                                    <span style="color: #3F70A0;">&#39;Bad guess&#39;</span>)
                                                </p>
                                                <p>
                                                    <span class="s23">elif </span>choice
                                                    <span style="color: #656565;">== </span>
                                                    <span style="color: #3F70A0;">&#39;b&#39;</span>: 
                                                    </p>
<p>print(
                                                    <span style="color: #3F70A0;">&#39;Good guess&#39;</span>)
                                                </p>
                                                <p>
                                                    <span class="s23">elif </span>choice
                                                    <span style="color: #656565;">== </span>
                                                    <span style="color: #3F70A0;">&#39;c&#39;</span>:
                                                </p>
                                                <p>
                                                    print(
                                                    <span style="color: #3F70A0;">&#39;Close, but not correct&#39;</span>)
                                                </p>
                                            </div>
                                                <p style="text-indent: 0pt; text-align: center;">
                                                    <span>
                                                        <img width="390" height="270" alt="image" src="../images/pythonimages/Image_012.png" /></span>
                                                </p>
                                            
                                            <div class="card-body">
                                                <p>
                                                    Each condition is checked in order. If the first is false, the next is checked,
                                                    and so on. If one of them is true, the corresponding branch executes, and the statement
                                                    ends. Even if more than one condition is true, only the first true branch executes.
                                                </p>
                                            </div>
                                            <a href="part33.aspx">
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
                                            <a href="part35.aspx">
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

