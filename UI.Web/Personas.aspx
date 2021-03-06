﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Personas.aspx.cs" Inherits="UI.Web.Personas" EnableSessionState="True"%>

<asp:Content ID="Content1" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">

<asp:Panel ID="gridPanel" runat="server">
    <asp:GridView ID="gridView" runat="server" AutoGenerateColumns="False"
    SelectedRowStyle-BackColor="Black"
    SelectedRowStyle-ForeColor="White" Width=500px
    DataKeyNames="ID" onselectedindexchanged="gridView_SelectedIndexChanged" 
    CellPadding="4" ForeColor="#333333" GridLines="Both">
        
    <Columns>
        <asp:BoundField HeaderText="Plan" DataField="IdPlan" />
        <asp:BoundField HeaderText="Legajo" DataField="Legajo" />
        <asp:BoundField HeaderText="Tipo" DataField="TipoPersona" />
        <asp:BoundField HeaderText="Apellido" DataField="Apellido" />
        <asp:BoundField HeaderText="Nombre" DataField="Nombre" /> 
        <asp:BoundField HeaderText="Teléfono" DataField="Telefono" />
        <asp:CommandField SelectText="Seleccionar" ShowSelectButton="true" />            
    </Columns>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
         <SelectedRowStyle BackColor="#89bcba" ForeColor="#333333" />
        <HeaderStyle BackColor="#1C5E55"  ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        
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
</asp:Panel>

<asp:Panel ID="formPanel" Visible="false" runat="server">
    <table>
      
        <tr>
            <td >
                <asp:Label ID="nombreLabel" runat="server" Text="Nombre: " />
            </td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                        ControlToValidate="txtNombre"
                        Display="None"
                        ErrorMessage="El campo Nombre no puede estar vacío"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="apellidoLabel" runat="server" Text="Apellido: " />
            </td>
            <td >
                <asp:TextBox ID="txtApellido" runat="server" />
                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                        ControlToValidate="txtApellido"
                        Display="None"
                        ErrorMessage="El campo Apellido no puede estar vacío"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
                
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="emailLabel" runat="server" Text="Email: " />
            </td>
            <td >
                <asp:TextBox ID="txtEmail" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="direccionLabel" runat="server" Text="Dirección" />
            </td>
            <td >
                <asp:TextBox ID="txtDireccion" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="fechaNacimientoLabel" runat="server" Text="Fecha Nac (dd/mm/aaaa)" />
                 
            </td>
            <td >
                <asp:TextBox ID="txtFechaNacimiento" runat="server" />
                <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
                        ControlToValidate="txtFechaNacimiento"
                        Display="None"
                        ErrorMessage="El campo Fecha Nacimiento no puede estar vacío"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
            </td>
            <td  >
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="legajoLabel" runat="server" Text="Legajo" />
            </td>
            <td >
                <asp:TextBox ID="txtLegajo" runat="server"  />
                <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
                        ControlToValidate="txtLegajo"
                        Display="None"
                        ErrorMessage="El campo Legajo no puede estar vacío"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
                
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="telefonoLabel" runat="server" Text="Teléfono" />
            </td>
            <td>
                <asp:TextBox ID="txtTelefono" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="tipoPersonaLabel" runat="server" Text="Tipo Persona" />
            </td>
            <td >
                <asp:DropDownList ID="ddlTipoPersona" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="idPlanLabel" runat="server" Text="IDPlan" />
            </td>
            <td >
                <asp:DropDownList ID="ddlIdPlan" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Panel> 
      
<asp:Panel ID="formActionsPanel" runat="server" Visible="false">
<asp:Button ID="btnAceptar"   Text="Aceptar" runat="server" Visible="true" 
        onclick="btnAceptar_Click"/> 
<asp:Button ID="btnCancelar" Text="Cancelar" runat="server" Visible="true" 
        onclick="btnCancelar_Click" 
        onclientclick="Response.Redirect(~/Persona.aspx)" />
</asp:Panel>

</asp:Content>
