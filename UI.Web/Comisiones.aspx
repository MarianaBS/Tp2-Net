<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Comisiones.aspx.cs" Inherits="UI.Web.Comisiones" EnableSessionState="True" %>

<asp:Content ID="Content1" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">

<asp:Panel ID="gridPanel" runat="server">
    <asp:GridView ID="gridView" runat="server" AutoGenerateColumns="False"
    SelectedRowStyle-BackColor="Black"
    SelectedRowStyle-ForeColor="White"
    DataKeyNames="ID" onselectedindexchanged="gridView_SelectedIndexChanged" 
        CellPadding="4" ForeColor="#333333" GridLines="Both" CssClass="GridView">
      <Columns>
        <asp:BoundField HeaderText="Descripci�n" DataField="Descripcion" />
        <asp:BoundField HeaderText="ID Plan" DataField="IDPlan" />
        <asp:BoundField HeaderText="A�o Especialidad" DataField="AnioEspecialidad" />
        <asp:CommandField HeaderText="Acci�n" SelectText="Seleccionar" ShowSelectButton="true" />           
    </Columns>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
         <SelectedRowStyle BackColor="#ef8baf" ForeColor="#333333" />
        <HeaderStyle BackColor="#595758" Font-Bold="True" ForeColor="White" />
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

<asp:Panel ID="formPanel" Visible="false" runat="server">
    <table >
        <tr>
            <td >
                <asp:Label ID="DescripcionLabel" runat="server" Text="Descripci�n" />
                &nbsp;comisi�n</td>
            <td>
                <asp:TextBox ID="txtDescripcion" runat="server" />
                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                        ControlToValidate="txtDescripcion"
                        Display="None"
                        ErrorMessage="El campo Descripci�n no puede estar vac�o"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                IDPlan</td>
            <td >
                <asp:DropDownList ID="ddlIDPlan" runat="server" Height="22px" Width="126px" 
                    AutoPostBack="True" 
                    onselectedindexchanged="ddlIDPlan_SelectedIndexChanged" onload="ddlIDPlan_Load">
                </asp:DropDownList>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="IDPlanLabel" runat="server" Text="Descripci�n Plan" />
            </td>
            <td>
                
                <asp:TextBox ID="txtDescPlan" runat="server"></asp:TextBox>
                
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="anioEspecialidadLabel" runat="server" Text="A�o Especialidad" />
            </td>
            <td >
                <asp:TextBox ID="txtAnioEspecialidad" runat="server" />
                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                        ControlToValidate="txtAnioEspecialidad"
                        Display="None"
                        ErrorMessage="El campo A�o Especialidad no puede estar vac�o"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
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
        onclientclick="Response.Redirect(~/Comisiones.aspx)" />
</asp:Panel>

</asp:Content>
