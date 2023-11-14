<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part6.aspx.cs" Inherits="pythonlearn_files_Part6" %>

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
                                            <a href="part5.aspx">
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
                                            <a href="part7.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>1.4  Words and sentences
                                                </h2>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    Unlike human languages, the Python vocabulary is actually pretty small. We call
                                                    this “vocabulary” the “reserved words”. These are words that have very special meaning
                                                    to Python. When Python sees these words in a Python program, they have one and only
                                                    one meaning to Python. Later as you write programs you will make up your own words
                                                    that have meaning to you called
    <span class="s5">variables</span>. You will have great latitude in choosing your names for your variables, but you cannot use any
                                                    of Python’s reserved words as a name for a variable.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    When we train a dog, we use special words like “sit”, “stay”, and “fetch”. When
                                                    you talk to a dog and don’t use any of the reserved words, they just look at you
                                                    with a quizzical look on their face until you say a reserved word. For example,
                                                    if you say, “I wish more people would walk to improve their overall health”, what
                                                    most dogs likely hear is, “blah blah blah walk blah blah blah blah.” That is because
                                                    “walk” is a reserved word in dog language. Many might suggest that the language
                                                    between humans and cats has no reserved words.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    The reserved words in the language where humans talk to Python include the following:
                                                </p>
                                            </div>
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
                                                                    del
                                                                </p>
                                                            </td>
                                                            <td>
                                                                <p>
                                                                    global
                                                                </p>
                                                            </td>
                                                            <td>
                                                                <p>
                                                                    not
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
                                                                    as
                                                                </p>
                                                            </td>
                                                            <td>
                                                                <p>
                                                                    elif
                                                                </p>
                                                            </td>
                                                            <td>
                                                                <p>
                                                                    if
                                                                </p>
                                                            </td>
                                                            <td>
                                                                <p>
                                                                    or
                                                                </p>
                                                            </td>
                                                            <td>
                                                                <p>
                                                                    yield
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
                                                                    else
                                                                </p>
                                                            </td>
                                                            <td>
                                                                <p>
                                                                    import
                                                                </p>
                                                            </td>
                                                            <td>
                                                                <p>
                                                                    pass
                                                                </p>
                                                            </td>
                                                            <td>
                                                                <p>
                                                                    while
                                                                </p>
                                                            </td>
                                                        </tr>
                                                        <tr class="table-success">
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
                                                                    in
                                                                </p>
                                                            </td>
                                                            <td>
                                                                <p>
                                                                    raise
                                                                </p>
                                                            </td>
                                                            <td>
                                                                <p>
                                                                    nonlocal
                                                                </p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <p>
                                                                    class
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
                                                                    return
                                                                </p>
                                                            </td>
                                                            <td>
                                                                <p>
                                                                    from
                                                                </p>
                                                            </td>
                                                        </tr>
                                                        <tr class="table-primary">
                                                            <td>
                                                                <p>
                                                                    continue
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
                                                                    try
                                                                </p>
                                                            </td>
                                                            <td>
                                                                <p>
                                                                    def
                                                                </p>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    That is it, and
                                                unlike a dog, Python is already completely trained. When you say “try”, Python will
                                                    try every time you say it without fail.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    We will learn these reserved words and how they are used in
                                                good time, but for now we will focus on the Python equivalent of “speak” (in human-to-dog
                                                    language). The nice thing about telling Python to speak is that we can even tell
                                                    it what to say by giving it a message in quotes: <a href="http://xkcd.com/231/" class="s19"
                                                        target="_blank">http://xkcd.com/231/</a>
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    <a name="bookmark26">print(</a>
                                                    <span style="color: #3F70A0;">&#39;Hello world!&#39;</span>)
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    And we have even written our first syntactically correct Python sentence. Our sentence
                                                    starts with the function
    <span class="s5">print </span>followed by a string of text of our choosing enclosed in single quotes. The strings in the print
                                                statements are enclosed in quotes. Single quotes and double quotes do the same thing;
                                                    most people use single quotes except in cases like this where a single quote (which
                                                    is also an apostrophe) appears in the string.
                                                </p>
                                            </div>
                                            <a href="part5.aspx">
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
                                            <a href="part7.aspx">
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

