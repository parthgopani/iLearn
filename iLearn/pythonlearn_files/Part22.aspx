<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part22.aspx.cs" Inherits="pythonlearn_files_Part22" %>

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
                                            <a href="part21.aspx">
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
                                            <a href="part23.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>2.7  Order of operations
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                            <p >
                                                When more than one operator appears in an expression, the order of evaluation depends
                                                on the
    <span class="s5">rules of precedence</span>. For mathematical operators, Python follows mathematical convention. The acronym
                                                <span class="s5">PEMDAS </span>is a useful way to remember the rules:
                                            </p></div>
                                             <div class="card-body">
                                            <p style="padding-top: 3pt; padding-left: 19pt; text-indent: 0pt; text-align: left;">
                                                •
    <span class="s5"><em>P </em></span>arentheses have the highest precedence and can be used to force an expres- sion to evaluate in the
                                                order you want. Since expressions in parentheses are evaluated first,
    <span class="s3">2 * (3-1) </span>is 4, and
    <span class="s3">(1+1)**(5-2) </span>is 8. You can also use parentheses to make an expression easier to read, as in
    <span class="s3">(minute * 100) / 60</span>, even if it doesn’t change the result.
                                            </p></div>
                                           <div class="card-body">
                                            <p style="padding-top: 3pt; padding-left: 19pt; text-indent: 0pt; text-align: left;">
                                                <a name="bookmark71">• </a>
                                                <span class="s5"><em>E</em> </span>xponentiation has the next highest precedence, so
    <span class="s3">2**1+1 </span>is 3, not 4, and
                                            </p>
                                            <p class="s3" style="padding-left: 31pt; text-indent: 0pt; text-align: left;">
                                                3*1**3
    <span class="p">is 3, not 27.</span>
                                            </p></div>
                                               <div class="card-body">
                                            <p style="padding-top: 8pt; padding-left: 31pt; text-indent: -12pt; text-align: justify;">
                                                •
    <span class="s5"><em>M</em> </span>ultiplication and
    <span class="s5"><em>D</em></span>ivision have the same precedence, which is higher than
    <span class="s5"><em>A</em></span>ddition and
    <span class="s5"><em>S</em></span>ubtraction, which also have the same precedence. So
    <span class="s3">2*3-1 </span>is 5, not 4, and
    <span class="s3">6+4/2 </span>is 8, not 5.
                                            </p></div>
                                            <div class="card-body">                                            <p style="padding-top: 8pt; padding-left: 31pt; text-indent: -12pt; text-align: justify;">
                                                • Operators with the same precedence are evaluated from left to right. So the expression
                                                <span class="s3">5-3-1 </span>is 1, not 3, because the
    <span class="s3">5-3 </span>happens first and then
    <span class="s3">1 </span>is
                                            </p>
                                            <p style="padding-left: 31pt; text-indent: 0pt; text-align: left;">subtracted from 2.
                                            </p>
                                            </div>
                                            <div class="card-body">
                                            <p style="padding-left: 7pt; text-indent: 0pt; text-align: justify;">When in doubt,
                                                always put parentheses in your expressions to make sure the computations are performed
                                                in the order you intend.</p>
                                                </div>
                                            <a href="part21.aspx">
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
                                            <a href="part23.aspx">
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

