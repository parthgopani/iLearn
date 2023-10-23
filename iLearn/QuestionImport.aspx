<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="QuestionImport.aspx.cs" Inherits="QuestionImport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-md-12 grid-margin">
                <div class="row">
                    <div class="col-12 col-xl-12 mb-4 mb-xl-0">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Import Questions</h4>
                                <form id="form1" runat="server" class="forms-sample">
                                    <div class="form-group row">
                                        <label for="lblsemester" class="col-sm-2 col-form-label">Semester</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="drpsemester" CssClass="form-control" runat="server"
                                                AutoPostBack="true" data-toggle="dropdown">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="drpsemester"
                                                ErrorMessage="Semester Required" ForeColor="Red" ValidationGroup="fieldcheck"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lblcourse" class="col-sm-2 col-form-label">Course</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="drpcourse" CssClass="form-control" runat="server"
                                                AutoPostBack="true" data-toggle="dropdown">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="drpcourse"
                                                ErrorMessage="Course Required" ForeColor="Red" ValidationGroup="fieldcheck"></asp:RequiredFieldValidator>
                                        </div>
</div>
                                    <div class="form-group row">
                                        <label for="lblupload" class="col-sm-2 col-form-label">Import Questions:</label>
                                        <div class="col-sm-9">
                                            <asp:FileUpload runat="server" ID="fileuploadexcel" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="msg1"
                                                ControlToValidate="fileuploadexcel" ErrorMessage="File Upload Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <asp:Button ID="btnupload" runat="server" Text="IMPORT" class="btn btn-inverse-primary mr-2"
                                        OnClick="btnupload_Click" />
                                    <div class="col-sm-9">
                                        <asp:Label runat="server" ID="lblmsg"></asp:Label>
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

