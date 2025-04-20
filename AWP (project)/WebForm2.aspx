<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <asp:Label runat="server" Text="Label"></asp:Label>
        <asp:TextBox runat="server"></asp:TextBox>
    </title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
        <asp:Label ID="Label1" runat="server" Text="text"></asp:Label>
    </form>
</body>
</html>
