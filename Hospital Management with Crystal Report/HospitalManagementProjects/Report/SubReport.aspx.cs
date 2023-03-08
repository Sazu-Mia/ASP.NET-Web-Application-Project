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
    public partial class SubReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalDb"].ConnectionString))
            {
                using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Patients", con))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds, "Patients");
                    da.SelectCommand.CommandText = "SELECT * FROM Hospitals";
                    da.Fill(ds, "Hospitals");
                    da.SelectCommand.CommandText = "SELECT * FROM Employees";
                    da.Fill(ds, "Employees");
                    da.SelectCommand.CommandText = "SELECT * FROM Doctors";
                    da.Fill(ds, "Doctors");
                    SubReport1 rpt= new SubReport1();
                    SubReport2 rpt1 = new SubReport2();
                    rpt.SetDataSource(ds);
                    rpt1.SetDataSource(ds);
                    CrystalReportViewer1.ReportSource = rpt;
                    CrystalReportViewer1.ReportSource = rpt1;
                    CrystalReportViewer1.RefreshReport();
                }
            }
        }
    }
}