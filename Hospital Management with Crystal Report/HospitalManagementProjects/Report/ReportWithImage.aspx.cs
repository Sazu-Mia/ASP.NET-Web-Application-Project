using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagementProjects.Report
{
    public partial class ReportWithImage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalDb"].ConnectionString))
            {
                using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Employees", con))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds, "Employees1");
                    ds.Tables["Employees1"].Columns.Add(new DataColumn("image", typeof(System.Byte[])));
                    for (var i = 0; i < ds.Tables["Employees1"].Rows.Count; i++)
                    {
                        ds.Tables["Employees1"].Rows[i]["image"] = File.ReadAllBytes(Path.Combine(Server.MapPath(@"~\Uploads"), ds.Tables["Employees1"].Rows[i]["EmpImage"].ToString()));
                    }
                    ReportWithImage rpt = new ReportWithImage();
                    rpt.SetDataSource(ds);
                    this.CrystalReportViewer3.ReportSource = rpt;
                    this.CrystalReportViewer3.RefreshReport();
                }
            }
        }
    }
}