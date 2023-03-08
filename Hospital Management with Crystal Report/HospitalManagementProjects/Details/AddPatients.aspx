<%@ Page Title="AddPatients" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPatients.aspx.cs" Inherits="HospitalManagementProjects.Details.AddPatients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap-datepicker.standalone.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-12">
            <h4 class="display-6">Create New Patients</h4>
            <asp:FormView ID="FormView1" Width="1000px" runat="server" DataKeyNames="PatientId" DataSourceID="dsPatients" DefaultMode="Insert">
                
                <InsertItemTemplate>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">
                             Patient Name
                        </label>
                        <div class="col-4">
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Text='<%# Bind("PatientName") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox1" CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" Text="Name is required"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                     <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">
                             Phone
                        </label>
                        <div class="col-4">
                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" Text='<%# Bind("Phone") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox2" CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Phone is required" Text="Phone is required"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                     <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">
                             Blood Group
                        </label>
                        <div class="col-4">
                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" Text='<%# Bind("BloodGroup") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox3" CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Blood Group is required" Text="Blood Group is required"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                     <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">
                             Address
                        </label>
                        <div class="col-4">
                            <asp:TextBox CssClass="form-control" TextMode="MultiLine" ID="TextBox4" runat="server" Text='<%# Bind("Address") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox4" CssClass="text-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Address is required" Text="Address is required"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                     <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">
                             Arrival Date
                        </label>
                        <div class="col-4">
                            <asp:TextBox CssClass="form-control date" ID="TextBox5" runat="server" Text='<%# Bind("ArrivalDate", "{0:yyyy-MM-dd}") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox5" CssClass="text-danger" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Date is required" Text="Date is required"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                     <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">
                             Gender
                        </label>
                        <div class="col-4">
                            <asp:RadioButton ID="RadioButton1" Checked='<%# Bind("Gender") %>' runat="server" Text="Male" GroupName="gender"/>
                            <asp:RadioButton ID="RadioButton2" Checked='<%# Bind("Gender") %>' runat="server" Text="Female" GroupName="gender"/>
                            <%--<asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" Text='<%# Bind("Gender") %>' />--%>
                            <%--<asp:RequiredFieldValidator ControlToValidate="TextBox6" CssClass="text-danger" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Address is required" Text="Address is required"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>
                     <%--<div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">
                             Gender
                        </label>
                        <div class="col-4">
                            <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" Text='<%# Bind("Gender") %>' />
                            <asp:RequiredFieldValidator ControlToValidate="TextBox6" CssClass="text-danger" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Address is required" Text="Address is required"></asp:RequiredFieldValidator>
                        </div>
                    </div>--%>
                    <%-- <div class="form-group row mb-1">
                        <label class="col-form-label col-2 text-end">
                             Gender
                        </label>
                        <div class="col-4">
                            <asp:HiddenField Value='<%# Bind("Gender") %>' ID="HiddenField1" runat="server" />
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                            <label class="form-check-label" for="flexRadioDefault1">
                                Male
                            </label>
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                            <label class="form-check-label" for="flexRadioDefault2">
                                Female
                            </label>
                        </div>
                    </div>--%>
                     <div class="form-group row mb-1">
                       <asp:Label AssociatedControlID="DropDownList1" CssClass="col-form-label col-2 text-end" ID="Label4" runat="server" Text="Hospital"></asp:Label>
                       <div class="col-4">
                           <asp:DropDownList ID="DropDownList1" AppendDataBoundItems="true" runat="server" CssClass="form-select" DataSourceID="dsHospital" DataTextField="HospitalName" DataValueField="HospitalId" SelectedValue='<%# Bind("HospitalId") %>'>
                               <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                           </asp:DropDownList>
                       </div>
                   </div>
                     <div class="form-group row mb-1">
                      
                       <div class="col-4 offset-2">
                           <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Insert" CommandName="Insert" />
                           <asp:Button CssClass="btn btn-secondary" ID="Button2" runat="server" Text="Cancel"  CommandName="Cancel" />
                       </div>
                   </div>
                    
                </InsertItemTemplate>
               
            </asp:FormView>
        </div>
    </div>
    <asp:SqlDataSource ID="dsHospital" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Hospitals]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsPatients" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Patients] WHERE [PatientId] = @PatientId" InsertCommand="INSERT INTO [Patients] ([PatientName], [Phone], [BloodGroup], [Address], [ArrivalDate], [Gender], [HospitalId]) VALUES (@PatientName, @Phone, @BloodGroup, @Address, @ArrivalDate, @Gender, @HospitalId)" SelectCommand="SELECT * FROM [Patients]" UpdateCommand="UPDATE [Patients] SET [PatientName] = @PatientName, [Phone] = @Phone, [BloodGroup] = @BloodGroup, [Address] = @Address, [ArrivalDate] = @ArrivalDate, [Gender] = @Gender, [HospitalId] = @HospitalId WHERE [PatientId] = @PatientId">
        <DeleteParameters>
            <asp:Parameter Name="PatientId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PatientName" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="BloodGroup" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter DbType="Date" Name="ArrivalDate" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="HospitalId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PatientName" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="BloodGroup" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter DbType="Date" Name="ArrivalDate" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="HospitalId" Type="Int32" />
            <asp:Parameter Name="PatientId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script src="../Scripts/jquery-3.6.3.js"></script>
    <script src="../Scripts/bootstrap-datepicker.js"></script>
     <script>
        $('.date').datepicker({
            format: 'yyyy-mm-dd'
        });
        
     </script>
</asp:Content>
