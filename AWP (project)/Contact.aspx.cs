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
    public partial class Contact : Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"D:\\AWP (project)\\AWP (project)\\App_Data\\Database1.mdf\";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                Label1.Text = "";
            }
 
            
        }


        protected void submit_Click(object sender, EventArgs e)
        {
            string query = "INSERT INTO [dbo].[Reachouts] VALUES (@Name, @Email, @Message)";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Name", Name.Text);
            cmd.Parameters.AddWithValue("@Email", email.Text);
            cmd.Parameters.AddWithValue("@Message", message.Text);

            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (i > 0)
            {
                Label1.Text = "we will get in touch with you soon!";
                Name.Text = "";
                email.Text = "";
                message.Text = "";
            }
            else
            {
                Label1.Text = "sorry there is a problem ";
            }
            
        }
    }
}