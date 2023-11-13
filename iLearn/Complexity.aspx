<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Complexity.aspx.cs" Inherits="Complexity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form id="complexityForm" runat="server">
     <section class="content-header">
         <h1>Complexity</h1>
         <ol class="breadcrumb">
             <li><a href="Default.aspx"><i class="fa fa-home"></i>Home</a></li>
             <li class="active">Complexity</li>
         </ol>

     </section>

     <div class="col-xs-12">
         <div class="box box-primary">
             <div class="box-body">
                 <div class="row">

                     <div class="col-lg-12">
                         <div class="col-xs-2 box-body">
                             Complexity Type:
                         </div>
                         <div class="col-xs-10 box-body>">
                             <asp:TextBox ID="txtcomplexity" runat="server" CssClass="form-control" placeholder="Enter Complexity Type"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcomplexity"
                                 ErrorMessage="Complexity Type is Required" ForeColor="Red" ValidationGroup="msg1"></asp:RequiredFieldValidator>
                         </div>
                     </div>

                    
                     <div class="col-lg-12">
                         <div class="box-body pad table-responsive">
                             <div class="rounded-button">
                                 <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" OnClick="btnsubmit_Click"
                                     class="btn btn-outline-success btn-sm" ValidationGroup="msg1" />
                                 <asp:Button ID="btnupdate" runat="server" Text="UPDATE" OnClick="btnupdate_Click"
                                     class="btn btn-outline-primary btn-sm" />
                                 <asp:Button ID="btndelete" runat="server" Text="DELETE" OnClick="btndelete_Click"
                                     class="btn btn-outline-danger btn-sm" />
                                 <asp:Button ID="btncancel" runat="server" Text="CANCEL" OnClick="btncancel_Click" class="btn btn-outline-warning btn-sm" />

                             </div> 
                         </div>

                     </div>
                     <div class="col-xs-12">
                         <div class="box-body">
                             
                             <asp:GridView ID="Grdcomplexity" runat="server" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="true"
                                 OnRowCommand="Grdcomplexity_RowCommand" 
                                 PageSize="15" CssClass="table table-mailbox" HorizontalAlign="Center">

                                 <Columns>
                                     <asp:TemplateField HeaderText="Complexity Id">
                                         <ItemTemplate>
                                             <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Bind("Complexity_Id") %>' CommandName="Complexity_Id" CommandArgument='<%# Bind("Complexity_Id") %>'></asp:LinkButton>
                                         </ItemTemplate>

                                     </asp:TemplateField>
                                     
                                     <asp:BoundField DataField="Complexity_Type" HeaderText="Complexity" />
                                 </Columns>
                                 <FooterStyle BackColor="#FFFF99" BorderColor="#FF9900" BorderStyle="Dashed" Wrap="true" />
                                 <HeaderStyle BackColor="Gray" BorderColor="Gray" />
                                 <PagerStyle BackColor="LightGray" BorderColor="LightGray" />
                                 <RowStyle BackColor="#CCCCCC" BorderColor="#CCCCCC" />
                             </asp:GridView>
                             <asp:HiddenField ID="hdncomplexityid" runat="server"/>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </form>
</asp:Content>

