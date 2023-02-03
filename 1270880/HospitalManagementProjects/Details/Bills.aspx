<%@ Page Title="Bill" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bills.aspx.cs" Inherits="HospitalManagementProjects.Details.Bills" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap-datepicker.standalone.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col-12">
                    <h4>Bills</h4>
                    <asp:GridView CssClass="table table-striped" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="PaymentId" DataSourceID="dsBill">
                        <Columns>
                             
                            <asp:TemplateField HeaderText="BillDate" SortExpression="BillDate">
                                <EditItemTemplate>
                                     <asp:TextBox CssClass="form-control date" ValidationGroup="g2" ID="TextBox1" runat="server" Text='<%# Bind("BillDate", "{0:yyyy-MM-dd}") %>' />
                                    <asp:RequiredFieldValidator ControlToValidate="TextBox1" ValidationGroup="g2" CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Date is required" Text="Date is required"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("BillDate", "{0:yyyy-MM-dd}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="RoomCost" SortExpression="RoomCost">
                                <EditItemTemplate>
                                    <asp:TextBox CssClass="form-control" ValidationGroup="g2" ID="TextBox2" runat="server" Text='<%# Bind("RoomCost", "{0:0.00}") %>' />
                                    <asp:RequiredFieldValidator ControlToValidate="TextBox2" ValidationGroup="g2" CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Room Cost is required" Text="Room Cost is required"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("RoomCost", "{0:0.00}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="OtherCharge" SortExpression="OtherCharge">
                                <EditItemTemplate>
                                     <asp:TextBox CssClass="form-control" ValidationGroup="g2" ID="TextBox3" runat="server" Text='<%# Bind("OtherCharge", "{0:0.00}") %>' />
                                    <asp:RequiredFieldValidator ControlToValidate="TextBox3" ValidationGroup="g2" CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Other Charge is required" Text="Other Charge is required"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("OtherCharge", "{0:0.00}") %>'></asp:Label>
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
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("PatientName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton CssClass="btn btn-success btn-sm" ValidationGroup="g2" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
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
                    <h4>Add New Bill</h4>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="PaymentId" DataSourceID="dsBill" DefaultMode="Insert" RenderOuterTable="False">
                        
                        <InsertItemTemplate>
                           
                            <div class="form-group row mb-1">
                                <label class="col-form-label col-2 text-end">
                                    Bill Date
                                </label>
                                <div class="col-4">
                                    <asp:TextBox CssClass="form-control date" ValidationGroup="g1" ID="TextBox1" runat="server" Text='<%# Bind("BillDate", "{0:yyyy-MM-dd}") %>' />
                                    <asp:RequiredFieldValidator ControlToValidate="TextBox1" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Date is required" Text="Date is required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-form-label col-2 text-end">
                                    Room Cost
                                </label>
                                <div class="col-4">
                                    <asp:TextBox CssClass="form-control" ValidationGroup="g1" ID="TextBox2" runat="server" Text='<%# Bind("RoomCost", "{0:0.00}") %>' />
                                    <asp:RequiredFieldValidator ControlToValidate="TextBox2" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Room Cost is required" Text="Room Cost is required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-form-label col-2 text-end">
                                    Other Charge
                                </label>
                                <div class="col-4">
                                    <asp:TextBox CssClass="form-control" ValidationGroup="g1" ID="TextBox3" runat="server" Text='<%# Bind("OtherCharge", "{0:0.00}") %>' />
                                    <asp:RequiredFieldValidator ControlToValidate="TextBox3" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Other Charge is required" Text="Other Charge is required"></asp:RequiredFieldValidator>
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

                                <div class="col-4 offset-2">
                                    <asp:LinkButton CssClass="btn btn-success btn-sm" ValidationGroup="g1" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </div>
                            </div>

                        </InsertItemTemplate>
                        
                    </asp:FormView>
                </div>
            </div>
            <asp:SqlDataSource ID="dsBill" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDb %>" DeleteCommand="DELETE FROM [Bill] WHERE [PaymentId] = @PaymentId" InsertCommand="INSERT INTO [Bill] ([BillDate], [RoomCost], [OtherCharge], [PatientId]) VALUES (@BillDate, @RoomCost, @OtherCharge, @PatientId)" SelectCommand="SELECT Bill.PaymentId, Bill.BillDate, Bill.RoomCost, Bill.OtherCharge, Bill.PatientId, Patients.PatientName FROM Bill INNER JOIN Patients ON Bill.PatientId = Patients.PatientId" UpdateCommand="UPDATE [Bill] SET [BillDate] = @BillDate, [RoomCost] = @RoomCost, [OtherCharge] = @OtherCharge, [PatientId] = @PatientId WHERE [PaymentId] = @PaymentId">
                <DeleteParameters>
                    <asp:Parameter Name="PaymentId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter DbType="Date" Name="BillDate" />
                    <asp:Parameter Name="RoomCost" Type="Decimal" />
                    <asp:Parameter Name="OtherCharge" Type="Decimal" />
                    <asp:Parameter Name="PatientId" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="BillDate" />
                    <asp:Parameter Name="RoomCost" Type="Decimal" />
                    <asp:Parameter Name="OtherCharge" Type="Decimal" />
                    <asp:Parameter Name="PatientId" Type="Int32" />
                    <asp:Parameter Name="PaymentId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="dsPatient" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalDb %>" SelectCommand="SELECT [PatientId], [PatientName] FROM [Patients]"></asp:SqlDataSource>
            
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script src="../Scripts/jquery-3.6.3.js"></script>
    <script src="../Scripts/bootstrap-datepicker.js"></script>
    <script>
        $(() => {
            $(document).on("click", '.date', function () {
                $(this).datepicker({
                    format: 'yyyy-mm-dd'
                });
            });
        });
    </script>
</asp:Content>
