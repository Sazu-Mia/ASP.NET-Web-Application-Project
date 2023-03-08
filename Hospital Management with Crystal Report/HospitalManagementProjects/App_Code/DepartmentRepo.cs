using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace HospitalManagementProjects.App_Code
{
    public class DepartmentRepo
    {
        SqlConnection con;
        public DepartmentRepo()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalDb"].ConnectionString);
        }
        public IList<Department> Get()
        {

            using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Departments", con))
            {
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt.AsEnumerable()
                     .Select(r => new Department
                     {
                         DepartmentId = r.Field<int>("DepartmentId"),
                         DepartmentName = r.Field<string>("DepartmentName"),
                         DepartmentHead = r.Field<string>("DepartmentHead")
                        
                     })
                     .ToList();

            }

        }
        //public void Insert(Department d)
        //{
        //    using (SqlCommand cmd = new SqlCommand("INSERT INTO Departments VALUES (@n, @h)", con))
        //    {
        //        cmd.Parameters.AddWithValue("@n", d.DepartmentName);
        //        cmd.Parameters.AddWithValue("@h", d.DepartmentHead);
                
        //        con.Open();
        //        cmd.ExecuteNonQuery();
        //        con.Close();
        //    }
        //}
    }
}