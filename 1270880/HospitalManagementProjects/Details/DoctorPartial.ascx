<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DoctorPartial.ascx.cs" Inherits="HospitalManagementProjects.Details.DoctorPartial" %>
<div class="row">
        <div class="col-12">
            <h4>Doctors</h4>
            <asp:GridView CssClass="table table-striped" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="DoctorId" DataSourceID="dsDoctor">
                <Columns>
                    <asp:TemplateField HeaderText="DoctorName" SortExpression="DoctorName">
                        <EditItemTemplate>
                            <asp:TextBox CssClass="form-control" ValidationGroup="g2" ID="TextBox1" runat="server" Text='<%# Bind("DoctorName") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox1" ValidationGroup="g2" CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" Text="Name is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("DoctorName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Qualification" SortExpression="Qualification">
                        <EditItemTemplate>
                            <asp:TextBox CssClass="form-control" ValidationGroup="g2" ID="TextBox2" runat="server" Text='<%# Bind("Qualification") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox2" ValidationGroup="g2" CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Qualification is required" Text="Qualification is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Qualification") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PatientName" SortExpression="PatientName">
                        <EditItemTemplate>
                            <asp:DropDownList CssClass="form-select" DataSourceID="dsPatient" SelectedValue='<%# Bind("PatientId") %>' AppendDataBoundItems="true" DataTextField="PatientName" DataValueField="PatientId" ID="DropDownList1" runat="server">
                                <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ControlToValidate="DropDownList1" ValidationGroup="g2" CssClass="text-danger" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Department is required" Text="Department is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("PatientName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EmployeeName" SortExpression="EmployeeName">
                        <EditItemTemplate>
                             <asp:DropDownList CssClass="form-select" DataSourceID="dsEmployee" SelectedValue='<%# Bind("EmployeeId") %>' AppendDataBoundItems="true" DataTextField="EmployeeName" DataValueField="EmployeeId" ID="DropDownList2" runat="server">
                                <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ControlToValidate="DropDownList1" ValidationGroup="g2" CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Department is required" Text="Department is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("EmployeeName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton CssClass="btn btn-primary btn-sm" ValidationGroup="g2" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton CssClass="btn btn-secondary btn-sm" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-12">
            <h4>Add New Doctor</h4>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="DoctorId" DataSourceID="dsDoctor" DefaultMode="Insert" RenderOuterTable="False">
                
                <InsertItemTemplate>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">
                            Doctor Name
                        </label>
                        <div class="col-4">
                            <asp:TextBox CssClass="form-control" ValidationGroup="g1" ID="TextBox1" runat="server" Text='<%# Bind("DoctorName") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox1" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" Text="Name is required"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                     <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">
                            Qualification
                        </label>
                        <div class="col-4">
                            <asp:TextBox CssClass="form-control" ValidationGroup="g1" ID="TextBox2" runat="server" Text='<%# Bind("Qualification") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox2" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Qualification is required" Text="Qualification is required"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">
                            Patients
                        </label>
                        <div class="col-4">
                            <asp:DropDownList CssClass="form-select" DataSourceID="dsPatient" SelectedValue='<%# Bind("PatientId") %>' AppendDataBoundItems="true" DataTextField="PatientName" DataValueField="PatientId" ID="DropDownList1" runat="server">
                                <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ControlToValidate="DropDownList1" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Department is required" Text="Department is required"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                     <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">
                            Employees
                        </label>
                        <div class="col-4">
                            <asp:DropDownList CssClass="form-select" DataSourceID="dsEmployee" SelectedValue='<%# Bind("EmployeeId") %>' AppendDataBoundItems="true" DataTextField="EmployeeName" DataValueField="EmployeeId" ID="DropDownList2" runat="server">
                                <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ControlToValidate="DropDownList1" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Department is required" Text="Department is required"></asp:RequiredFieldValidator>
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
    <asp:SqlDataSource ID="dsDoctor" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDb %>" DeleteCommand="DELETE FROM [Doctors] WHERE [DoctorId] = @DoctorId" InsertCommand="INSERT INTO [Doctors] ([DoctorName], [Qualification], [PatientId], [EmployeeId]) VALUES (@DoctorName, @Qualification, @PatientId, @EmployeeId)" SelectCommand="SELECT Doctors.DoctorId, Doctors.DoctorName, Doctors.Qualification, Doctors.PatientId, Doctors.EmployeeId, Patients.PatientName, Employees.EmployeeName FROM Doctors INNER JOIN Patients ON Doctors.PatientId = Patients.PatientId INNER JOIN Employees ON Doctors.EmployeeId = Employees.EmployeeId" UpdateCommand="UPDATE [Doctors] SET [DoctorName] = @DoctorName, [Qualification] = @Qualification, [PatientId] = @PatientId, [EmployeeId] = @EmployeeId WHERE [DoctorId] = @DoctorId">
        <DeleteParameters>
            <asp:Parameter Name="DoctorId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DoctorName" Type="String" />
            <asp:Parameter Name="Qualification" Type="String" />
            <asp:Parameter Name="PatientId" Type="Int32" />
            <asp:Parameter Name="EmployeeId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DoctorName" Type="String" />
            <asp:Parameter Name="Qualification" Type="String" />
            <asp:Parameter Name="PatientId" Type="Int32" />
            <asp:Parameter Name="EmployeeId" Type="Int32" />
            <asp:Parameter Name="DoctorId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsPatient" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDb %>" SelectCommand="SELECT [PatientId], [PatientName] FROM [Patients]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDb %>" SelectCommand="SELECT [EmployeeId], [EmployeeName] FROM [Employees]"></asp:SqlDataSource>