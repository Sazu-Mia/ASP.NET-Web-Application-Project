<%@ Page Title="Patients" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patients.aspx.cs" Inherits="HospitalManagementProjects.Details.Patients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row pt-5">
        <div class="col-6 offset-3">
             <asp:DropDownList CssClass="form-select" AppendDataBoundItems="true" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="HospitalName" DataValueField="HospitalId" AutoPostBack="True">
                <asp:ListItem Value="" Selected="True">Select Hospital</asp:ListItem>
            </asp:DropDownList>
        </div>
         <div class="col-3">
             <div class="d-flex justify-content-end">
                <a class="btn btn-primary" href="AddPatients.aspx">Add New Patients</a>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <h4 class="display-6">Patients</h4>
            <asp:GridView CssClass="table table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PatientId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="PatientId" HeaderText="PatientId" InsertVisible="False" ReadOnly="True" SortExpression="PatientId" />
                    <asp:BoundField DataField="PatientName" HeaderText="PatientName" SortExpression="PatientName" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="ArrivalDate" HeaderText="ArrivalDate" SortExpression="ArrivalDate" DataFormatString="{0:yyyy-MM-dd}" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="HospitalId" HeaderText="HospitalId" SortExpression="HospitalId" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDb %>" SelectCommand="SELECT * FROM [Patients] WHERE ([HospitalId] = @HospitalId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="HospitalId" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Hospitals]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
