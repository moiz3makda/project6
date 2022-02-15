using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class company_register_submit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\Amta\job_portal\job_portal.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
        SqlConnection con = new SqlConnection(str);
        con.Open();
        string qry = "insert into company_register values('" + txtunm.Text + "','" + txtpwd.Text + "')";
        SqlCommand cmd = new SqlCommand(qry, con);
        int i=cmd.ExecuteNonQuery();
        con.Close();
        if (i == 0)
        {
            Response.Write("error");
        }
        else
        {
        }
        Response.Redirect("~/User_List.aspx");
    }
}