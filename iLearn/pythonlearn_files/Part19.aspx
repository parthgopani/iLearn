<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part19.aspx.cs" Inherits="pythonlearn_files_Part19" %>

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
                                            <a href="part18.aspx">
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
                                            <a href="part20.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>2.4  Statements
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                            <p>
                                                A
    <span class="s5">statement </span>is a unit of code that the Python interpreter can execute. We have seen two kinds of statements:
                                                print being an expression statement and assignment.
                                            </p></div>
                                            <div class="card-body">
                                            <p>
                                                When you type a statement in interactive mode, the interpreter executes it and displays
                                                the result, if there is one.
                                            </p></div>
                                            <div class="card-body">
                                            <p>
                                                <a name="bookmark66">A script usually contains a sequence of statements. If there is
                                                    more than one statement, the results appear one at a time as the statements execute.</a>
                                            </p></div>
                                            <div class="card-body">
                                            <p>
                                                For example, the script
                                            </p></div>
                                           <div class="card-body">
                                            <p class="s3" style="padding-top: 6pt; padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                print(
    <span style="color: #3FA070;">1</span>) x
    <span style="color: #656565;">= </span>
                                                <span style="color: #3FA070;">2 </span>print(x)
                                            </p>
                                           
                                            <p style="padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                produces the output
                                            </p>
                                            <p style="text-indent: 0pt; text-align: left;">
                                                <br />
                                            </p>
                                            <p class="s25" style="padding-top: 6pt; padding-left: 7pt; text-indent: 0pt; text-align: left;">
                                                1
                                            </p>
                                            <p class="s25" style="padding-left: 7pt; text-indent: 0pt; text-align: left;">2</p>
                                           
                                               </div>
                                            <div class="card-body">
                                            <p >
                                                The assignment statement produces no output.
                                            </p></div>
                                            <a href="part18.aspx">
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
                                            <a href="part20.aspx">
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

