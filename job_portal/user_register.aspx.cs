using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class user_register : System.Web.UI.Page
{
    string gender;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string fnm = MapPath("file/" + ures.FileName);
        string x = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\job_portal.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
        SqlConnection con = new SqlConnection(x);
        con.Open();
        if(rbMal .Checked ==true)
        {
            gender = "Male";
        }
        else 
        {
            gender = "Female";
        //Response.Write("Data Insert Successfully");
        }
        //string qry = "insert into user values(" + uname.Text + "," + uadd.Text + "," + ustat.Text + "," + uct.Text + "," + umob.Text + ","+gender+"," + umail.Text + "," + udt.Text + "," + ures.FileName + "," + ued.SelectedValue + "," + uskill.Text + ")";
        string qry = "insert into user_reg values('" + uname.Text + "','" + uadd.Text + "','" + ustat.Text + "','" + uct.Text + "','" + umob.Text + "','" + gender + "','" + umail.Text + "','" + udt.Text + "','" + fnm + "','" + ued.Text + "','" + uskill.Text + "')";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        ures.SaveAs(fnm);
        con.Close();
        Response.Redirect("~/user_register_submit.aspx");
    }

   
}
   
