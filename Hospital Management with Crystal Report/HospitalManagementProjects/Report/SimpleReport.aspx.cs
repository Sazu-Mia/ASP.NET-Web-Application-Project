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
    public partial class SimpleReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalDb"].ConnectionString))
            {
                using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Employees", con))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds, "Employees");
                    da.SelectCommand.CommandText = "SELECT * FROM Departments";
                    da.Fill(ds, "Departments");
                    CrystalReport1 rpt = new CrystalReport1();
                    rpt.SetDataSource(ds);
                    CrystalReportViewer1.ReportSource = rpt;
                    CrystalReportViewer1.RefreshReport();
                }
            }
        }
    }
}