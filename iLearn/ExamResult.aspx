<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true" CodeFile="ExamResult.aspx.cs" Inherits="ExamResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
                                        <div class="card-body" style="margin-left: auto; margin-right: auto; justify-items: center">
                                            <h4 class="card-title">Result</h4>
                                            <div class="table-responsive">
                                                <table class="table table-hover">

                                                    <tbody>
                                                        <tr>
                                                            <td>Exam Name : </td>

                                                            <td>
                                                                <asp:Label ID="lblExamName" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Total Question : </td>

                                                            <td>
                                                                <asp:Label ID="lblTotalQuestions" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Right Answer : </td>

                                                            <td>
                                                                <asp:Label ID="lblRightAns" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Wrong Answer : </td>

                                                            <td>
                                                                <asp:Label ID="lblWrongAns" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Status : </td>

                                                            <td>
                                                                <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Marks Obtained : </td>

                                                            <td>
                                                                <asp:Label ID="lblScore" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Passing Marks : </td>
                                                            <td>
                                                                <asp:Label ID="lblPassing" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Total Marks : </td>
                                                            <td>
                                                                <asp:Label ID="lblTotalmarks" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Percentage : </td>
                                                            <td>
                                                                <asp:Label ID="lblPercentage" runat="server" Text=""></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12 text-center">
                                                <asp:Button ID="Button1" runat="server" Text="View Answers" class="btn btn-inverse-primary mr-2"
                                                    OnClick="Button1_Click" />
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

</asp:Content>