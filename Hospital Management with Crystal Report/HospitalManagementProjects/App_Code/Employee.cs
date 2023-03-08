using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HospitalManagementProjects.App_Code
{
    public class Employee
    {
        public int EmployeeId { get; set; }
        public string EmployeeName { get; set; }
        public DateTime JoinningDate { get; set; }
        public string EmpType { get; set; }
        public string Address { get; set; }
        public decimal Salary { get; set; }
        public int DepartmentId { get; set; }
        public string DepartmentName { get; set; }
        public string EmpImage { get; set; }
    }
}