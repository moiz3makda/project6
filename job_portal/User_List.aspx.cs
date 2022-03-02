using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class User_List : System.Web.UI.Page
{

    public SqlConnection con;
    public SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\Amta\job_portal\job_portal.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select id , name , address , state , city , mobile_no , gender , email_id , date_of_birth , education_status , key_skills from user_reg", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gd1.DataSource = dt;
            con.Close();
            gd1.DataBind();            
        }
    }
    protected void search_Click(object sender, EventArgs e)
    {
        string str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\Amta\job_portal\job_portal.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
        SqlConnection con = new SqlConnection(str);
        con.Open();
        
        SqlCommand cmd = new SqlCommand("select *from user_reg where key_skills='" + search1.Text + "'",con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        
        con.Close();
        gd1.DataSource = dt;
        gd1.DataBind();
        }
    protected void gd1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Response.AddHeader("content-diposition", "attachment;filename=\"" + UniqueFilePathSuffix + "\"");
        //Response.TransmitFile(Server.MapPath(UniqueFilePathSuffix));
        //Response.End();
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\Amta\job_portal\job_portal.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        con.Open();
        cmd = new SqlCommand("select filename,filetype,filedata from user_reg where id=@id", con);
        cmd.Parameters.AddWithValue("id", gd1.SelectedRow.Cells[1].Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ContentType = dr["filetype"].ToString();
            Response.AddHeader("content-disposition", "attachment;filename=" + dr["filename"].ToString());
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.BinaryWrite((byte[])dr["filedata"]);
            Response.End();
        }
    }
}
