<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part18.aspx.cs" Inherits="pythonlearn_files_Part18" %>

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
                                                <p>
                                                    Programmers generally
                                                choose names for their variables that are meaningful and document what the variable
                                                    is used for.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    Variable names can be arbitrarily long. They can contain both letters and numbers,
                                                    but they cannot start with a number. It is legal to use uppercase letters, but it
                                                    is a good idea to begin variable names with a lowercase letter (you’ll see why later).
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    The underscore character ( _ ) can appear in a name. It is often used in names with
                                                    multiple words, such as
    <span class="s3">my_name </span>or
    <span class="s3">airspeed_of_unladen_swallow</span>. Variable names can start with an underscore character, but we generally
                                                avoid doing this unless we are writing library code for others to use.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    If you give a variable an illegal name, you get a syntax error:
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    &gt;&gt;&gt;
    <span style="color: #231F20;">76trombones </span>=
    <span style="color: #3F70A0;">&#39;big parade&#39; </span>
                                                    </p>
<p>
                                                    <span style="color: #BC7A00;">SyntaxError</span>
                                                    <span style="color: #231F20;">: invalid syntax</span>
                                                </p>
                                                <p>
                                                    &gt;&gt;&gt;
    <span style="color: #231F20;">more@ </span>=
    <span style="color: #3FA070;">1000000 </span>
                                                    </p>
<p>
                                                    <span style="color: #BC7A00;">SyntaxError</span>
                                                    <span style="color: #231F20;">: invalid syntax</span>
                                                </p>
                                                <p>
                                                    &gt;&gt;&gt;
    <span class="s23">class </span>=
    <span style="color: #3F70A0;">&#39;Advanced Theoretical Zymurgy&#39; </span>
                                                    </p>
<p>
                                                    <span style="color: #BC7A00;">SyntaxError</span>
                                                    <span style="color: #231F20;">: invalid syntax</span>
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    76trombones
    <span class="p">is illegal because it begins with a number. </span>more@
    <span class="p">is illegal because it contains an illegal character, @. But what’s wrong
        with </span>class
    <span class="p">?</span>
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    It turns out that
    <span class="s3">class </span>is one of Python’s
    <span class="s5">keywords</span>. The interpreter uses keywords to recognize the structure of the program, and they cannot be
                                                used as variable names.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    Python reserves 35 keywords:
                                                </p>
                                                <br />
                                                <div class="col-lg-6 grid-margin stretch-card">
                                                    <div class="table-responsive pt-3">
                                                        <table class="table table-bordered" style="text-align: center;">
                                                            <tr class="table-info">
                                                                <td>
                                                                    <p>
                                                                        and
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        continue
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        finally
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        is
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        raise
                                                                    </p>
                                                                </td>
                                                            </tr>
                                                            <tr class="table-warning">
                                                                <td>
                                                                    <p>
                                                                        as
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        def
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        for
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        lambda
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        return
                                                                    </p>
                                                                </td>
                                                            </tr>
                                                            <tr class="table-danger">
                                                                <td>
                                                                    <p>
                                                                        assert
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        del
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        from
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        None
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        True
                                                                    </p>
                                                                </td>
                                                            </tr>
                                                            <tr class="table-success">
                                                                <td>
                                                                    <p>
                                                                        async
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        elif
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        global
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        nonlocal
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        try
                                                                    </p>
                                                                </td>
                                                            </tr>
                                                            <tr class="table-primary">
                                                                <td>
                                                                    <p>
                                                                        await
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        else
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        if
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        not
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        while
                                                                    </p>
                                                                </td>
                                                            </tr>
                                                            <tr class="table-info">
                                                                <td>
                                                                    <p>
                                                                        break
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        except
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        import
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        or
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        with
                                                                    </p>
                                                                </td>
                                                            </tr>
                                                            <tr class="table-warning">
                                                                <td>
                                                                    <p>
                                                                        class
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        False
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        in
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        pass
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p>
                                                                        yield
                                                                    </p>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    You might want to keep this list handy. If the interpreter complains about one of
                                                    your variable names and you don’t know why, see if it is on this list.
                                                </p>
                                            </div>
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

