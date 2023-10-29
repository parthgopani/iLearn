<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true" CodeFile="ExamResult.aspx.cs" Inherits="ExamResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
      <div class="content-wrapper" style="margin-top:85px;margin-left:105px;">
      <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-body">
                  <p class="card-title mb-0">Result</p>
                  <div class="table-responsive">
                    <table class="table table-borderless">
                      
                      <tbody>
                        <tr>
                          <td class="pl-0">Exam Name : </td>
                        
                          <td class="text-muted">
                            <asp:Label ID="lblExamName" runat="server" Text=""></asp:Label>
                        </td>
                        </tr>
                        <tr>
                          <td class="pl-0">Total Question : </td>

                          <td class="text-muted">
                            <asp:Label ID="lblTotalQuestions" runat="server" Text=""></asp:Label>
                        </td>
                        </tr>
                        <tr>
                          <td class="pl-0">Right Answer : </td>

                          <td class="text-muted">
                            <asp:Label ID="lblRightAns" runat="server" Text=""></asp:Label>
                        </td>
                        </tr>
                        <tr>
                          <td class="pl-0">Wrong Answer : </td>

                          <td class="text-muted">
                            <asp:Label ID="lblWrongAns" runat="server" Text=""></asp:Label>
                        </td>
                        </tr>
                        <tr>
                          <td class="pl-0">Status : </td>

                          <td class="text-muted">
                            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                        </td>
                        </tr>
                        <tr>
                          <td class="pl-0">Marks Obtained : </td>

                          <td class="text-muted">
                            <asp:Label ID="lblScore" runat="server" Text=""></asp:Label>
                        </td>
                        </tr>
                        <tr>
                          <td class="pl-0 pb-0">Passing Marks : </td>
                          <td class="text-muted">
                            <asp:Label ID="lblPassing" runat="server" Text=""></asp:Label>
                        </td>
                        </tr>
                        <tr>
                          <td class="pl-0 pb-0">Total Marks : </td>
                          <td class="text-muted">
                            <asp:Label ID="lblTotalmarks" runat="server" Text=""></asp:Label>
                        </td>
                        </tr>
                        <tr>
                          <td class="pl-0 pb-0">Percentage : </td>
                          <td class="text-muted">
                            <asp:Label ID="lblPercentage" runat="server" Text=""></asp:Label>
                        </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
                 </div> 
                  <div class="row">
    <div class="col-md-12 text-center">
        <asp:Button ID="btnview" runat="server" Text="View Answers" CssClass="btn btn-primary btn-sm" OnClick="btnview_Click" />
    </div>
</div>
              </div>
            </div>
    </div>
      
</asp:Content>

