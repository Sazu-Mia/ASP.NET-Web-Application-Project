using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace HospitalManagementProjects.App_Code
{
    public class HospitalRepo
    {
        SqlConnection con;
        public HospitalRepo()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalDb"].ConnectionString);
        }
        public IList<Hospital> Get()
        {

            using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Hospitals", con))
            {
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt.AsEnumerable()
                     .Select(r => new Hospital
                     {
                         HospitalId = r.Field<int>("HospitalId"),
                         HospitalName = r.Field<string>("HospitalName"),
                         Aria = r.Field<string>("Aria"),
                         Country = r.Field<string>("Country"),

                     })
                     .ToList();

            }

        }
        public void Insert(Hospital h)
        {
            using(SqlCommand cmd = new SqlCommand("INSERT INTO Hospitals VALUES (@n, @a, @c)", con))
            {
                cmd.Parameters.AddWithValue("@n", h.HospitalName);
                cmd.Parameters.AddWithValue("@a", h.Aria);
                cmd.Parameters.AddWithValue("@c", h.Country);   
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        public void Update(Hospital h)
        {
            using (SqlCommand cmd = new SqlCommand("UPDATE Hospitals SET HospitalName=@n, Aria=@a, Country=@c Where HospitalId=@i", con))
            {
                cmd.Parameters.AddWithValue("@n", h.HospitalName);
                cmd.Parameters.AddWithValue("@a", h.Aria);
                cmd.Parameters.AddWithValue("@c", h.Country);
                cmd.Parameters.AddWithValue("@i", h.HospitalId);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        public void Delete(Hospital h)
        {
            using (SqlCommand cmd = new SqlCommand("DELETE Hospitals Where HospitalId=@i", con))
            {

                cmd.Parameters.AddWithValue("@i", h.HospitalId);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        public int HospitalCount()
        {
            using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Hospitals", con))
            {
                con.Open();
                int n = (int)cmd.ExecuteScalar();
                con.Close();
                return n;
            }
        }
    }
}