<%@ Page Title="Doctor" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Doctors.aspx.cs" Inherits="HospitalManagementProjects.Details.Doctors" %>

<%@ Register Src="~/Details/DoctorPartial.ascx" TagPrefix="uc1" TagName="DoctorPartial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:DoctorPartial runat="server" id="DoctorPartial" />
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
