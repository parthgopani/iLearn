<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part25.aspx.cs" Inherits="pythonlearn_files_Part25" %>

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
                                            <a href="part24.aspx">
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
                                            <a href="part26.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>2.10  Asking the user for input
                                                </h2>
                                            </div>
                                             <div class="card-body">
                                            <p >
                                                Sometimes we would like to take the value for a variable from the user via their
                                                keyboard. Python provides a built-in function called
    <span class="s3">input </span>
                                                that gets input from the keyboard
                                                . When this function is called, the program stops
                                                and waits for the user to type something. When the user presses
    <span class="s3">Return </span>or
    <span class="s3">Enter</span>, the program resumes and
    <span class="s3">input </span>returns what the user typed as a string.
                                            </p></div>
                                            <div class="card-body">
                                            <p class="s22" style="padding-left: 51pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">inp </span>=
    <span style="color: #231F20;">input() Some silly stuff</span>
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">print(inp) Some silly stuff</span>
                                            </p>
                                                </div>
                                            <div class="card-body">
                                            <p >
                                                Before getting input from the user, it is a good idea to print a prompt telling
                                                the user what to input. You can pass a string to
    <span class="s3">input </span>to be displayed to the user before pausing for input:
                                            </p>
                                                </div>
                                            <div class="card-body">
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                <span style="color: #656565;">&gt;&gt;&gt; </span>name
    <span style="color: #656565;">= </span>input(
    <span style="color: #3F70A0;">&#39;What is your name?\n&#39;</span>) What
    <span style="color: #656565;">is </span>your name?
                                            </p>
                                            <p class="s3" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">Chuck
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">print(name) Chuck</span>
                                            </p>
                                                </div>
                                             <div class="card-body">
                                            <p >
                                                The sequence
    <span class="s3">\n </span>at the end of the prompt represents a
    <span class="s5">newline</span>, which is a special character that causes a line break. That’s why the user’s input appears
                                                below the prompt.
                                            </p></div>
                                             <div class="card-body">
                                            <p >
                                                If you expect the user to type an integer, you can try to convert the return value
                                                to
    <span class="s3">int </span>using the
    <span class="s3">int() </span>function:
                                            </p></div>
                                             <div class="card-body">
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">prompt </span>=
    <span style="color: #3F70A0;">&#39;What...is the airspeed velocity of an unladen swallow?\n&#39;</span>
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">speed </span>=
    <span style="color: #231F20;">input(prompt)</span>
                                            </p>
                                            <p class="s3" style="padding-bottom: 3pt; padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                What...
    <span style="color: #656565;">is </span>the airspeed velocity of an unladen swallow?
    <span style="color: #3FA070;">17</span>
                                            </p>
                                            <p style="padding-left: 52pt; text-indent: 0pt; line-height: 1pt; text-align: left;">
                                                
                                            </p>
                                            <p class="s8" style="padding-left: 63pt; text-indent: 0pt; text-align: left;">
                                                    <span class="s9">In Python 2.0, this function was named </span>
                                                <span class="s29">raw_input</span>
                                                <span class="s30">.</span>
                                            </p>
                                                 </div>
                                            <div class="card-body">
                                            <p class="s22" style="padding-top: 3pt; padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                <a name="bookmark77">&gt;&gt;&gt; </a>
                                                <span style="color: #231F20;">int(speed) </span>
                                                <span style="color: #3FA070;">17</span>
                                            </p>
                                            <p class="s22" style="padding-left: 6pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">int(speed) </span>+
    <span style="color: #3FA070;">5 22</span>
                                            </p>
                                                </div>

                                            <div class="card-body">
                                            <p style="padding-left: 7pt; text-indent: 0pt; text-align: justify;">But if the user
                                                types something other than a string of digits, you get an error:</p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s22" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">speed </span>=
    <span style="color: #231F20;">input(prompt)</span>
                                            </p>
                                            <p class="s3" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                What...
    <span style="color: #656565;">is </span>the airspeed velocity of an unladen swallow? What do you mean, an African
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
                                                </div>
                                             <div class="card-body">
                                            <p style="padding-left: 6pt; text-indent: 0pt; text-align: justify;">We will see how
                                                to handle this kind of error later.</p></div>
                                            <a href="part24.aspx">
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
                                            <a href="part26.aspx">
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

