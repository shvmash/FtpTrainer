using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace AdoEmpSearchSp
{
    class Program
    {
        static void Main(string[] args)
        {
            int empno;
            Console.WriteLine("Enter Employ No    ");
            empno = Convert.ToInt32(Console.ReadLine());
            SqlConnection conn = new SqlConnection("integrated security=true;data source=DESKTOP-EVNJH9Q\\SQLEXPRESS;initial catalog=sqlpractice");
            conn.Open();
            SqlCommand cmd = new SqlCommand("prcEmpSearch", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@empno", empno);
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                Console.WriteLine("Name   " +dr["nam"]);
                Console.WriteLine("Department  "+dr["dept"]);
                Console.WriteLine("Designation " +dr["desig"]);
                Console.WriteLine("Basic  " +dr["basic"]);
            }
            else
            {
                Console.WriteLine("*** Record Not Found ***");
            }
        }
    }
}
