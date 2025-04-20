<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="NewPost.aspx.cs" Inherits="AWP__project_.WebForm3" %>
<asp:Content ID="Content1"  ContentPlaceHolderID="MainContent" runat="server">
        <table style="width: 100%;" class="d-flex justify-content-center  mb-4">
    <tr>
        <td style="width: 134px;">
            <asp:Label ID="Label1" class="mt-2" runat="server" Text="Title" ForeColor="White"></asp:Label>
        </td>
        <td style="width: 350px;">
           <asp:TextBox ID="titleTextBox" runat="server" class="form-control text-center mt-4" placeholder="title"></asp:TextBox>

        </td>
        <td style="width: 19px;">&nbsp;</td>
        <td style="width: 271px">
            <asp:Label ID="author7" runat="server" Text="Content" ForeColor="White"></asp:Label>
        </td>
        <td></td>
    </tr>
    <tr>
        <td style="width: 134px; height: 44px;">
            <asp:Label ID="author" runat="server" Text="Author" ForeColor="White"></asp:Label>
        </td>
        <td style="width: 350px; height: 44px;">
            <asp:TextBox ID="auth" runat="server" class="form-control" Width="188px" ></asp:TextBox>
        </td>
        <td style="width: 19px; height: 44px;"></td>
        <td style="height: 44px; width: 271px;">
            <asp:TextBox runat="server" ID="content" class="form-control text-center" TextMode="MultiLine" Rows="6" Columns="50" placeholder="content"></asp:TextBox>
        </td>
        <td style="height: 44px"></td>
    </tr>
    <tr>
        <td style="width: 134px">
            <asp:Label ID="author2" runat="server" Text="Image" ForeColor="White"></asp:Label>
        </td>
        <td style="width: 350px">
            <asp:FileUpload ID="FileUpload1" runat="server" />
            &nbsp;&nbsp;
            <asp:Button ID="fileupload" runat="server" Height="32px" Text="upload" Width="62px" OnClick="fileupload_Click" />
            &nbsp;</td>
        <td style="width: 19px">&nbsp;</td>
        <td style="width: 271px">
            <asp:Label ID="author3" runat="server" Text="ImgFile" ForeColor="White"></asp:Label>
        </td>
        <td style="width: 350px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 134px">&nbsp;</td>
        <td style="width: 350px">&nbsp;</td>
        <td style="width: 19px">&nbsp;</td>
        <td style="width: 271px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 134px">
            <asp:Label ID="author0" runat="server" Text="AuthorDesc" ForeColor="White"></asp:Label>
        </td>
        <td style="width: 350px">
            <asp:TextBox ID="authdesc" runat="server" class="form-control" Width="202px"></asp:TextBox>
        </td>
        <td style="width: 19px">&nbsp;</td>
        <td style="width: 271px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 134px; height: 93px;">
            <asp:Label ID="author1" runat="server" Text="AuthorImg" ForeColor="White"></asp:Label>
        </td>
        <td style="width: 350px; height: 93px;">
            <asp:FileUpload ID="FileUpload2" runat="server" />
            <asp:Button ID="fileupload3" runat="server" Height="32px" Text="upload" Width="62px" OnClick="fileupload3_Click" />
        </td>
        <td style="width: 19px; height: 93px;"></td>
        <td style="width: 139px; height: 93px;">
            <asp:Label ID="author5" runat="server" Text="AuthFile" ForeColor="White"></asp:Label>
        </td>
        <td style="width: 350px; height: 93px;"></td>
    </tr>
    <tr>
        <td style="width: 134px">&nbsp;</td>
        <td style="width: 350px">&nbsp;&nbsp;&nbsp; </td>
        <td style="width: 19px">&nbsp;</td>
        <td style="width: 271px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 134px; height: 59px;">
            <asp:Label ID="author6" runat="server" Text="Category" ForeColor="White"></asp:Label>
        </td>
        <td style="width: 271px; height: 59px">
            <asp:DropDownList ID="cateogory" runat="server">
                <asp:ListItem>Cricket</asp:ListItem>
                <asp:ListItem>FootBall</asp:ListItem>
                <asp:ListItem>HandBall</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="height: 59px"></td>
    </tr>
    <tr>
        <td style="width: 134px">&nbsp;</td>
        <td style="width: 350px">
            <asp:Button ID="Enter" runat="server" CssClass="btn-danger mb-2" Text="Submit" OnClick="Enter_Click" />
        </td>
        <td style="width: 19px">&nbsp;</td>
        <td style="width: 271px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
