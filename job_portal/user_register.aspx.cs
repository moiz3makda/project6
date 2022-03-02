using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;
using System.Data;
public partial class user_register : System.Web.UI.Page
{

    public String query;
    SqlCommand com;

    string gender;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String filepath = ures.PostedFile.FileName;
        String filename1 = Path.GetFileName(filepath);
        String ext = Path.GetExtension(filename1);
        String type = String.Empty;
        if (ures.HasFile)
        {
            try
            {
                switch (ext)
                {
                    case ".pdf":
                        type = "application/pdf";
                        break;
                }
                if (type != String.Empty)
                {
                    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\Amta\job_portal\job_portal.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
                    con.Open();
                    if(rbMal .Checked ==true)
        {
            gender = "Male";
        }
        else 
        {
           gender = "Female";
        Response.Write("Data Insert Successfully");//
        }
                    Stream fs = ures.PostedFile.InputStream;
                    BinaryReader br = new BinaryReader(fs);
                    Byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    query = "insert into user_reg(name,address,state,city,mobile_no,gender,email_id,date_of_birth,filename,education_status,key_skills,filetype,filedata)" + "values('" + uname.Text + "','" + uadd.Text + "','" + ustat.Text + "','" + uct.Text + "','" + umob.Text + "','" + gender + "','" + umail.Text + "','" + udt.Text + "',@filename,'" + ued.Text + "','" + uskill.Text + "',@filetype,@filedata)";
                    com = new SqlCommand(query, con);
                    com.Parameters.Add("@filename", SqlDbType.VarChar).Value = filename1;
                    com.Parameters.Add("@filetype", SqlDbType.VarChar).Value = type;
                    com.Parameters.Add("@filedata", SqlDbType.Binary).Value = bytes;
                    com.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("~/user_register_submit.aspx");
                }
            }
            catch (Exception ex)
            {
                Label11.Text = "Error : " + ex.Message.ToString();
            }
        }
        //string fnm = MapPath("file/" + ures.FileName);      @filename,@filetype,@filedata
        //string x = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\Amta\job_portal\job_portal.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
        //SqlConnection con = new SqlConnection(x);
        //con.Open();
        //if(rbMal .Checked ==true)
        //{
        //    gender = "Male";
        //}
        //else 
        //{
        //   gender = "Female";
        //Response.Write("Data Insert Successfully");//
        //}
        //string qry = "insert into user values(" + uname.Text + "," + uadd.Text + "," + ustat.Text + "," + uct.Text + "," + umob.Text + ","+gender+"," + umail.Text + "," + udt.Text + "," + ures.FileName + "," + ued.SelectedValue + "," + uskill.Text + ")";
        //string qry = "insert into user_reg(name,address,state,city,mobile_no,gender,email_id,date_of_birth,education_status,key_skills)"+
        //    " values('" + uname.Text + "','" + uadd.Text + "','" + ustat.Text + "','" + uct.Text + "','" + umob.Text + "','" + gender + "','" + umail.Text + "','" + udt.Text + "','" + ued.Text + "','" + uskill.Text + "')";
        //SqlCommand cmd = new SqlCommand(qry, con);
        //cmd.ExecuteNonQuery();
        //ures.SaveAs(fnm);
        
        //Response.Redirect("~/subrem.aspx");
    }

   
}
   
