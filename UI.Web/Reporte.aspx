<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reporte.aspx.cs" Inherits="UI.Web.Reporte" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">

    <CR:CrystalReportViewer ID="CrystalReportViewer" runat="server" 
        AutoDataBind="True" Height="1268px" ReportSourceID="CursosODBC1" Width="1082px" />
   

     <CR:CrystalReportSource ID="CursosODBC1" runat="server">
         <Report FileName="C:\Users\Usuario\Documents\apuntes varios\ELECTIVAS\net\TP2FinalMBS\UI.Desktop\CursosODBC.rpt">
         </Report>
    </CR:CrystalReportSource>
   

   
</asp:Content>
