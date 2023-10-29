<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true" CodeFile="ExamList.aspx.cs" Inherits="ExamList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-lg-4 col-xs-6 text-center-block">
    <div class="small-box bg-green">
        <div class="inner">
            <font size="20px">
                <center>
                    Current Exam
                </center>
            </font>
        </div>
        <div class="inner">
        </div>
        <div class="icon">
            <i class="ion ion-stats-bars"></i>
        </div>
        <a href="#" class="small-box-footer">
            <asp:Button ID="btncurrexam" runat="server" Text="Click Here" CssClass="btn btn-success btn-lg" OnClick="btncurrexam_Click"/>
            </a>
    </div>
</div>
<div class="col-lg-4 col-xs-6 text-center-block">
    <div class="small-box bg-aqua">
        <div class="inner">
            <font size="20px">
                <center>
                    Result</center>
            </font>
        </div>
        <div class="inner">
        </div>
        <div class="icon">
            <i class="ion ion-bag"></i>
        </div>
        <a href="#" class="small-box-footer">
            <asp:Button ID="btnresult" runat="server" Text="Click Here" CssClass="btn btn-info btn-lg" OnClick="btnresult_Click" />
        </a>
    </div>
</div>
    <div class="row">
    <div class="col-sm-12 invoice-col">
        <div class="col-md-12">
            <div class="box box-solid box-warning">
                <div class="box-header">
                    <h3 class="box-title">
                        <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label></h3>
                </div>
                <div class="box-body">
                    <asp:GridView ID="grdcurrexam" runat="server" AutoGenerateColumns="false" CssClass="table table-mailbox"
                        HorizontalAlign="Center" OnRowCommand="grdcurrexam_RowCommand">
                        <Columns>
                            <asp:TemplateField HeaderText="Exam Name">
                                <ItemTemplate>
                                    <asp:LinkButton ID="linkbtnexamname" runat="server" Text='<%#Bind("[Exam_Name]") %>'
                                        CommandName="Exam_Id" CommandArgument='<%#Bind("[Exam_Id]") %>'>
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Exam Start Date">
                                <ItemTemplate>
                                    <asp:LinkButton ID="linkbtn_exam_start_date" runat="server" Text='<%#Bind("[Exam_Start_Date]") %>'
                                        CommandName="Exam_Id" CommandArgument='<%#Bind("[Exam_Id]") %>'>
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Exam End Date">
                                <ItemTemplate>
                                    <asp:LinkButton ID="linkbtn_exam_end_date" runat="server" Text='<%#Bind("[Exam_End_Date]") %>'
                                        CommandName="Exam_Id" CommandArgument='<%#Bind("[Exam_Id]") %>'>
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Registration Date">
                                <ItemTemplate>
                                        <asp:LinkButton ID="linkbtn_reg_date" runat="server" Text='<%#Bind("[Reg_Date]") %>'
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
                        <HeaderStyle BackColor="Gray" BorderColor="Gray" HorizontalAlign="Center" />
                        <PagerStyle BackColor="#FFFF99" BorderColor="#FFCC00" HorizontalAlign="Center" />
                        <RowStyle BackColor="#CCCCCC" BorderColor="#CCCCCC" HorizontalAlign="Center" />
                    </asp:GridView>


                    <asp:GridView ID="grd_expire_exam" runat="server" AutoGenerateColumns="false" CssClass="table table-mailbox" HorizontalAlign="Center">
                    <Columns>
                    <asp:BoundField DataField="Exam_Name" HeaderText="Exam Name" SortExpression="Exam_Name" />
                    <asp:BoundField DataField="Course_Name" HeaderText="Subject Name" SortExpression="Course_Name" />
                    <asp:BoundField DataField="Exam_Start_Date" HeaderText="Start Date" SortExpression="Exam_Start_Date" />
                    <asp:BoundField DataField="Exam_End_Date" HeaderText="End Date" SortExpression="Exam_End_Date" />
                    <asp:BoundField DataField="Total_Marks" HeaderText="Total Marks" SortExpression="Total_Marks" />
                    <asp:BoundField DataField="Passing_Marks" HeaderText="Pssing Marks" SortExpression="Passing_Marks" />
                    <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                    <asp:BoundField DataField="Total_Question" HeaderText="Total Question" SortExpression="Total_Question" />
                    </Columns>
                        <FooterStyle BackColor="#FFFF99" BorderColor="#FF9900" BorderStyle="Dashed" Wrap="True" />
                        <HeaderStyle BackColor="Gray" BorderColor="Gray" HorizontalAlign="Center" />
                        <PagerStyle BackColor="#FFFF99" BorderColor="#FFCC00" HorizontalAlign="Center" />
                        <RowStyle BackColor="#CCCCCC" BorderColor="#CCCCCC" HorizontalAlign="Center" />
                    </asp:GridView>
                    



                    <asp:GridView ID="grdresult" runat="server" AutoGenerateColumns="false" CssClass="table table-mailbox" HorizontalAlign="Center" OnRowCommand="grdresult_RowCommand"> 
                    <Columns>
                    <asp:TemplateField HeaderText="Exam Name">
                                <ItemTemplate>
                                    <asp:LinkButton ID="linkbtnexamname1" runat="server" Text='<%#Bind("[Exam_Name]") %>'
                                        CommandName="Exam_Id" CommandArgument='<%#Bind("[Exam_Id]") %>'>
                                    </asp:LinkButton>
                                </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Reg_Date" HeaderText="Registration Date" SortExpression="Reg_Date" />
                    <asp:BoundField DataField="Exam_Date" HeaderText="Exam Date" SortExpression="Exam_Date" />
                    <asp:BoundField DataField="Exam_Given_Date" HeaderText="Exam Given Date" SortExpression="Exam_Given_Date" />
                    <asp:BoundField DataField="Result" HeaderText="Result" SortExpression="Status_PF" />
                    <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                    <asp:BoundField DataField="Percentage" HeaderText="Percentage" SortExpression="Percentage" />
                    <asp:BoundField DataField="Total_Marks" HeaderText="Total Marks" SortExpression="Total_Marks" />
                    <asp:BoundField DataField="Passing_Marks" HeaderText="Passing Marks" SortExpression="Passing_Marks" />
                    </Columns>
                        <FooterStyle BackColor="#FFFF99" BorderColor="#FF9900" BorderStyle="Dashed" Wrap="True" />
                        <HeaderStyle BackColor="Gray" BorderColor="Gray" HorizontalAlign="Center" />
                        <PagerStyle BackColor="#FFFF99" BorderColor="#FFCC00" HorizontalAlign="Center" />
                        <RowStyle BackColor="#CCCCCC" BorderColor="#CCCCCC" HorizontalAlign="Center" />
                    </asp:GridView>


                    <asp:HiddenField ID="hdnexamlist" runat="server" />
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>

