<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true"
    CodeFile="Question.aspx.cs" Inherits="Question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
                                <h4 class="card-title">Question Management</h4>
                                <form id="form1" runat="server" class="forms-sample">
                                    <div class="form-group row">
                                        <label for="lblsemester" class="col-sm-2 col-form-label">Semester:</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="drpsemester" CssClass="form-control" runat="server"
                                                AutoPostBack="true" data-toggle="dropdown" OnSelectedIndexChanged="drpsemester_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="drpsemester"
                                                ErrorMessage="Semester Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lblcourse" class="col-sm-2 col-form-label">Course:</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="drpcourse" CssClass="form-control" runat="server"
                                                AutoPostBack="true" data-toggle="dropdown">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="drpcourse"
                                                ErrorMessage="Course Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="lblcomplexcitytype" class="col-sm-2 col-form-label">Complexcity Type:</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="drpcomplexcity" CssClass="form-control" runat="server"
                                                AutoPostBack="true" data-toggle="dropdown">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="drpcomplexcity"
                                                ErrorMessage="Complexcity Type Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lblquestiontext" class="col-sm-2 col-form-label">Question Text:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtquestiontext" runat="server" CssClass="form-control"
                                                placeholder="Enter Question Text"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtquestiontext"
                                                ErrorMessage="Question Text Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lbloption1" class="col-sm-2 col-form-label">Option 1:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtoption1" runat="server" CssClass="form-control"
                                                placeholder="Enter Option 1"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtoption1"
                                                ErrorMessage="Option 1 Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lbloption2" class="col-sm-2 col-form-label">Option 2:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtoption2" runat="server" CssClass="form-control"
                                                placeholder="Enter Option 2"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtoption2"
                                                ErrorMessage="Option 2 Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lbloption2" class="col-sm-2 col-form-label">Option 3:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtoption3" runat="server" CssClass="form-control"
                                                placeholder="Enter Option 3"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtoption3"
                                                ErrorMessage="Option 3 Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lbloption2" class="col-sm-2 col-form-label">Option 4:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtoption4" runat="server" CssClass="form-control"
                                                placeholder="Enter Option 4"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtoption4"
                                                ErrorMessage="Option 4 Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lblcorrectanswer" class="col-sm-2 col-form-label">Correct Answer:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtcorrectanswer" runat="server" CssClass="form-control"
                                                placeholder="Enter Correct Answer (a/b/c/d)"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtcorrectanswer"
                                                ErrorMessage="Correct Answer Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <asp:Button ID="btnadd" runat="server" Text="ADD" class="btn btn-inverse-primary mr-2"
                                        OnClick="btnadd_Click" ValidationGroup="msg1" />
                                    <asp:Button ID="btnupdate" runat="server" Text="UPDATE" class="btn btn-inverse-info mr-2"
                                        OnClick="btnupdate_Click" />
                                    <asp:Button ID="btndelete" runat="server" Text="DELETE" class="btn btn-inverse-danger mr-2"
                                        OnClick="btndelete_Click" />
                                    <asp:Button ID="btncancel" runat="server" Text="CANCEL" class="btn btn-inverse-dark"
                                        OnClick="btncancel_Click" />
                                    <div class="col-md-12 grid-margin">
                                        <div class="row">
                                            <div class="col-12 col-xl-12 mb-4 mb-xl-0">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <asp:GridView ID="grdquestion" runat="server" AutoGenerateColumns="false"
                                                            OnRowCommand="grdquestion_RowCommand" AllowPaging="true" PageSize="15"
                                                            OnPageIndexChanging="grdquestion_PageIndexChanging" AllowSorting="true"
                                                            HorizontalAlign="Center" CssClass="gridview rounded-gridview">
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Question">
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton ID="LinkButton1" runat="server"
                                                                            Text='<%#Bind("[Que_Id]") %>' CommandName="Que_Id"
                                                                            CommandArgument='<%#Bind("[Que_Id]") %>' ForeColor="Black"
                                                                            Font-Bold="True"></asp:LinkButton>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:BoundField DataField="Sem_Name" HeaderText="Semester Name" />
                                                                <asp:BoundField DataField="Course_Name" HeaderText="Course Name" />
                                                                <asp:BoundField DataField="Complex_Type" HeaderText="Complexity" />

                                                                <asp:BoundField DataField="Que_Text" HeaderText="Question Text" HtmlEncode="false" />
                                                                <asp:BoundField DataField="O1" HeaderText="Option 1" />
                                                                <asp:BoundField DataField="O2" HeaderText="Option 2" />
                                                                <asp:BoundField DataField="O3" HeaderText="Option 3" />
                                                                <asp:BoundField DataField="O4" HeaderText="Option 4" />
                                                                <asp:BoundField DataField="Correct_Ans" HeaderText="Correct Answer" />
                                                            </Columns>
                                                            <FooterStyle BackColor="#F7F7F7" Wrap="True" />
                                                            <HeaderStyle BackColor="#F7F7F7" />
                                                            <PagerStyle BackColor="#F7F7F7" />
                                                            <RowStyle BackColor="#F7F7F7" />
                                                        </asp:GridView>
                                                        <asp:HiddenField ID="hdnquestion" runat="server" />
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

