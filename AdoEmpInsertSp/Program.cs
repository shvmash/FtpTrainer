using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace AdoEmpInsertSp
{
    class Program
    {
        static void Main(string[] args)
        {
            int empno, basic;
            string name, dept, desig;
            Console.WriteLine("Enter Empno, Name, Dept, Desig and Basic   ");
            empno = Convert.ToInt32(Console.ReadLine());
            name = Console.ReadLine();
            dept = Console.ReadLine();
            desig = Console.ReadLine();
            basic = Convert.ToInt32(Console.ReadLine());

            SqlConnection conn = new SqlConnection("integrated security=true;data source=DESKTOP-EVNJH9Q\\SQLEXPRESS;initial catalog=sqlpractice");
            conn.Open();
            SqlCommand cmd = new SqlCommand("prcEmpInsert", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@empno", empno);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@dept", dept);
            cmd.Parameters.AddWithValue("@desig", desig);
            cmd.Parameters.AddWithValue("@basic", basic);
            cmd.ExecuteNonQuery();
            Console.WriteLine("*** Record Inserted ***");
        }
    }
}
