<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="View_Answers.aspx.cs" Inherits="View_Answers" %>

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
    <div class="main-panel" style="width: 100%;">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-md-12 grid-margin">
                    <div class="row">
                        <div class="col-12 col-xl-12 mb-4 mb-xl-0">
                            <div class="card">
                                <div class="card-body">
                                    <div class="col-md-12 grid-margin stretch-card">
                                        <div class="card">
                                            <div class="card-body" style="margin-left: auto; margin-right: auto; justify-items: center">
                                                <strong style="color: red; font-size: 20px;">NOTE :</strong>

                                                <br />
                                                <br />
                                                <asp:Label ID="lblright" runat="server" Text="__" BackColor="LightGreen"
                                                    BorderStyle="Groove" Width="2%"></asp:Label><font size="4px"> Right Answers</font><br />
                                                <br />
                                                <asp:Label ID="lblwrong" runat="server" Text="__" BackColor="Orange"
                                                    BorderStyle="Groove" Width="2%"></asp:Label><font size="4px"> Wrong Answers</font><br />
                                                <hr color="red" />

                                                <asp:GridView ID="grdview" AutoGenerateColumns="false" runat="server" CssClass="gridview rounded-gridview"
                                                    OnRowDataBound="grdview_RowDataBound11">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="No.">
                                                            <ItemTemplate>
                                                                <%# Container.DataItemIndex+1 %>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Que_Text" HeaderText="Question Text" />

                                                        <asp:BoundField DataField="o1" HeaderText="Option 1" />
                                                        <asp:BoundField DataField="o2" HeaderText="Option 2" />
                                                        <asp:BoundField DataField="o3" HeaderText="Option 3" />
                                                        <asp:BoundField DataField="o4" HeaderText="Option 4" />
                                                        <asp:BoundField DataField="correct_ans" HeaderText="Correct Answer" />
                                                        <asp:BoundField DataField="given_ans" HeaderText="Given Answer" />
                                                    </Columns>
                                                    <FooterStyle BackColor="#F7F7F7" Wrap="True" />
                                                    <HeaderStyle BackColor="#F7F7F7" />
                                                    <PagerStyle BackColor="#F7F7F7" />
                                                    <RowStyle BackColor="#F7F7F7" />
                                                </asp:GridView>
                                                <br />
                                                <div style="text-align: center;">
                                                    <asp:Button ID="btnback" runat="server" Text="Back"
                                                        class="btn btn-inverse-primary mr-2" align="center" OnClick="btnback_Click" />
                                                </div>

                                                <asp:HiddenField ID="hdn_stud_id" runat="server" />
                                                <asp:HiddenField ID="hdn_e_id" runat="server" />
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

