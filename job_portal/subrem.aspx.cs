using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class subrem : System.Web.UI.Page
{

    public String query;
    SqlCommand com;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String filepath = FileUpload1.PostedFile.FileName;
        String filename1 = Path.GetFileName(filepath);
        String ext = Path.GetExtension(filename1);
        String type = String.Empty;
        if (!FileUpload1.HasFile)
        {
            Label2.Text = "Please Select a File";
        }
        else if(FileUpload1.HasFile)
        {
            try
            {
                switch(ext)
                {
                    case ".pdf":
                        type = "application/pdf";
                        break;
                }
                if(type != String.Empty)
                {
                   SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\Amta\job_portal\job_portal.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
                    con.Open();
                    Stream fs = FileUpload1.PostedFile.InputStream;
                    BinaryReader br = new BinaryReader(fs);
                    Byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    query = "insert into user_reg(filename,filetype,filedata)"+"values(@filename,@filetype,@filedata)";
                    com = new SqlCommand(query,con);
                    com.Parameters.Add("@filename",SqlDbType.VarChar).Value=filename1;
                    com.Parameters.Add("@filetype",SqlDbType.VarChar).Value=type;
                    com.Parameters.Add("@filedata",SqlDbType.Binary).Value=bytes;
                    com.ExecuteNonQuery();
                    Label2.ForeColor = System.Drawing.Color.Green;
                    Label2.Text = "File uploaded Sucessfully";
                    Response.Redirect("~/user_register_submit.aspx");
                }
                else
                {
                    Label2.ForeColor = System.Drawing.Color.Red;
                    Label2.Text = "Select Only PDF Files";
                }
            }
            catch(Exception ex)
            {
                Label2.Text = "Error : "+ex.Message.ToString();
            }
        }
    }
}
