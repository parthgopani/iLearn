<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="ExamList.aspx.cs" Inherits="ExamList" %>

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
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-6 mb-4 stretch-card transparent">
                                                    <div class="card card-light-danger">
                                                        <div class="card-body">
                                                            <h1 class="mb-4">Current Quiz</h1>
                                                            <asp:Button ID="btncurrexam" runat="server" Text="Click Here" class="btn btn-dark"
                                                                OnClick="btncurrexam_Click" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 mb-4 stretch-card transparent">
                                                    <div class="card card-light-blue">
                                                        <div class="card-body">
                                                            <h1 class="mb-4">Result</h1>
                                                            <p class="fs-30 mb-2">
                                                                <asp:Button ID="btnresult" runat="server" Text="Click Here" class="btn btn-dark"
                                                                    OnClick="btnresult_Click" />
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <h3><asp:Label ID="lblmsg" runat="server" Text=""></asp:Label></h3>
                                            <div class="col-md-12 grid-margin">
                                                <div class="row">
                                                    <div class="col-12 col-xl-12 mb-4 mb-xl-0">
                                                        <div class="card">
                                                            <div class="card-body">
                                                                <asp:GridView ID="grdcurrexam" runat="server" AutoGenerateColumns="false" CssClass="gridview"
                                                                    HorizontalAlign="Center" OnRowCommand="grdcurrexam_RowCommand">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="Quiz Name">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="linkbtnexamname" runat="server" Text='<%#Bind("[Exam_Name]") %>'
                                                                                    CommandName="Exam_Id" CommandArgument='<%#Bind("[Exam_Id]") %>'>
                                                                                </asp:LinkButton>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Quiz Start Date">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="linkbtn_exam_start_date" runat="server" Text='<%#Bind("[Exam_Start_Date]") %>'
                                                                                    CommandName="Exam_Id" CommandArgument='<%#Bind("[Exam_Id]") %>'>
                                                                                </asp:LinkButton>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Quiz End Date">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="linkbtn_exam_end_date" runat="server" Text='<%#Bind("[Exam_End_Date]") %>'
                                                                                    CommandName="Exam_Id" CommandArgument='<%#Bind("[Exam_Id]") %>'>
                                                                                </asp:LinkButton>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Total Mark">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="linkbtn_tot_marks" runat="server" Text='<%#Bind("[Total_Marks]") %>'
                                                                                    CommandName="Exam_Id" CommandArgument='<%#Bind("[Exam_Id]") %>'>
                                                                                </asp:LinkButton>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Passing Mark">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="linkbtn_passing_marks" runat="server" Text='<%#Bind("[Passing_Marks]") %>'
                                                                                    CommandName="Exam_Id" CommandArgument='<%#Bind("[Exam_Id]") %>'>
                                                                                </asp:LinkButton>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>
                                                                    </Columns>
                                                                    <FooterStyle BackColor="#FFFF99" BorderColor="#FF9900" BorderStyle="Dashed" Wrap="True" />
                                                                    <HeaderStyle BackColor="Gray" BorderColor="Gray" />
                                                                    <PagerStyle BackColor="LightGray" BorderColor="LightGray" />
                                                                    <RowStyle BackColor="#CCCCCC" BorderColor="#CCCCCC" />
                                                                </asp:GridView>
                                                            
                                                                <asp:GridView ID="grdresult" runat="server" AutoGenerateColumns="false" CssClass="gridview"
                                                                    HorizontalAlign="Center" OnRowCommand="grdresult_RowCommand">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="Quiz Name">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="linkbtnexamname1" runat="server" Text='<%#Bind("[Exam_Name]") %>'
                                                                                    CommandName="Exam_Id" CommandArgument='<%#Bind("[Exam_Id]") %>'>
                                                                                </asp:LinkButton>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>
                                                                        <asp:BoundField DataField="Exam_Date" HeaderText="Quiz Date" SortExpression="Exam_Date" />
                                                                        <asp:BoundField DataField="Exam_Given_Date" HeaderText="Quiz Given Date" SortExpression="Exam_Given_Date" />
                                                                        <asp:BoundField DataField="Result" HeaderText="Result" SortExpression="Status_PF" />
                                                                        <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                                                                        <asp:BoundField DataField="Percentage" HeaderText="Percentage" SortExpression="Percentage" />
                                                                        <asp:BoundField DataField="Total_Marks" HeaderText="Total Marks" SortExpression="Total_Marks" />
                                                                        <asp:BoundField DataField="Passing_Marks" HeaderText="Passing Marks" SortExpression="Passing_Marks" />
                                                                    </Columns>
                                                                    <FooterStyle BackColor="#FFFF99" BorderColor="#FF9900" BorderStyle="Dashed" Wrap="True" />
                                                                    <HeaderStyle BackColor="Gray" BorderColor="Gray" />
                                                                    <PagerStyle BackColor="LightGray" BorderColor="LightGray" />
                                                                    <RowStyle BackColor="#CCCCCC" BorderColor="#CCCCCC" />
                                                                </asp:GridView>
                                                                <asp:HiddenField ID="hdnexamlist" runat="server" />
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
        </div>
    </div>
</asp:Content>

