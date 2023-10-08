<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ExamDeclare.aspx.cs" Inherits="ExamDeclare" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Exam Declararion</h4>
                  <p class="card-description">
                    Exam Declararion
                  </p>
                  <form id="form1" runat="server" class="forms-sample">
                    <div class="form-group">
                      <label for="lblexamname">Exam Name</label>
                      <asp:TextBox ID="txtexamname" runat="server" CssClass="form-control" placeholder="Enter Exam Name"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="lblcourse">Course</label>
                        <asp:DropDownList ID="drpcourse" CssClass="form-control" runat="server" AutoPostBack="false" data-toggle="dropdown" >
                        </asp:DropDownList>
                    </div>

                    <asp:UpdatePanel ID="upcalender" runat="server" UpdateMode="Always">
                        <ContentTemplate>
                            <asp:ToolkitScriptManager ID ="ToolkitScriptManager1" runat="server">
                            </asp:ToolkitScriptManager>
                    <div class="form-group">
                    <div class="input-group">
                        <label for="lblexamsdate">Exam Start Date</label>
                      <asp:TextBox ID="txtstartdate" runat="server" CssClass="form-control" placeholder="Enter Exam Start Date"></asp:TextBox>
                        <asp:ImageButton ID="calimgbtn" runat="server"  />
                      </div>
                    
                    <asp:CalendarExtender ID="txtstartdatecal" runat="server" Format="yyyy/MM/dd" PopupButtonID="calimgbtn" PopupPosition="BottomRight" TargetControlID="txtstartdate"></asp:CalendarExtender>
                    </div>
                    <div class="form-group">
                    <div class="input-group">
                        <label for="lblexamedate">Exam End Date</label>
                      <asp:TextBox ID="txtenddate" runat="server" CssClass="form-control" placeholder="Enter Exam End Date"></asp:TextBox>
                        <asp:ImageButton ID="calimgbtn1" runat="server"  />
                      </div>
                    <asp:CalendarExtender ID="txtenddatecal" runat="server" Format="yyyy/MM/dd" PopupButtonID="calimgbtn1" PopupPosition="BottomRight" TargetControlID="txtenddate"></asp:CalendarExtender>
                    </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                    <div class="form-group">
                      <label for="lbltotmarks">Total Marks</label>
                      <asp:TextBox ID="txttotmarks" runat="server" CssClass="form-control" placeholder="Enter Total Marks"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="lblpassmarks">Passing Marks</label>
                      <asp:TextBox ID="txtpassmarks" runat="server" CssClass="form-control" placeholder="Enter Passing Marks"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="lblduration">Duration</label>
                      <asp:TextBox ID="txtduration" runat="server" CssClass="form-control" placeholder="Enter Duration"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="lbltotque">Total Question</label>
                      <asp:TextBox ID="txttotque" runat="server" CssClass="form-control" placeholder="Enter Total Question"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" class="btn btn-inverse-primary mr-2" OnClick="btnsubmit_Click"/>
                    <asp:Button ID="btnupdate" runat="server" Text="UPDATE" class="btn btn-inverse-info mr-2" OnClick="btnupdate_Click"/>
                    <asp:Button ID="btndelete" runat="server" Text="DELETE" class="btn btn-inverse-danger mr-2" OnClick="btndelete_Click"/>
                    <asp:Button ID="btncancel" runat="server" Text="CANCEL" class="btn btn-inverse-dark" />
                  
    <div class="col-12 grid-margin stretch-card">
      <div class="card">
        <div class="card-body">
            <asp:HiddenField ID="hdnfield" runat="server" />
            <asp:GridView ID="grdexam" runat="server" AutoGenerateColumns="false" OnRowCommand="grdexam_RowCommand" AllowPaging="true" PageSize="15" OnPageIndexChanging="grdexam_PageIndexChanging" AllowSorting="true" OnSorting="grdexam_Sorting" HorizontalAlign="Center">
                <Columns>
                    <asp:TemplateField HeaderText="Exam">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" Text='<%#Bind("[Exam_Id]") %>' CommandName="Exam_Id" CommandArgument='<%#Bind("[Exam_Id]") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="exam_name" HeaderText="Exam Name" />
                    <asp:BoundField DataField="course_id" HeaderText="Exam Name" />
                    <asp:BoundField DataField="exam_start_date" HeaderText="Exam Name" />
                    <asp:BoundField DataField="exam_end_date" HeaderText="Exam Name" />
                    <asp:BoundField DataField="total_marks" HeaderText="Exam Name" />
                    <asp:BoundField DataField="passing_marks" HeaderText="Exam Name" />
                    <asp:BoundField DataField="duration" HeaderText="Exam Name" />
                    <asp:BoundField DataField="total_question" HeaderText="Exam Name" />
                </Columns>
                <FooterStyle BackColor="#FFFF99" BorderColor="#FF9900" BorderStyle="Dashed" Wrap="True" />
                <HeaderStyle BackColor="Gray" BorderColor="Gray" />
                <PagerStyle BackColor="LightGray" BorderColor="LightGray" />
                <RowStyle BackColor="#CCCCCC" BorderColor="#CCCCCC" />
            </asp:GridView>
            <asp:HiddenField ID="hdnexam" runat="server" />
            <asp:HiddenField ID="hdnexamid" runat="server" />
            <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick"></asp:Timer>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
</asp:Content>

