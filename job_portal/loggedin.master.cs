using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class loggedin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\Amta\job_portal\job_portal.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
        SqlConnection con = new SqlConnection(str);
        con.Open();
        string qry = "insert into feedback values('" + name.Text + "','" + feedback.Text + "')";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        con.Close();
        name.Text = "";
        feedback.Text = "";
        Response.Write("<script language='javascript'>alert('Thanx for your feedback')</script>");
    }
}
