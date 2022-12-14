<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Examen3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="general">
            <div id="login">
                <asp:Label ID="Label1" runat="server" Text="Correo electrónico"></asp:Label>
                <asp:TextBox ID="tCorreo" runat="server" OnTextChanged="tCorreo_TextChanged"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
                <asp:TextBox ID="tClave" runat="server"></asp:TextBox>
                <asp:Button ID="bIngresar" runat="server" Text="Ingresar" OnClick="bIngresar_Click" />
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
