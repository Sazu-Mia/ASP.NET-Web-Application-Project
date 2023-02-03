<%@ Page Title="Department" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="HospitalManagementProjects.Details.Department" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-12">
            <asp:ValidationSummary CssClass="text-danger" DisplayMode="List" ID="ValidationSummary1" runat="server" />
        </div>
        <div class="col-12">
            <h4>Deparments</h4>
            <asp:GridView CssClass="table table-bordered table-striped" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="DepartmentId" DataSourceID="dsDepartment">
                <Columns>
                    <asp:BoundField DataField="DepartmentId" HeaderText="DepartmentId" InsertVisible="False" ReadOnly="True" SortExpression="DepartmentId" />
                    <asp:TemplateField HeaderText="DepartmentName" SortExpression="DepartmentName">
                        <EditItemTemplate>
                            <asp:TextBox CssClass="form-control" ValidationGroup="g1" ID="TextBox1" runat="server" Text='<%# Bind("DepartmentName") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="TextBox1" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" Text="Name is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("DepartmentName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DepartmentHead" SortExpression="DepartmentHead">
                        <EditItemTemplate>
                            <asp:TextBox CssClass="form-control" ValidationGroup="g1" ID="TextBox2" runat="server" Text='<%# Bind("DepartmentHead") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="TextBox2" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="D. Head is required" Text="D. Head is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("DepartmentHead") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton CssClass="btn btn-primary btn-sm" ValidationGroup="g1" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" ToolTip="Update"><i class="bi bi-save"></i></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" ToolTip="Cancel"><i class="bi bi-x"></i></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton CssClass="btn btn-secondary btn-sm" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" ToolTip="Edit"><i class="bi bi-pencil"></i></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" ToolTip="Delete"><i class="bi bi-trash"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
         <div class="col-6">
            <h4>Add New Deparment</h4>
             <asp:DetailsView CssClass="table table-bordered" ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="DepartmentId" DataSourceID="dsDepartment" DefaultMode="Insert">
                 <Fields>
                     <asp:TemplateField HeaderText="DepartmentName" SortExpression="DepartmentName">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DepartmentName") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <InsertItemTemplate>
                             <asp:TextBox CssClass="form-control" ValidationGroup="g2" ID="TextBox1" runat="server" Text='<%# Bind("DepartmentName") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="TextBox1" ValidationGroup="g2" CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" Text="Name is required"></asp:RequiredFieldValidator>
                         </InsertItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label1" runat="server" Text='<%# Bind("DepartmentName") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="DepartmentHead" SortExpression="DepartmentHead">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DepartmentHead") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <InsertItemTemplate>
                             <<asp:TextBox CssClass="form-control" ValidationGroup="g2" ID="TextBox2" runat="server" Text='<%# Bind("DepartmentHead") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="TextBox2" ValidationGroup="g2" CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="D. Head is required" Text="D. Head is required"></asp:RequiredFieldValidator>
                         </InsertItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label2" runat="server" Text='<%# Bind("DepartmentHead") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField ShowHeader="False">
                         <InsertItemTemplate>
                             <asp:LinkButton CssClass="btn btn-secondary btn-sm" ValidationGroup="g2" ID="LinkButton1" runat="server" CausesValidation="True" ToolTip="Insert" CommandName="Insert" Text=""><i class="bi bi-save"></i></asp:LinkButton>
                             &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" ToolTip="Reset" Text=""><i class="bi bi-x"></i></asp:LinkButton>
                         </InsertItemTemplate>
                         <ItemTemplate>
                             <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                         </ItemTemplate>
                     </asp:TemplateField>
                 </Fields>
             </asp:DetailsView>
        </div>
    </div>
    <asp:SqlDataSource ID="dsDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDb %>" DeleteCommand="DELETE FROM [Departments] WHERE [DepartmentId] = @DepartmentId" InsertCommand="INSERT INTO [Departments] ([DepartmentName], [DepartmentHead]) VALUES (@DepartmentName, @DepartmentHead)" SelectCommand="SELECT * FROM [Departments]" UpdateCommand="UPDATE [Departments] SET [DepartmentName] = @DepartmentName, [DepartmentHead] = @DepartmentHead WHERE [DepartmentId] = @DepartmentId">
        <DeleteParameters>
            <asp:Parameter Name="DepartmentId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DepartmentName" Type="String" />
            <asp:Parameter Name="DepartmentHead" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DepartmentName" Type="String" />
            <asp:Parameter Name="DepartmentHead" Type="String" />
            <asp:Parameter Name="DepartmentId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
