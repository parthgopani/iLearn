<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Quiz.aspx.cs" Inherits="Quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="lblquestion" runat="server" Text=""></asp:Label>
    <br />
    <asp:RadioButton ID="o1" runat="server" GroupName="options" AutoPostBack="false" /><br />
    <asp:RadioButton ID="o2" runat="server" GroupName="options" AutoPostBack="false" /><br />
    <asp:RadioButton ID="o3" runat="server" GroupName="options" AutoPostBack="false" /><br />
    <asp:RadioButton ID="o4" runat="server" GroupName="options" AutoPostBack="false" />

    <asp:Button ID="btnnext" runat="server" Text="Next" Width="58px" class="btn btn-success btn-sm" OnClick="btnnext_Click"/>
    <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" Visible="False" class="btn btn-success btn-sm" OnClick="btnsubmit_Click"/>
    <asp:Button ID="btncancel" runat="server" Text="Cancel" class="btn btn-success btn-sm" OnClick="btncancel_Click1"/>
    <asp:UpdateProgress ID="proans" runat="server">
    </asp:UpdateProgress>
    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
    <asp:Label ID="lblque" runat="server" Text=""></asp:Label>
    <asp:HiddenField ID="hdnqueid" runat="server" />
    <asp:HiddenField ID="hdnque" runat="server" />
    <asp:HiddenField ID="hdntotque" runat="server" />
    <asp:HiddenField ID="hdnnum" runat="server" Value="0" />
    <asp:HiddenField ID="hdnres" runat="server" />
    <br />
    <asp:ScriptManager ID="script" runat="server">
    </asp:ScriptManager>
</asp:Content>

