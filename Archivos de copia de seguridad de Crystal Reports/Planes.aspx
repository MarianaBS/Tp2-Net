﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Planes.aspx.cs" Inherits="UI.Web.Planes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
<asp:Panel ID="gridPanel" runat="server">
    <asp:GridView ID="gridView" runat="server" AutoGenerateColumns="False"
    SelectedRowStyle-BackColor="Black"
    SelectedRowStyle-ForeColor="White"
    DataKeyNames="ID" onselectedindexchanged="gridView_SelectedIndexChanged" 
        CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="GridView">
        <RowStyle BackColor="#E3EAEB"/>
    <Columns>
        <asp:BoundField HeaderText="Descripcion del plan" DataField="Descripcion" />
        <asp:BoundField HeaderText="Especialidad" DataField="IDEspecialidad" />
        <asp:CommandField SelectText="Seleccionar" ShowSelectButton="true" />            
    </Columns>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
</asp:Panel>

<asp:Panel ID="gridActionsPanel" runat="server">
    <asp:LinkButton ID="editarLinkButton" runat="server" OnClick="editarLinkButton_Click">Editar</asp:LinkButton>
    <asp:LinkButton ID="eliminarLinkButton" runat="server" 
        onclick="eliminarLinkButton_Click">Eliminar</asp:LinkButton>
    <asp:LinkButton ID="nuevoLinkButton" runat="server" 
        onclick="nuevoLinkButton_Click">Nuevo</asp:LinkButton>
</asp:Panel>

<asp:Panel ID="panelValidators" runat="server" Visible="True">
    <asp:ValidationSummary ID="ValidationSummary1"  runat="server" DisplayMode="BulletList"/>
</asp:Panel>
<asp:Panel ID="formPanel" Visible="false" runat="server">
        <table >
            <tr>
                <td >
                    Campos obligatorios*</td>
                <td >
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="nombreLabel" runat="server" Text="Descripcion del plan" />
                </td>
                <td >
                    <asp:TextBox ID="txtDescripcion" runat="server" Width="153px"></asp:TextBox>
                    </td>
                <td>
                    *</td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="apellidoLabel" runat="server" Text="Especialidad" />
                </td>
                <td 6>
                    <asp:DropDownList ID="ddlEspecialidad" runat="server" Height="22px" 
                        Width="153px" />
                    </td>
                <td>
                    *</td>
            </tr>
    </table>
</asp:Panel>
             
<asp:Panel ID="formActionsPanel" runat="server" Visible="false">
    <asp:Button ID="btnAceptar"   Text="Aceptar" runat="server" Visible="true" 
            onclick="btnAceptar_Click"/> 
    <asp:Button ID="btnCancelar" Text="Cancelar" runat="server" Visible="true" 
            onclick="btnCancelar_Click" 
            onclientclick="Response.Redirect(~/Usuarios.aspx)" />
</asp:Panel>
</asp:Content>
