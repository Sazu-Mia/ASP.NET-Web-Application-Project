using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagementProjects.Report
{
    public partial class GroupReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalDb"].ConnectionString))
            {
                using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Bill", con))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds, "Bill");
                    da.SelectCommand.CommandText = "SELECT * FROM Departments";
                    da.Fill(ds, "Departments");
                    da.SelectCommand.CommandText = "SELECT * FROM Doctors";
                    da.Fill(ds, "Doctors");
                    da.SelectCommand.CommandText = "SELECT * FROM Employees";
                    da.Fill(ds, "Employees");
                    
                    da.SelectCommand.CommandText = "SELECT * FROM Hospitals";
                    da.Fill(ds, "Hospitals");
                    da.SelectCommand.CommandText = "SELECT * FROM Patients";
                    da.Fill(ds, "Patients");
                    CrystalReportGroup rpt = new CrystalReportGroup();
                    rpt.SetDataSource(ds);
                    CrystalReportViewer2.ReportSource = rpt;
                    CrystalReportViewer2.RefreshReport();
                }
            }
        }
    }
}