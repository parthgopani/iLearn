<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true" CodeFile="Quiz.aspx.cs" Inherits="Quiz" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-md-12 grid-margin">
                <div class="row">
                    <div class="col-12 col-xl-12 mb-4 mb-xl-0">
                        <div class="card">
                            <div class="card-body">
                                <div class="col-lg-12">
                                    <div class="padding-30 rounded bordered">
                                        <div class="row gy-12">
                                            <div class="col-sm-12">
                                                <div class="post">
                                                    <div class="thumb rounded">
                                                        <h3>
                                                            <asp:Label ID="lblquestion" runat="server" Text=""></asp:Label>
                                                        </h3>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <div class="form-check">
                                                                    <asp:RadioButton ID="o1" runat="server" GroupName="options" AutoPostBack="false"
                                                                        class="form-check-input" /><br />
                                                                </div>
                                                                <div class="form-check">
                                                                    <asp:RadioButton ID="o2" runat="server" GroupName="options" AutoPostBack="false"
                                                                        class="form-check-input" /><br />
                                                                </div>
                                                                <div class="form-check">
                                                                    <asp:RadioButton ID="o3" runat="server" GroupName="options" AutoPostBack="false"
                                                                        class="form-check-input" /><br />
                                                                </div>
                                                                <div class="form-check">
                                                                    <asp:RadioButton ID="o4" runat="server" GroupName="options" AutoPostBack="false"
                                                                        class="form-check-input" /><br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <asp:Button ID="btnsubmit" runat="server" Text="Next" OnClick="btnsubmit_Click"
                                                            class="btn btn-inverse-primary mr-2" />
                                                        <asp:Button ID="btn_end" runat="server" Text="Submit" Visible="False" OnClick="btn_end_Click"
                                                            class="btn btn-inverse-info mr-2" />
                                                        <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click"
                                                            class="btn btn-inverse-dark" />
                                                        <asp:UpdateProgress ID="prg_ans" runat="server">
                                                        </asp:UpdateProgress>
                                                        <h3>
                                                            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                                                            <asp:Label ID="lbl_questions" runat="server" Text=""></asp:Label>
                                                        </h3>
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
    
</asp:Content>
