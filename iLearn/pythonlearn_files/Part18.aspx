<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part18.aspx.cs" Inherits="pythonlearn_files_Part18" %>

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
                                            <a href="part17.aspx">
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
                                            <a href="part19.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>2.3  Variable names and keywords
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                            <p>Programmers generally
                                                choose names for their variables that are meaningful and document what the variable
                                                is used for.</p></div>
                                            <div class="card-body">
                                            <p>
                                                Variable names can be arbitrarily long. They can contain both letters and numbers,
                                                but they cannot start with a number. It is legal to use uppercase letters, but it
                                                is a good idea to begin variable names with a lowercase letter (you’ll see why later).
                                            </p></div>
                                            <div class="card-body">
                                            <p>
                                                The underscore character ( _ ) can appear in a name. It is often used in names with
                                                multiple words, such as
    <span class="s3">my_name </span>or
    <span class="s3">airspeed_of_unladen_swallow</span>. Variable names can start with an underscore character, but we generally
                                                avoid doing this unless we are writing library code for others to use.
                                            </p></div>
                                            <div class="card-body">
                                            <p>
                                                If you give a variable an illegal name, you get a syntax error:</p>
                                            </div>
                                            <div class="card-body">
                                            <p class="s22" style="padding-top: 6pt; padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">76trombones </span>=
    <span style="color: #3F70A0;">&#39;big parade&#39; </span>
                                                <span style="color: #BC7A00;">SyntaxError</span>
                                                <span style="color: #231F20;">: invalid syntax</span>
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span style="color: #231F20;">more@ </span>=
    <span style="color: #3FA070;">1000000 </span>
                                                <span style="color: #BC7A00;">SyntaxError</span>
                                                <span style="color: #231F20;">: invalid syntax</span>
                                            </p>
                                            <p class="s22" style="padding-left: 52pt; text-indent: 0pt; text-align: left;">
                                                &gt;&gt;&gt;
    <span class="s23">class </span>=
    <span style="color: #3F70A0;">&#39;Advanced Theoretical Zymurgy&#39; </span>
                                                <span style="color: #BC7A00;">SyntaxError</span>
                                                <span style="color: #231F20;">: invalid syntax</span>
                                            </p></div>
                                           <div class="card-body">
                                            <p class="s3">
                                                76trombones
    <span class="p">is illegal because it begins with a number. </span>more@
    <span class="p">is illegal because it contains an illegal character, @. But what’s wrong
        with </span>class
    <span class="p">?</span>
                                            </p></div>
                                            <div class="card-body">
                                            <p>
                                                It turns out that
    <span class="s3">class </span>is one of Python’s
    <span class="s5">keywords</span>. The interpreter uses keywords to recognize the structure of the program, and they cannot be
                                                used as variable names.
                                            </p></div>
                                            <div class="card-body">
                                            <p style="padding-top: 6pt; padding-left: 52pt; text-indent: 0pt; text-align: justify;">
                                                Python reserves 35 keywords:</p>
                                            <br />
                                                <div class="col-lg-6 grid-margin stretch-card">
                                                    <div class="table-responsive pt-3">
                                            <table class="table table-bordered" style="text-align: center;">
                                                <tr class="table-info">
                                                    <td style="width: 35pt">
                                                        <p class="s18" style="padding-left: 2pt; text-indent: 0pt; line-height: 9pt; text-align: left;">
                                                            and</p>
                                                    </td>
                                                    <td style="width: 48pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 9pt; text-align: left;">
                                                            continue</p>
                                                    </td>
                                                    <td style="width: 42pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 9pt; text-align: left;">
                                                            finally</p>
                                                    </td>
                                                    <td style="width: 47pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 9pt; text-align: left;">
                                                            is</p>
                                                    </td>
                                                    <td style="width: 36pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 9pt; text-align: left;">
                                                            raise</p>
                                                    </td>
                                                </tr>
                                                <tr class="table-warning">
                                                    <td style="width: 35pt">
                                                        <p class="s18" style="padding-left: 2pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            as</p>
                                                    </td>
                                                    <td style="width: 48pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            def</p>
                                                    </td>
                                                    <td style="width: 42pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            for</p>
                                                    </td>
                                                    <td style="width: 47pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            lambda</p>
                                                    </td>
                                                    <td style="width: 36pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            return</p>
                                                    </td>
                                                </tr>
                                                <tr class="table-danger">
                                                    <td style="width: 35pt">
                                                        <p class="s18" style="padding-left: 2pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            assert</p>
                                                    </td>
                                                    <td style="width: 48pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            del</p>
                                                    </td>
                                                    <td style="width: 42pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            from</p>
                                                    </td>
                                                    <td style="width: 47pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            None</p>
                                                    </td>
                                                    <td style="width: 36pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            True</p>
                                                    </td>
                                                </tr>
                                                <tr class="table-success">
                                                    <td style="width: 35pt">
                                                        <p class="s18" style="padding-left: 2pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            async</p>
                                                    </td>
                                                    <td style="width: 48pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            elif</p>
                                                    </td>
                                                    <td style="width: 42pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            global</p>
                                                    </td>
                                                    <td style="width: 47pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            nonlocal</p>
                                                    </td>
                                                    <td style="width: 36pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            try</p>
                                                    </td>
                                                </tr>
                                                <tr class="table-primary">
                                                    <td style="width: 35pt">
                                                        <p class="s18" style="padding-left: 2pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            await</p>
                                                    </td>
                                                    <td style="width: 48pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            else</p>
                                                    </td>
                                                    <td style="width: 42pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            if</p>
                                                    </td>
                                                    <td style="width: 47pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            not</p>
                                                    </td>
                                                    <td style="width: 36pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            while</p>
                                                    </td>
                                                </tr>
                                                <tr class="table-info">
                                                    <td style="width: 35pt">
                                                        <p class="s18" style="padding-left: 2pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            break</p>
                                                    </td>
                                                    <td style="width: 48pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            except</p>
                                                    </td>
                                                    <td style="width: 42pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            import</p>
                                                    </td>
                                                    <td style="width: 47pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            or</p>
                                                    </td>
                                                    <td style="width: 36pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 10pt; text-align: left;">
                                                            with</p>
                                                    </td>
                                                </tr>
                                                <tr class="table-warning">
                                                    <td style="width: 35pt">
                                                        <p class="s18" style="padding-left: 2pt; text-indent: 0pt; line-height: 9pt; text-align: left;">
                                                            class</p>
                                                    </td>
                                                    <td style="width: 48pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 9pt; text-align: left;">
                                                            False</p>
                                                    </td>
                                                    <td style="width: 42pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 9pt; text-align: left;">
                                                            in</p>
                                                    </td>
                                                    <td style="width: 47pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 9pt; text-align: left;">
                                                            pass</p>
                                                    </td>
                                                    <td style="width: 36pt">
                                                        <p class="s18" style="padding-left: 4pt; text-indent: 0pt; line-height: 9pt; text-align: left;">
                                                            yield</p>
                                                    </td>
                                                </tr>
                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            <div class="card-body">
                                            <p >
                                                You might want to keep this list handy. If the interpreter complains about one of
                                                your variable names and you don’t know why, see if it is on this list.</p></div>
                                            <a href="part17.aspx">
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
                                            <a href="part19.aspx">
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

