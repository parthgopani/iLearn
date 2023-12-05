<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true"
    CodeFile="ExamReport.aspx.cs" Inherits="ExamReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .callout {
            margin: 0 0 20px 0;
            padding: 15px 30px 15px 15px;
            border-left: 5px solid #eee;
        }

            .callout.callout-info {
                background-color: #f0f7fd;
                border-color: #d0e3f0;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content-wrapper">
        <div class="row">
            <div class="col-md-12 grid-margin">
                <div class="row">
                    <div class="col-12 col-xl-12 mb-4 mb-xl-0">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Quiz Report</h4>
                                <form id="examReport" runat="server">

                                    <div class="form-group row">
                                        <label for="lblsemester" class="col-sm-2 col-form-label">Select Semester</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="drpSemester" runat="server" CssClass="form-control" data-toggle="dropdown"
                                                AutoPostBack="true" OnSelectedIndexChanged="drpSemester_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="drpSemester"
                                                ErrorMessage="Semester is Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>


                                    <div class="form-group row">
                                        <label for="lblExam" class="col-sm-2 col-form-label">Select Quiz</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="drpExamName" runat="server" CssClass="form-control" data-toggle="dropdown"
                                                AutoPostBack="true"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="drpExamName"
                                                ErrorMessage="Quiz is Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="col-xs-12">
                                        <div class="box-body p-3 table-responsive">
                                            <div class="rounded-button">
                                                <asp:Button ID="btnResult" runat="server" Text="RESULTS" OnClick="btnResult_Click"
                                                    class="btn btn-inverse-primary mr-2" ValidationGroup="msg1" />
                                            </div>
                                        </div>
                                    </div>

                                    <!-- <div class="col-xs-12">
                                        <div class="box-body">
                                            <div class="callout callout-info">
                                                <asp:Label ID="lblPass" runat="server" Text=""></asp:Label>
                                                <asp:Label ID="lblFail" runat="server" Text=""></asp:Label>
                                                
                                            </div>
                                        </div>
                                    </div>-->
                                    <div class="col-md-12 grid-margin">
                                        <div class="row">
                                            <div class="col-12 col-xl-12 mb-4 mb-xl-0">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <asp:GridView ID="GrdExamReport" AutoGenerateColumns="true" runat="server" CssClass="gridview rounded-gridview"
                                                            OnRowDataBound="GrdExamReport_RowDataBound">
                                                            <FooterStyle BackColor="#F7F7F7" Wrap="True" />
                                                            <HeaderStyle BackColor="#F7F7F7" />
                                                            <PagerStyle BackColor="#F7F7F7" />
                                                            <RowStyle BackColor="#F7F7F7" />
                                                        </asp:GridView>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12">
                                        <asp:Label runat="server" ID="lblmsg"></asp:Label>
                                    </div>
                                    <div class="col-xs-12">
                                        <div class="box-body p-3 table-responsive">
                                            <div class="rounded-button">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>
</asp:Content>

