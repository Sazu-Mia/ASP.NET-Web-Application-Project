<%@ Page Title="Validation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="HospitalManagementProjects.Details.Validation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <asp:ValidationSummary CssClass="text-danger" DisplayMode="List" ID="ValidationSummary1" runat="server" />
            </div>
            <h4>Registration</h4>
            <div class="col-6">
                <div class="form-group row mb-1">
                    <label class="col-form-label col-3">
                        Name
                    </label>
                    <div class="col-9">
                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="TextBox1" CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required" Text="*"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row mb-1">
                    <label class="col-form-label col-3">
                        Email
                    </label>
                    <div class="col-9">
                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="example@gmail.com"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email" ControlToValidate="TextBox2" CssClass="text-danger" Text="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group row mb-1">
                    <label class="col-form-label col-3">
                        Age
                    </label>
                    <div class="col-9">
                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="(21-45)"></asp:TextBox>
                        <asp:RangeValidator ControlToValidate="TextBox3" MaximumValue="45" MinimumValue="21" ID="RangeValidator1" runat="server" ErrorMessage="Enter value in specified range" Text="*"></asp:RangeValidator>
                    </div>
                </div>
                 <div class="form-group row mb-1">
                    <label class="col-form-label col-3">
                        Phone
                    </label>
                    <div class="col-9">
                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Phone number"></asp:TextBox>
                        <asp:CustomValidator CssClass="text-danger" ControlToValidate="TextBox6" OnServerValidate="cusCustom_ServerValidate" ID="CustomValidator1" runat="server" ErrorMessage="The number must be exactly 8 characters long!" Text="*"></asp:CustomValidator>
                    </div>
                </div>
                 <div class="form-group row mb-1">
                    <label class="col-form-label col-3">
                        Password
                    </label>
                    <div class="col-9">
                        <asp:TextBox CssClass="form-control" TextMode="Password" ID="TextBox4" runat="server" placeholder="Password"></asp:TextBox>
                         <asp:RequiredFieldValidator ControlToValidate="TextBox4" CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Required" Text="*"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group row mb-1">
                    <label class="col-form-label col-3">
                        Re-Type Password
                    </label>
                    <div class="col-9">
                        <asp:TextBox CssClass="form-control" TextMode="Password" ID="TextBox5" runat="server" placeholder="Re-Type Password"></asp:TextBox>
                         <asp:RequiredFieldValidator ControlToValidate="TextBox5" CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password is Required" Text="*"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ControlToCompare="TextBox4" Type="String" ControlToValidate="TextBox5" Operator="Equal" ID="CompareValidator1" runat="server" ErrorMessage="Password not match" Text="*"></asp:CompareValidator>
                    </div>
                </div>
                <div class="form-group row mb-1">
                    
                    <div class="col-9 offset-3">
                        <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Register" />
                        <asp:Button CssClass="btn btn-danger" ID="Button2" runat="server" Text="Cancel" CommandName="Cancel" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    
</asp:Content>
