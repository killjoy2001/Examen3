<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Placas.aspx.cs" Inherits="Examen3.Placas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="CSS/Placas.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul>
                <li><a href="Usuarios.aspx">Usuarios</a></li>
                <li><a href="Placas.aspx">Placas</a></li>
                <li><a href="Consultas.aspx">Reportes</a></li>
            </ul>
        </div>
        <div id="agregar">
            <h2> Agregar placa</h2>
            <asp:Label ID="Label1" runat="server" Text="Número de placa:"></asp:Label>
            <asp:TextBox ID="Ttagregarplaca" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="usuario:"></asp:Label>
             <asp:TextBox ID="tagregarusu" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="Monto:"></asp:Label>
             <asp:TextBox ID="tagregarmonto" runat="server"></asp:TextBox>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <asp:Button ID="bAgregar" runat="server" Text="Aplicar" />
        </div>
        <div id="eliminar">
            <h2> Eliminar placa</h2>
            <asp:Label ID="Label4" runat="server" Text="Ingrese número de placa que desea eliminar"></asp:Label>
            <asp:TextBox ID="teliminar" runat="server"></asp:TextBox>
            <asp:GridView ID="GridView2" runat="server"></asp:GridView>
            <asp:Button ID="bEliminar" runat="server" Text="Aplicar" />
        </div>
        <div id="editar">
            <h2> Editar placa</h2>
           <asp:Label ID="Label6" runat="server" Text="Ingrese la placa que desea editar"></asp:Label>
            <asp:TextBox ID="tplacaeditar" runat="server"></asp:TextBox>
             <asp:Label ID="Label" runat="server" Text="Número de placa:"></asp:Label>
            <asp:TextBox ID="teditarplaca" runat="server"></asp:TextBox>
              <asp:Label ID="Labe5" runat="server" Text="Monto:"></asp:Label>
            <asp:TextBox ID="teditarmonto" runat="server"></asp:TextBox>
            <asp:GridView ID="GridView3" runat="server"></asp:GridView>
            <asp:Button ID="bEditar" runat="server" Text="Aplicar" />
        </div>
    </form>
</body>
</html>
