<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Examen3.Usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="CSS/Usuarios.css" rel="stylesheet" />
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
            <div id="agregar">
                <h2> Agregar usuarios</h2>

                <asp:Label ID="Label2" runat="server" Text="Usuario"></asp:Label>
                <asp:TextBox ID="tusuario" runat="server"></asp:TextBox>
               
                <asp:Label ID="Label3" runat="server" Text="Clave"></asp:Label>
                <asp:TextBox ID="tclave" runat="server"></asp:TextBox>
               
                <asp:Label ID="Label4" runat="server" Text="Nombre"></asp:Label>
                 <asp:TextBox ID="tnombre" runat="server"></asp:TextBox>
               
                <asp:Label ID="Label5" runat="server" Text="Apellido"></asp:Label>
                 <asp:TextBox ID="tapellido" runat="server"></asp:TextBox>

                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vehiculosConnectionString %>" SelectCommand="agregar_usuario" SelectCommandType="StoredProcedure">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="tusuario" Name="usuario" PropertyName="Text" Type="String" />
                         <asp:ControlParameter ControlID="tclave" Name="clave" PropertyName="Text" Type="String" />
                         <asp:ControlParameter ControlID="teliminar" Name="nombre" PropertyName="Text" Type="String" />
                         <asp:ControlParameter ControlID="tapellido" Name="apellido" PropertyName="Text" Type="String" />
                     </SelectParameters>
                </asp:SqlDataSource>
                 <asp:Button ID="bAgregar" runat="server" Text="Aplicar" />
            </div>
            <div id="eliminar">
                <h2> Eliminar usuarios</h2>
                <asp:Label ID="Label1" runat="server" Text="Ingrese la clave del usuario que desea eliminar"></asp:Label>
                <asp:TextBox ID="teliminar" runat="server"></asp:TextBox>
                <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2"></asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:vehiculosConnectionString %>" SelectCommand="eliminar_usuario" SelectCommandType="StoredProcedure">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="teliminar" Name="clave" PropertyName="Text" Type="String" />
                     </SelectParameters>
                </asp:SqlDataSource>
                 <asp:Button ID="bEliminar" runat="server" Text="Aplicar" />


            </div>
            <div id="editar">
                <h2> Editar usuarios</h2>
               
                <asp:Label ID="Label6" runat="server" Text="Ingrese la clave del usuario que desea editar"></asp:Label>
                <asp:TextBox ID="teditar" runat="server"></asp:TextBox>
                  <asp:Label ID="Label7" runat="server" Text="Usuario"></asp:Label>
                <asp:TextBox ID="teditarusu" runat="server"></asp:TextBox>
               
                <asp:Label ID="Label8" runat="server" Text="Clave"></asp:Label>
                <asp:TextBox ID="teditarclave" runat="server"></asp:TextBox>
               
                <asp:Label ID="Label9" runat="server" Text="Nombre"></asp:Label>
                 <asp:TextBox ID="teditnombre" runat="server"></asp:TextBox>
               
                <asp:Label ID="Label10" runat="server" Text="Apellido"></asp:Label>
                 <asp:TextBox ID="teditapellido" runat="server"></asp:TextBox>
                <asp:GridView ID="GridView3" runat="server" DataSourceID="SqlDataSource4"></asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:vehiculosConnectionString %>" SelectCommand="editar_usuario" SelectCommandType="StoredProcedure">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="teditarusu" Name="usuario" PropertyName="Text" Type="String" />
                         <asp:ControlParameter ControlID="teditarclave" Name="clave" PropertyName="Text" Type="String" />
                         <asp:ControlParameter ControlID="teditnombre" Name="nombre" PropertyName="Text" Type="String" />
                         <asp:ControlParameter ControlID="teditapellido" Name="apellido" PropertyName="Text" Type="String" />
                         <asp:Parameter Name="idusuario" Type="Int32" />
                     </SelectParameters>
                </asp:SqlDataSource>
                 <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
                 <asp:Button ID="bEditar" runat="server" Text="Aplicar" />
            </div>
        </div>
    </form>
</body>
</html>
