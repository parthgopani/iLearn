<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part36.aspx.cs" Inherits="pythonlearn_files_Part36" %>

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
                                            <a href="part35.aspx">
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
                                            <a href="part37.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>else
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                            <p class="s3" style="padding-left: 27pt; text-indent: 0pt; text-align: left;">
                                                print(
    <span style="color: #3F70A0;">&#39;x and y are equal&#39;</span>)
                                            </p>
                                                </div>
                                           <div class="card-body">
                                            <p class="s3" >
                                                elif
    <span class="p">is an abbreviation of “else if.” Again, exactly one branch will be executed.</span>
                                            </p></div>
                                            <div class="card-body">
                                            <p >
                                                There is no limit on the number of
    <span class="s3">elif </span>statements. If there is an
    <span class="s3">else </span>clause, it has to be at the end, but there doesn’t have to be one.
                                            </p></div>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <div class="card-body">
                                            <p class="s3" style="padding-left: 27pt; text-indent: -20pt; text-align: left;">
                                                <span class="s23">if </span>choice
    <span style="color: #656565;">== </span>
                                                <span style="color: #3F70A0;">&#39;a&#39;</span>: print(
    <span style="color: #3F70A0;">&#39;Bad guess&#39;</span>)
                                            </p>
                                            <p class="s3" style="padding-left: 27pt; text-indent: -20pt; text-align: left;">
                                                <span class="s23">elif </span>choice
    <span style="color: #656565;">== </span>
                                                <span style="color: #3F70A0;">&#39;b&#39;</span>: print(
    <span style="color: #3F70A0;">&#39;Good guess&#39;</span>)
                                            </p>
                                            <p class="s3" style="padding-left: 7pt; text-indent: 0pt; line-height: 12pt; text-align: left;">
                                                <span class="s23">elif </span>choice
    <span style="color: #656565;">== </span>
                                                <span style="color: #3F70A0;">&#39;c&#39;</span>:
                                            </p>
                                            <p class="s3" style="padding-left: 27pt; text-indent: 0pt; text-align: left;">
                                                print(
    <span style="color: #3F70A0;">&#39;Close, but not correct&#39;</span>)
                                            </p></div>
                                            <p class="s5" style="padding-top: 1pt; padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <a name="bookmark111">3.6. NESTED CONDITIONALS</a>
                                               
                                            </p>
                                           
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <span>
                                                    <img width="203" height="185" alt="image" src="../images/pythonimages/Image_012.png" /></span>
                                            </p>
                                            <div class="card-body">
                                            <p class="s37" style="text-indent: 0pt; line-height: 6pt; text-align: left;">
                                                x
    <span class="s38"></span>&lt;
    <span class="s38"></span>y
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;" />
                                            <p class="s37" style="text-indent: 0pt; line-height: 6pt; text-align: left;">print(‘less’)
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;" />
                                            <p class="s37" style="text-indent: 0pt; line-height: 6pt; text-align: left;">
                                                x
    <span class="s38"></span>&gt;
    <span class="s38"></span>y
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;" />
                                            <p class="s37" style="padding-top: 4pt; padding-left: 4pt; text-indent: 0pt; text-align: left;">
                                                print(‘equal’)</p>
                                            <p style="text-indent: 0pt; text-align: left;" />
                                            <p class="s37" style="padding-top: 4pt; padding-left: 3pt; text-indent: 0pt; text-align: left;">
                                                print
    <span class="s38"></span>(‘greater’)
                                            </p></div>
                                           
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <div class="card-body">
                                            <p>
                                                Each condition is checked in order. If the first is false, the next is checked,
                                                and so on. If one of them is true, the corresponding branch executes, and the statement
                                                ends. Even if more than one condition is true, only the first true branch executes.
                                            </p></div>
                                            <a href="part35.aspx">
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
                                            <a href="part37.aspx">
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
        var paragraphs = document.querySelectorAll('.card-body p');
        var textToRead = Array.from(paragraphs).map(p => p.textContent).join(' ');
        responsiveVoice.speak(textToRead);
    }
    </script>
</asp:Content>

