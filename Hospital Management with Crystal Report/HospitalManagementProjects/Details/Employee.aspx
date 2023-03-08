<%@ Page Title="Employee" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="HospitalManagementProjects.Details.Employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap-datepicker.standalone.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-12">
            <h4>Employees</h4>
            <asp:GridView CssClass="table table-striped" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="EmployeeId" DataSourceID="dsEmployee" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="EmployeeName" SortExpression="EmployeeName">
                        <EditItemTemplate>
                             <asp:TextBox CssClass="form-control" ValidationGroup="g2" ID="TextBox1" runat="server" Text='<%# Bind("EmployeeName") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox1" ValidationGroup="g2" CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" Text="Name is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("EmployeeName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EmpType" SortExpression="EmpType">
                        <EditItemTemplate>
                             <asp:TextBox CssClass="form-control" ValidationGroup="g2" ID="TextBox3" runat="server" Text='<%# Bind("EmpType") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox3" ValidationGroup="g2" CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Emp. Type is required" Text="Emp. Type is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("EmpType") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Salary" SortExpression="Salary">
                        <EditItemTemplate>
                             <asp:TextBox CssClass="form-control" ValidationGroup="g2" ID="TextBox5" runat="server" Text='<%# Bind("Salary", "{0:0.00}") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox5" ValidationGroup="g2" CssClass="text-danger" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Salary is required" Text="Salary is required"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ControlToValidate="TextBox5" Operator="DataTypeCheck" Type="Double" ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Salary", "{0:0.00}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="JoinningDate" SortExpression="JoinningDate">
                        <EditItemTemplate>
                            <asp:TextBox CssClass="form-control date" ValidationGroup="g2" ID="TextBox2" runat="server" Text='<%# Bind("JoinningDate", "{0:yyyy-MM-dd}") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox2" ValidationGroup="g2" CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Date is required" Text="Date is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("JoinningDate", "{0:yyyy-MM-dd}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address" SortExpression="Address">
                        <EditItemTemplate>
                            <asp:TextBox CssClass="form-control" TextMode="MultiLine" ValidationGroup="g2" ID="TextBox4" runat="server" Text='<%# Bind("Address") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox4" ValidationGroup="g2" CssClass="text-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Address is required" Text="Address is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                            
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DepartmentName" SortExpression="DepartmentName">
                        <EditItemTemplate>
                             <asp:DropDownList CssClass="form-select" DataSourceID="dsepartment" SelectedValue='<%# Bind("DepartmentId") %>' AppendDataBoundItems="true" DataTextField="DepartmentName" DataValueField="DepartmentId" ID="DropDownList1" runat="server">
                                <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ControlToValidate="DropDownList1" Display="Dynamic" ValidationGroup="g2" CssClass="text-danger" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Department is required" Text="Department is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("DepartmentName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EmpImage" SortExpression="EmpImage">
                        <EditItemTemplate>
                            <asp:FileUpload CssClass="form-control" ID="FileUpload1" runat="server" />
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("EmpImage") %>'/>
                            
                        </EditItemTemplate>
                        <ItemTemplate>
                            <img src='<%# Eval("EmpImage", "/Uploads/{0}") %>' class="rounded-circle" style="width:40px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton CssClass="btn btn-secondary btn-sm" ValidationGroup="g2" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton CssClass="btn btn-success btn-sm" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle Width="170px" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-12">
            <h4>Add New Employee</h4>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="dsEmployee" DefaultMode="Insert" RenderOuterTable="False" DataKeyNames="EmployeeId" OnItemInserting="FormView1_ItemInserting">
               
                <InsertItemTemplate>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">
                            Employee Name
                        </label>
                        <div class="col-4">
                            <asp:TextBox CssClass="form-control" ValidationGroup="g1" ID="TextBox1" runat="server" Text='<%# Bind("EmployeeName") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox1" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" Text="Name is required"></asp:RequiredFieldValidator>
                        </div>
                    </div> 
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">
                            Joining Date
                        </label>
                        <div class="col-4">
                            <asp:TextBox CssClass="form-control date" ValidationGroup="g1" ID="TextBox2" runat="server" Text='<%# Bind("JoinningDate", "{0:yyyy-MM-dd}") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox2" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Date is required" Text="Date is required"></asp:RequiredFieldValidator>
                        </div>
                    </div> 
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">
                            Employee Type
                        </label>
                        <div class="col-4">
                            <asp:TextBox CssClass="form-control" ValidationGroup="g1" ID="TextBox3" runat="server" Text='<%# Bind("EmpType") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox3" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Emp. Type is required" Text="Emp. Type is required"></asp:RequiredFieldValidator>
                        </div>
                    </div> 
                   <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">
                            Address
                        </label>
                        <div class="col-4">
                            <asp:TextBox CssClass="form-control" TextMode="MultiLine" ValidationGroup="g1" ID="TextBox4" runat="server" Text='<%# Bind("Address") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox4" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Address is required" Text="Address is required"></asp:RequiredFieldValidator>
                        </div>
                    </div> 
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">
                            Employee Salary
                        </label>
                        <div class="col-4">
                            <asp:TextBox CssClass="form-control" ValidationGroup="g1" ID="TextBox5" runat="server" Text='<%# Bind("Salary", "{0:0.00}") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox5" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Salary is required" Text="Salary is required"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ControlToValidate="TextBox5" Display="Dynamic" Operator="DataTypeCheck" Type="Double" ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>
                        </div>
                    </div> <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">
                            Department
                        </label>
                        <div class="col-4">
                            <asp:DropDownList CssClass="form-select" DataSourceID="dsepartment" SelectedValue='<%# Bind("DepartmentId") %>' AppendDataBoundItems="true" DataTextField="DepartmentName" DataValueField="DepartmentId" ID="DropDownList1" runat="server">
                                <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ControlToValidate="DropDownList1" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Department is required" Text="Department is required"></asp:RequiredFieldValidator>
                        </div>
                    </div> 
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">
                            Employee Image
                        </label>
                        <div class="col-4">
                            <asp:FileUpload CssClass="form-control" ID="FileUpload1" runat="server" />
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("EmpImage") %>'/>
                            <asp:RequiredFieldValidator ControlToValidate="FileUpload1" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Image is required" Text="Image is required"></asp:RequiredFieldValidator>
                        </div>
                    </div> 
                   <div class="form-group row mb-1">
                        
                        <div class="col-4 offset-2">
                            <asp:LinkButton CssClass="btn btn-primary btn-sm" ValidationGroup="g1" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </div>
                    </div> 
                   
                </InsertItemTemplate>
                
            </asp:FormView>
        </div>
    </div>
    <asp:ObjectDataSource ID="dsEmployee" runat="server" DataObjectTypeName="HospitalManagementProjects.App_Code.Employee" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="Get" TypeName="HospitalManagementProjects.App_Code.EmployeeRepo" UpdateMethod="Update"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="dsepartment" runat="server" SelectMethod="Get" TypeName="HospitalManagementProjects.App_Code.DepartmentRepo"></asp:ObjectDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script src="../Scripts/jquery-3.6.3.js"></script>
    <script src="../Scripts/bootstrap-datepicker.js"></script>
    <script>
        $(".date").datepicker({
            format: 'yyyy-mm-dd'
        });
    </script>
</asp:Content>
