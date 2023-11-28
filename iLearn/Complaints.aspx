<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Complaints.aspx.cs" Inherits="Complaints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div class="content-wrapper">
    <div class="row">
        <div class="col-md-12 grid-margin">
            <div class="row">
                <div class="col-12 col-xl-12 mb-4 mb-xl-0">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Complaints</h4>

                            <asp:GridView ID="GrdComplaints" runat="server" AutoGenerateColumns="False" DataKeyNames="Complaint_Id" CssClass="gridview rounded-gridview" CellPadding="4" ForeColor="#333333" DataSourceID="SqlDataSourceComp">

                                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                                <Columns>
                                    <asp:BoundField DataField="Complaint_Id" HeaderText="Complaint Id" ReadOnly="True" InsertVisible="False" SortExpression="Complaint_Id">
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Complaint_Date" HeaderText="Complaint Date" SortExpression="Complaint_Date">
                                    </asp:BoundField>
                                    <asp:BoundField DataField="User_Name" HeaderText="Name" SortExpression="User_Name">
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Complaint_Email" HeaderText="Email" SortExpression="Complaint_Email">
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Complaint_Message" HeaderText="Complaint Message" SortExpression="Complaint_Message">
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status">
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="Reply">
                                        <ItemTemplate>
                                            
                                            <asp:TextBox ID="txtReply" runat="server" CssClass="form-control mb-2" TextMode="MultiLine" ForeColor="Black"
                                                                                        Font-Bold="True"></asp:TextBox>
                                            
                                            <asp:Button ID="btnReply" runat="server" Text="Reply" CssClass=" btn btn-warning btn-sm mx-auto" CommandArgument='<%# Eval("Complaint_Id") %>' ForeColor="Black"
                                                                                        Font-Bold="True"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                                
                                <FooterStyle BackColor="#F7F7F7" Wrap="True" />
<HeaderStyle BackColor="#F7F7F7" />
<PagerStyle BackColor="#F7F7F7" />
<RowStyle BackColor="#F7F7F7" />

                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                                <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

                                <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

                                <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

                                <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
                            </asp:GridView>
                            
                            <asp:SqlDataSource ID="SqlDataSourceComp" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" SelectCommand="SELECT * FROM [ComplaintDetails] ORDER BY [Complaint_Id] DESC"></asp:SqlDataSource>
                            
                        </div>

                    </div>
                </div>

            </div>

        </div>
    </div>

</div>
    </form>
</asp:Content>

