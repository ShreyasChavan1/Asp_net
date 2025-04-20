using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;

namespace AWP__project_
{

    public partial class login_page : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"D:\\AWP (project)\\AWP (project)\\App_Data\\Database1.mdf\";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)  
            {
                if (Session["username"] != null)
                {
                    Response.Redirect("Admin.aspx");
                }
                
            }

        }

        protected void login_Click(object sender, EventArgs e)
        {

            if (user.Text != "" && pass.Text != "")
            {

                if (ValidateUser(user.Text, pass.Text))
                {

                    Session["username"] = user.Text;
                    user.Text = "";
                    pass.Text = "";
                    Response.Redirect("Admin.aspx");
                    Label1.Text = "";
                }
                else
                {
                    Label1.Text = "Please enter correct username or password";
                }


            }
            else
            {
                Label1.Text = "please enter a value ";
            }
           

        }
        private bool ValidateUser(string username, string password)
        {
            con.Open();
            string query = "SELECT COUNT(*) FROM [Admin] WHERE username=@Username AND password=@Password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Username", username);
            cmd.Parameters.AddWithValue("@Password", password);
            int count = (int)cmd.ExecuteScalar();
            return count > 0;
            
        }



      
    }
}