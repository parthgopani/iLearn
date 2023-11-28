<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true"
    CodeFile="ExamDeclare.aspx.cs" Inherits="ExamDeclare" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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
                                <h4 class="card-title">Exam Declararion:</h4>
                                <form id="form1" runat="server" class="forms-sample">
                                    <div class="form-group row">
                                        <label for="lblexamname" class="col-sm-2 col-form-label">Exam Name:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtexamname" runat="server" CssClass="form-control"
                                                placeholder="Enter Exam Name"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtexamname"
                                                ErrorMessage="Exam Name Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lblcourse" class="col-sm-2 col-form-label">Course:</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="drpcourse" CssClass="form-control" runat="server"
                                                AutoPostBack="false" data-toggle="dropdown">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="drpcourse"
                                                ErrorMessage="Course Name Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <asp:UpdatePanel ID="upcalender" runat="server" UpdateMode="Always">
                                        <ContentTemplate>
                                            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                            </asp:ToolkitScriptManager>
                                            <div class="form-group row">
                                                <div class="input-group">
                                                    <label for="lblexamsdate" class="col-sm-2 col-form-label">
                                                        Exam Start Date:</label>
                                                    <div class="col-sm-8">
                                                        <asp:TextBox ID="txtstartdate" runat="server" CssClass="form-control"
                                                            placeholder="Enter Exam Start Date"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtstartdate"
                                                            ErrorMessage="Start Date Required " ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                                        <asp:CalendarExtender ID="txtstartdatecal" runat="server" Format="yyyy/MM/dd"
                                                            PopupButtonID="calimgbtn" PopupPosition="TopRight"
                                                            TargetControlID="txtstartdate">
                                                        </asp:CalendarExtender>
                                                    </div>
                                                    <div class="input-group-append">
                                                        <asp:ImageButton ID="calimgbtn" runat="server" class="btn btn-sm btn-primary"
                                                            Height="45px" Width="55px" ImageUrl="~/images/calender.png"
                                                            OnClick="calimgbtn_Click" alt="Start date image"/>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="form-group row">
                                                <div class="input-group">
                                                    <label for="lblexamedate" class="col-sm-2 col-form-label">
                                                        Exam End Date:</label>
                                                    <div class="col-sm-8">
                                                        <asp:TextBox ID="txtenddate" runat="server" CssClass="form-control"
                                                            placeholder="Enter Exam End Date"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtenddate"
                                                            ErrorMessage="End Date Required " ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                                        <asp:CalendarExtender ID="txtenddatecal" runat="server" Format="yyyy/MM/dd"
                                                            PopupButtonID="calimgbtn1" PopupPosition="TopRight"
                                                            TargetControlID="txtenddate">
                                                        </asp:CalendarExtender>
                                                    </div>
                                                    <div class="input-group-append">
                                                        <asp:ImageButton ID="calimgbtn1" runat="server" class="btn btn-sm btn-primary"
                                                            Height="45px" Width="55px" ImageUrl="~/images/calender.png" alt="End date image"/>
                                                    </div>
                                                </div>

                                            </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>

                                    <div class="form-group row">
                                        <label for="lbltotmarks" class="col-sm-2 col-form-label">Total Marks:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txttotmarks" runat="server" CssClass="form-control"
                                                placeholder="Enter Total Marks"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txttotmarks"
                                                ErrorMessage="Total Marks Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lblpassmarks" class="col-sm-2 col-form-label">Passing Marks:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtpassmarks" runat="server" CssClass="form-control"
                                                placeholder="Enter Passing Marks"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Passing Marks Required "
                                                ForeColor="Red" ValidationGroup="msg1" ControlToValidate="txtpassmarks"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lblduration" class="col-sm-2 col-form-label">Duration:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtduration" runat="server" CssClass="form-control"
                                                placeholder="Enter Duration"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtduration"
                                                ErrorMessage="Duration Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lbltotque" class="col-sm-2 col-form-label">Total Question:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txttotque" runat="server" CssClass="form-control"
                                                placeholder="Enter Total Question"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txttotque"
                                                ErrorMessage="Total Questions Required " ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" class="btn btn-inverse-primary mr-2"
                                        OnClick="btnsubmit_Click" ValidationGroup="msg1" />
                                    <asp:Button ID="btnupdate" runat="server" Text="UPDATE" class="btn btn-inverse-info mr-2"
                                        OnClick="btnupdate_Click" />
                                    <asp:Button ID="btndelete" runat="server" Text="DELETE" class="btn btn-inverse-danger mr-2"
                                        OnClick="btndelete_Click" />
                                    <asp:Button ID="btncancel" runat="server" Text="CANCEL" class="btn btn-inverse-dark" />
                                    <div class="col-md-12 grid-margin">
                                        <div class="row">
                                            <div class="col-12 col-xl-12 mb-4 mb-xl-0">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <asp:HiddenField ID="hdnfield" runat="server" />
                                                        <asp:GridView ID="grdexam" runat="server" AutoGenerateColumns="false"
                                                            OnRowCommand="grdexam_RowCommand" AllowPaging="True" PageSize="15"
                                                            OnPageIndexChanging="grdexam_PageIndexChanging" AllowSorting="true"
                                                            OnSorting="grdexam_Sorting" HorizontalAlign="Center" CssClass="gridview rounded-gridview">
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Exam">
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton ID="LinkButton1" runat="server"
                                                                            Text='<%#Bind("[Exam_Id]") %>' CommandName="Exam_Id"
                                                                            CommandArgument='<%#Bind("[Exam_Id]") %>' ForeColor="Black"
                                                                            Font-Bold="True"></asp:LinkButton>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:BoundField DataField="exam_name" HeaderText="Exam Name" />
                                                                <asp:BoundField DataField="course_name" HeaderText="Course Name" />
                                                                <asp:BoundField DataField="exam_start_date" HeaderText="Exam Start Date" DataFormatString="{0:yyyy-MM-dd}" />
                                                                <asp:BoundField DataField="exam_end_date" HeaderText="Exam End Date" DataFormatString="{0:yyyy-MM-dd}" />
                                                                <asp:BoundField DataField="total_marks" HeaderText="Total Marks" />
                                                                <asp:BoundField DataField="passing_marks" HeaderText="Passing Marks" />
                                                                <asp:BoundField DataField="duration" HeaderText="Duration" />
                                                                <asp:BoundField DataField="total_question" HeaderText="Total Question" />
                                                            </Columns>
                                                            <FooterStyle BackColor="#F7F7F7" Wrap="True" />
                                                            <HeaderStyle BackColor="#F7F7F7" />
                                                            <PagerStyle BackColor="#F7F7F7" />
                                                            <RowStyle BackColor="#F7F7F7" />
                                                        </asp:GridView>
                                                        <asp:HiddenField ID="hdnexam" runat="server" />
                                                        <asp:HiddenField ID="hdnexamid" runat="server" />
                                                        <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick"></asp:Timer>
                                                    </div>
                                                </div>
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
