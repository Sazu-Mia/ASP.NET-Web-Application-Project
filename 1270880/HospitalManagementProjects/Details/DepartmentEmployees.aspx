<%@ Page Title="MasterDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DepartmentEmployees.aspx.cs" Inherits="HospitalManagementProjects.Details.DepartmentEmployees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-12">
            <h4>Department</h4>
            <asp:GridView CssClass="table table-striped" ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="DepartmentId" DataSourceID="dsDepartment">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton CssClass="btn btn-success btn-sm" ID="LinkButton5" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DepartmentName" SortExpression="DepartmentName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DepartmentName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("DepartmentName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DepartmentHead" SortExpression="DepartmentHead">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DepartmentHead") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("DepartmentHead") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton CssClass="btn btn-primary btn-sm" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton CssClass="btn btn-secondary btn-sm"  ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
         <div class="col-12">
            <h4>Employees</h4>
             <asp:GridView CssClass="table table-bordered" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="EmployeeId" DataSourceID="dsEmployee">
                 <Columns>
                     <asp:TemplateField HeaderText="EmployeeName" SortExpression="EmployeeName">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("EmployeeName") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label1" runat="server" Text='<%# Bind("EmployeeName") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="JoinningDate" SortExpression="JoinningDate">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("JoinningDate") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label2" runat="server" Text='<%# Bind("JoinningDate") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="EmpType" SortExpression="EmpType">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("EmpType") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label3" runat="server" Text='<%# Bind("EmpType") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Address" SortExpression="Address">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label4" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Salary" SortExpression="Salary">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Salary") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label5" runat="server" Text='<%# Bind("Salary") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="EmpImage" SortExpression="EmpImage">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("EmpImage") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <img src='<%# Eval("EmpImage", "/Uploads/{0}") %>' class="rounded-circle" style="width:40px" />
                             <%--<asp:Label ID="Label6" runat="server" Text='<%# Bind("EmpImage") %>'></asp:Label>--%>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="DepartmentId" SortExpression="DepartmentId">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("DepartmentId") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label7" runat="server" Text='<%# Bind("DepartmentId") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField ShowHeader="False">
                         <EditItemTemplate>
                             <asp:LinkButton CssClass="btn btn-primary btn-sm" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                             &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:LinkButton CssClass="btn btn-secondary btn-sm" ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                             &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                         </ItemTemplate>
                     </asp:TemplateField>
                 </Columns>
             </asp:GridView>
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
    <asp:SqlDataSource ID="dsEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDb %>" DeleteCommand="DELETE FROM [Employees] WHERE [EmployeeId] = @EmployeeId" InsertCommand="INSERT INTO [Employees] ([EmployeeName], [JoinningDate], [EmpType], [Address], [Salary], [EmpImage], [DepartmentId]) VALUES (@EmployeeName, @JoinningDate, @EmpType, @Address, @Salary, @EmpImage, @DepartmentId)" SelectCommand="SELECT * FROM [Employees] WHERE ([DepartmentId] = @DepartmentId)" UpdateCommand="UPDATE [Employees] SET [EmployeeName] = @EmployeeName, [JoinningDate] = @JoinningDate, [EmpType] = @EmpType, [Address] = @Address, [Salary] = @Salary, [EmpImage] = @EmpImage, [DepartmentId] = @DepartmentId WHERE [EmployeeId] = @EmployeeId">
        <DeleteParameters>
            <asp:Parameter Name="EmployeeId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EmployeeName" Type="String" />
            <asp:Parameter DbType="Date" Name="JoinningDate" />
            <asp:Parameter Name="EmpType" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Salary" Type="Decimal" />
            <asp:Parameter Name="EmpImage" Type="String" />
            <asp:Parameter Name="DepartmentId" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView2" Name="DepartmentId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="EmployeeName" Type="String" />
            <asp:Parameter DbType="Date" Name="JoinningDate" />
            <asp:Parameter Name="EmpType" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Salary" Type="Decimal" />
            <asp:Parameter Name="EmpImage" Type="String" />
            <asp:Parameter Name="DepartmentId" Type="Int32" />
            <asp:Parameter Name="EmployeeId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
