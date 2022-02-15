using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class company_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\job_portal.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
        SqlConnection con = new SqlConnection(str);
        con.Open();
        string qry = "insert into company values('" + cname.Text + "','" + ctype.Text + "','" + cstat.Text + "','" + cct.Text + "','" + cadd.Text + "','" + cmob.Text + "','" + cmail.Text + "','" + cdisc.Text + "')";
        SqlCommand cmd = new SqlCommand(qry, con);
        int i = cmd.ExecuteNonQuery();
        con.Close();
        if (i == 0)
            Response.Write("Error");
        else
            Response.Redirect("~/company_register_submit.aspx");
    }
}