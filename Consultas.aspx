<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consultas.aspx.cs" Inherits="Examen3.Consultas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="CSS/Consultas.css" rel="stylesheet" />
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
         <div id="general">
             <div id="consulta">
                 <h2>Consultar número de placa</h2>
                 <asp:Label ID="Label1" runat="server" Text="Placa:"></asp:Label>
                 <asp:TextBox ID="tplaca" runat="server"></asp:TextBox>
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdPlaca" DataSourceID="SqlDataSource1">
                     <Columns>
                         <asp:BoundField DataField="IdPlaca" HeaderText="IdPlaca" InsertVisible="False" ReadOnly="True" SortExpression="IdPlaca" />
                         <asp:BoundField DataField="NumPlaca" HeaderText="NumPlaca" SortExpression="NumPlaca" />
                         <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" SortExpression="IdUsuario" />
                         <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
                     </Columns>
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vehiculosConnectionString %>" SelectCommand="consultar_placa" SelectCommandType="StoredProcedure">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="tplaca" Name="placa" PropertyName="Text" Type="String" />
                     </SelectParameters>
                 </asp:SqlDataSource>
             </div>
        </div>
    </form>
</body>
</html>
