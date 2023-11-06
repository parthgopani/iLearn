<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="View_Answers.aspx.cs" Inherits="View_Answers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col-lg-12">
<hr style="color:red"/>
<font color=red size=3px>NOTE : </font><br /><br />
    <asp:Label ID="lblright" runat="server" Text="____" BackColor="LightGreen" 
        BorderStyle="Groove"></asp:Label><font size=4px> Right Answers</font><br /><br />

    <asp:Label ID="lblwrong" runat="server" Text="____" BackColor="Orange" 
        BorderStyle="Groove"></asp:Label><font size=4px> Wrong Answers</font><br /><br /><hr color ="red"/>
    
     <asp:GridView ID="grdview"  AutoGenerateColumns="false" runat="server"  OnRowDataBound="grdview_RowDataBound11" >
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
        </asp:GridView>
         <br />
         <div style="text-align:center;">
        <asp:Button ID="btnback" runat="server" Text="Back" 
         CssClass="btn btn-primary btn-sm" align="center" onclick="btnback_Click" /></div>

    <asp:HiddenField ID="hdn_stud_id" runat="server" />
    <asp:HiddenField ID="hdn_e_id" runat="server" />
    </div>
</asp:Content>

