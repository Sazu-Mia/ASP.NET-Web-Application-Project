using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace HospitalManagementProjects.App_Code
{
    public class EmployeeRepo
    {
        SqlConnection con;
        public EmployeeRepo()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalDb"].ConnectionString);
        }
        public IList<Employee> Get()
        {

            using (SqlDataAdapter da = new SqlDataAdapter("SELECT Employees.EmployeeId, Employees.EmployeeName, Employees.JoinningDate, Employees.EmpType, Employees.Address, Employees.Salary, Employees.EmpImage, Employees.DepartmentId, Departments.DepartmentName FROM Employees INNER JOIN Departments ON Employees.DepartmentId = Departments.DepartmentId", con))
            {
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt.AsEnumerable()
                     .Select(r => new Employee
                     {
                         EmployeeId = r.Field<int>("EmployeeId"),
                         EmployeeName = r.Field<string>("EmployeeName"),
                         JoinningDate = r.Field<DateTime>("JoinningDate"),
                         EmpType = r.Field<string>("EmpType"),
                         Address = r.Field<string>("Address"),
                         Salary = r.Field<decimal>("Salary"),
                         EmpImage= r.Field<string>("EmpImage"),
                         DepartmentId = r.Field<int>("DepartmentId"),
                         DepartmentName = r.Field<string>("DepartmentName")
                         
                     })
                     .ToList();

            }

        }
        public void Insert(Employee e)
        {
            using (SqlCommand cmd = new SqlCommand(@"INSERT INTO Employees (Employees.EmployeeName, Employees.JoinningDate, Employees.EmpType, Employees.Address, Employees.Salary, Employees.EmpImage, Employees.DepartmentId) VALUES 
            (@n, @d, @t, @a, @s, @p, @dn)", con))
            {
                cmd.Parameters.AddWithValue("@n", e.EmployeeName);
                cmd.Parameters.AddWithValue("@d", e.JoinningDate);
                cmd.Parameters.AddWithValue("@t", e.EmpType);
                cmd.Parameters.AddWithValue("@a", e.Address);
                cmd.Parameters.AddWithValue("@s", e.Salary);
                cmd.Parameters.AddWithValue("@p", e.EmpImage);
                cmd.Parameters.AddWithValue("@dn", e.DepartmentId);
                //cmd.Parameters.Add(new SqlParameter("@p", typeof(string)) { Value= e.EmpImage , Size=50});
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        public void Update(Employee e)
        {
            using (SqlCommand cmd = new SqlCommand("UPDATE Employees SET EmployeeName=@n, JoinningDate=@d, EmpType=@t, Address=@a, Salary=@s, EmpImage=@p, DepartmentId=@dn Where EmployeeId=@i", con))
            {
                cmd.Parameters.AddWithValue("@n", e.EmployeeName);
                cmd.Parameters.AddWithValue("@d", e.JoinningDate);
                cmd.Parameters.AddWithValue("@t", e.EmpType);
                cmd.Parameters.AddWithValue("@a", e.Address);
                cmd.Parameters.AddWithValue("@s", e.Salary);
                cmd.Parameters.AddWithValue("@p", e.EmpImage);
                cmd.Parameters.AddWithValue("@dn", e.DepartmentId);
                cmd.Parameters.AddWithValue("@i", e.EmployeeId);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        public void Delete(Employee e)
        {
            using (SqlCommand cmd = new SqlCommand("DELETE Employees Where EmployeeId=@i", con))
            {

                cmd.Parameters.AddWithValue("@i", e.EmployeeId);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}