using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace AWP__project_
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"D:\\AWP (project)\\AWP (project)\\App_Data\\Database1.mdf\";Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enter_Click(object sender, EventArgs e)
        {
            string query = "INSERT INTO [dbo].[post] (Title, Content, AuthorName, Image, AuthorDescription, AuthorImage, Category) VALUES (@title, @content, @author, @imgfile, @authdesc, @authfile, @category)";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@title", titleTextBox.Text);
            cmd.Parameters.AddWithValue("@content", content.Text);
            cmd.Parameters.AddWithValue("@author", auth.Text);
            cmd.Parameters.AddWithValue("@imgfile", author3.Text);
            cmd.Parameters.AddWithValue("@authdesc", authdesc.Text);
            cmd.Parameters.AddWithValue("@authfile", author5.Text);
            cmd.Parameters.AddWithValue("@category", cateogory.Text);

            con.Open();
            int i = cmd.ExecuteNonQuery();


            if (i > 0)
            {
                titleTextBox.Text = "";
                content.Text = "";
                auth.Text = "";
                author3.Text = "";
                authdesc.Text = "";
                author5.Text = "";
                author3.Text = "inserted successfully!";



            }
            else
            {
                Label1.Text = "No records were inserted";
            }
            con.Close();
        }

        protected void fileupload_Click(object sender, EventArgs e)
        {
            if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
            {

                String FileName = System.IO.Path.GetFileName(FileUpload1.FileName);
                String Savelocation = @"D:\AWP (project)\AWP (project)\images\" + FileName;
                FileUpload1.PostedFile.SaveAs(Savelocation);
                author3.Text = "images/" + FileName;

            }
        }

        protected void fileupload3_Click(object sender, EventArgs e)
        {
            if ((FileUpload2.PostedFile != null) && (FileUpload2.PostedFile.ContentLength > 0))
            {

                String FileName = System.IO.Path.GetFileName(FileUpload2.FileName);
                String Savelocation = @"D:\AWP (project)\AWP (project)\images\" + FileName;
                FileUpload2.PostedFile.SaveAs(Savelocation);
                author5.Text = "images/" + FileName;

            }
        }
    }
}