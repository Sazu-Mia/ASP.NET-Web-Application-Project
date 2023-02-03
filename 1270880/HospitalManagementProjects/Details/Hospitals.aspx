<%@ Page Title="Hospital" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hospitals.aspx.cs" Inherits="HospitalManagementProjects.Details.Hospitals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-12">
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="HospitalId" DataSourceID="ObjectDataSource1" InsertItemPosition="LastItem">
                
                
                
                <EditItemTemplate>
                    <tr style="">
                        
                        <td>
                            <asp:TextBox ID="HospitalIdTextBox" runat="server" Text='<%# Eval("HospitalId") %>' />
                            
                        </td>
                        <td>
                            <asp:TextBox CssClass="form-control" ID="HospitalNameTextBox" runat="server" Text='<%# Bind("HospitalName") %>' />
                            
                        </td>
                        <td>
                            <asp:TextBox CssClass="form-control" ID="AriaTextBox" runat="server" Text='<%# Bind("Aria") %>' />
                        </td>
                        <td>
                            <asp:TextBox CssClass="form-control" ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                        </td>
                        
                        <td>
                            <asp:Button CssClass="btn btn-primary btn-sm" ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button CssClass="btn btn-danger btn-sm" ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                       
                        <td>
                            <asp:TextBox ID="HospitalIdTextBox" runat="server" Text='<%# Eval("HospitalId") %>' />
                        </td>
                        <td>
                            <asp:TextBox CssClass="form-control" ValidationGroup="g1" ID="HospitalNameTextBox" runat="server" Text='<%# Bind("HospitalName") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="HospitalNameTextBox" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" Text="Name is required"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox CssClass="form-control" ValidationGroup="g1" ID="AriaTextBox" runat="server" Text='<%# Bind("Aria") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="AriaTextBox" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Aria is required" Text="Aria is required"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox CssClass="form-control" ValidationGroup="g1" ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="CountryTextBox" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Country is required" Text="Country is required"></asp:RequiredFieldValidator>
                        </td>
                         <td>
                            <asp:Button CssClass="btn btn-secondary btn-sm" ValidationGroup="g1" ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button CssClass="btn btn-danger btn-sm" ValidationGroup="g1" ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        
                        <td>
                            <asp:Label ID="HospitalIdLabel" runat="server" Text='<%# Eval("HospitalId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="HospitalNameLabel" runat="server" Text='<%# Eval("HospitalName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AriaLabel" runat="server" Text='<%# Eval("Aria") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                        </td>
                        <td>
                            <asp:Button CssClass="btn btn-danger btn-sm" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button CssClass="btn btn-success btn-sm" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server" class="table">
                        <tr runat="server">
                            <td runat="server">
                                <table class="table table-striped" id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                    
                                        <th runat="server">Hospital Id</th>
                                        <th runat="server">Hospital Name</th>
                                        <th runat="server">Aria</th>
                                        <th runat="server">Country</th>
                                        <th style="width:200px" runat="server"></th>
                                    </tr>
                                    <tr runat="server" id="itemPlaceholder">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="">
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="3">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                
              
                
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDb %>" DeleteCommand="DELETE FROM [Hospitals] WHERE [HospitalId] = @HospitalId" InsertCommand="INSERT INTO [Hospitals] ([HospitalName], [Aria], [Country]) VALUES (@HospitalName, @Aria, @Country)" SelectCommand="SELECT * FROM [Hospitals]" UpdateCommand="UPDATE [Hospitals] SET [HospitalName] = @HospitalName, [Aria] = @Aria, [Country] = @Country WHERE [HospitalId] = @HospitalId">
                <DeleteParameters>
                    <asp:Parameter Name="HospitalId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="HospitalName" Type="String" />
                    <asp:Parameter Name="Aria" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="HospitalName" Type="String" />
                    <asp:Parameter Name="Aria" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="HospitalId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="HospitalManagementProjects.App_Code.Hospital" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="Get" TypeName="HospitalManagementProjects.App_Code.HospitalRepo" UpdateMethod="Update" SelectCountMethod="HospitalCount"></asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
