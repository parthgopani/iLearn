<%@ Page Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" style="width: 1000px;" class="mx-auto">
    <section class="content-header">
                    <h1>
                        Course                        
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="AdminDashboard.aspx"><i class="fa fa-home"></i> Home</a></li>
                        
                        <li class="active">Course</li>
                    </ol>
                </section>
    <div class="col-xs-12">
        <div class="box box-primary">
            <div class="box-body">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="col-xs-2 box-body">
                            Course Name :
                        </div>
                        <div class="col-xs-10 box-body">
                            <asp:TextBox ID="txtsubname" runat="server" CssClass="form-control" placeholder="Enter Course Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="msg1"
                                ControlToValidate="txtsubname" ForeColor="Red" ErrorMessage="Course Name Required"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="col-xs-2 box-body">
                            Course Code :
                        </div>
                        <div class="col-xs-10 box-body">
                            <asp:TextBox ID="txtsubcode" runat="server" CssClass="form-control" placeholder="Enter Course Code"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="msg1"
                                ControlToValidate="txtsubcode" ForeColor="Red" ErrorMessage="Course Code Required"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="col-xs-2 box-body">
                            Select Semester :
                        </div>
                        <div class="col-xs-10 box-body">
                            <asp:DropDownList ID="dropsem" runat="server" class="btn btn-default dropdown-toggle"
                                data-toggle="dropdown" AutoPostBack="False">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="dropsem"
                                ErrorMessage="Semester Required" ForeColor="Red" ValidationGroup="txt1"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <div class="box-body pad table-responsive">
                            <div class="rounded-button">
                                <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" OnClick="btnsubmit_Click"
                                    ValidationGroup="msg1" class="btn btn-success btn-sm" />
                                <asp:Button ID="btnupdate" runat="server" Text="UPDATE" OnClick="btnupdate_Click"
                                    class="btn btn-primary btn-sm" />
                                <asp:Button ID="btndelete" runat="server" Text="DELETE" OnClick="btndelete_Click"
                                    class="btn btn-danger btn-sm" />
                                <asp:Button ID="btncancel" runat="server" Text="Cancel" class="btn btn-warnings btn-sm" />
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <div class="box-body">
                            <asp:GridView ID="grid_Course" runat="server" AutoGenerateColumns="false" OnRowCommand="sub_rowcmd"
                                AllowPaging="True" AllowSorting="true" PageSize="10" CssClass="table table-mailbox"
                                HorizontalAlign="Center" OnPageIndexChanging="grid_Course_PageIndexChanging">
                                <Columns>
                                    <asp:TemplateField HeaderText="Sub Id">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" Text="<%#Bind('[Course_Id]') %>" CommandName="Course_Id"
                                                CommandArgument='<%#Bind("[Course_Id]") %>'>
                                            </asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Course_Name" HeaderText="Course Name" />
                                    <asp:BoundField DataField="Course_Code" HeaderText="Course Code" />
                                    <asp:BoundField DataField="Sem_Name" HeaderText="Semester" />
                                </Columns>
                                <FooterStyle BackColor="#FFFF99" BorderColor="#FF9900" BorderStyle="Dashed" Wrap="True" />
                                <HeaderStyle BackColor="Gray" BorderColor="Gray" />
                                <PagerStyle BackColor="LightGray" BorderColor="LightGray" />
                                <RowStyle BackColor="#CCCCCC" BorderColor="#CCCCCC" />
                            </asp:GridView>
                            <asp:HiddenField ID="hdnsem" runat="server" />
                            <asp:HiddenField ID="hiddensubid" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</asp:Content>

