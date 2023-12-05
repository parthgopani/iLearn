<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Quiz.aspx.cs" Inherits="Quiz" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
       <script src="ReadAloud.js"></script>
    <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
    <script type="text/javascript" async
        src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.7/MathJax.js?config=TeX-MML-AM_CHTML">
    </script>
    <script type='text/x-mathjax-config'>
    MathJax.Hub.Config({
        tex2jax: { inlineMath: [['$', '$']]}
    });
    </script>
    <!--<script>
        function startTimer(duration) {
            var timer = duration, minutes, seconds;
            setInterval(function () {
                minutes = parseInt(timer / 60, 10);
                seconds = parseInt(timer % 60, 10);

                minutes = minutes < 10 ? "0" + minutes : minutes;
                seconds = seconds < 10 ? "0" + seconds : seconds;

                $('#<%= lblTimer.ClientID %>').text(minutes + ":" + seconds);

            if (--timer < 0) {
                // Automatically submit the quiz when the timer reaches 0
                __doPostBack('<%= btn_end.UniqueID %>', '');
            }
        }, 1000);
        }
    </script>-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main-panel" style="width: 100%;">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-md-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h3>
                                <asp:Label ID="lblquestion" runat="server" Text=""></asp:Label>
                            </h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="form-check">
                                            <strong><asp:Label ID="lblred" runat="server" Text="" style="color: red; font-size: 20px;"></asp:Label></strong>
                                        </div>
                                        <div class="form-check" style="padding-left: 5%;">
                                            <asp:RadioButton ID="o1" runat="server" GroupName="options" AutoPostBack="false"
                                                class="form-check-input" /><br />
                                        </div>
                                        <div class="form-check" style="padding-left: 5%;">
                                            <asp:RadioButton ID="o2" runat="server" GroupName="options" AutoPostBack="false"
                                                class="form-check-input" /><br />
                                        </div>
                                        <div class="form-check" style="padding-left: 5%;">
                                            <asp:RadioButton ID="o3" runat="server" GroupName="options" AutoPostBack="false"
                                                class="form-check-input" /><br />
                                        </div>
                                        <div class="form-check" style="padding-left: 5%;">
                                            <asp:RadioButton ID="o4" runat="server" GroupName="options" AutoPostBack="false"
                                                class="form-check-input" /><br />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <asp:Button ID="btnsubmit" runat="server" Text="Next" OnClick="btnsubmit_Click"
                                class="btn btn-inverse-primary mr-2" />
                            <asp:Button ID="btn_end" runat="server" Text="Submit" Visible="False" OnClick="btn_end_Click"
                                class="btn btn-inverse-info mr-2" />
                            <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click"
                                class="btn btn-inverse-dark" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body" style="font-size: 140%;">
                            <asp:UpdateProgress ID="prg_ans" runat="server">
                            </asp:UpdateProgress>
                            <asp:Label ID="lblTimer" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lbl_questions" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                </div>
            </div>

            <asp:HiddenField ID="hdn_que_id" runat="server" />
            <asp:HiddenField ID="hdnquestion" runat="server" />
            <asp:HiddenField ID="hdntotQ" runat="server" />
            <asp:HiddenField ID="hdn_number" runat="server" Value="0" />
            <asp:HiddenField ID="hdn_result" runat="server" />
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </div>
    </div>
</asp:Content>
