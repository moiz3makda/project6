using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class download : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void dld_Click(object sender, EventArgs e)

    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\Amta\job_portal\job_portal.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        con.Open();
        int id = int.Parse(Request.QueryString["id"].ToString());
        string qry = "select resume from user_reg where id=" + id;
        //SqlDataReader dr = new  SqlDataReader();
        
       
       
        SqlCommand cmd = new SqlCommand(qry, con);
       string name= cmd.ExecuteScalar().ToString();

        string filepath = "jobportal/File/" + name;
        Response.AddHeader("content-Disposition", "attachment;filename=\"" + filepath + "\"");
        //Response.TransmitFile(Server.MapPath(filepath));
        Response.End();
        con.Close();

    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company_Login.aspx");
    }
}