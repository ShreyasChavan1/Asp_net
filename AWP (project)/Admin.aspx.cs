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
    
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"D:\\AWP (project)\\AWP (project)\\App_Data\\Database1.mdf\";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Data.Visible = false;
                
            }
            if (Session["username"] != null)
            {
                Welcome.Text = "Welcome " + Session["username"].ToString()+" !";
            }
            else
            {
                Response.Redirect("login page.aspx");
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void search_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                if (int.TryParse(titletext.Text, out int postid))
                {
                    authortext.Text = "";
                    titletext.Text = "";
                    datasource.SelectParameters.Clear();
                    datasource.SelectCommand = "SELECT * FROM [dbo].[post] WHERE PostId = @PostId";
                    datasource.SelectParameters.Add("PostId", postid.ToString());
                    datasource.DataBind();
                    Data.DataBind();
                    Data.Visible = true;
                }
            }
        }

        protected void allposts_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Data.Visible = true;
                datasource.SelectParameters.Clear();
                datasource.SelectCommand = "SELECT * FROM [post]";
                datasource.DataBind();
                Data.DataBind();
                authortext.Text = "";
                titletext.Text = "";
            }
        }

        protected void byauthor_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Data.Visible = true;
                datasource.SelectParameters.Clear();
                datasource.SelectCommand = "SELECT * FROM [dbo].[post] WHERE AuthorName = @authorname";
                datasource.SelectParameters.Add("AuthorName", authortext.Text);
                datasource.DataBind();
                Data.DataBind();
                authortext.Text = "";
                titletext.Text = "";
            }
        }


        protected void logout_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("login page.aspx");
        }

        protected void authortext_TextChanged(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Data.Visible = true;
                datasource.SelectParameters.Clear();
                datasource.SelectCommand = "SELECT * FROM [dbo].[post] WHERE AuthorName = @authorname";
                datasource.SelectParameters.Add("AuthorName", authortext.Text);
                datasource.DataBind();
                Data.DataBind();
                authortext.Text = "";
                titletext.Text = "";
            }
        }

        protected void titletext_TextChanged(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                if (int.TryParse(titletext.Text, out int postid))
                {
                    authortext.Text = "";
                    titletext.Text = "";
                    datasource.SelectCommand = "SELECT * FROM [dbo].[post] WHERE PostId = @PostId";
                    datasource.SelectParameters.Clear();
                    datasource.SelectParameters.Add("PostId", postid.ToString());
                    datasource.DataBind();
                    Data.DataBind();
                    Data.Visible = true;
                }
            }
        }
    }
}