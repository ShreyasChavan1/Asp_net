using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using System.Data;

namespace AWP__project_
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public string GetShortenedContent(object content)
        {
            
            if (content != null)
            {
                string fullContent = content.ToString();

                
                string[] words = fullContent.Split(' ');

               
                int lengthToTake = Math.Min(30, words.Length);
                string shortenedContent = string.Join(" ", words.Take(lengthToTake));

                return shortenedContent;
            }

            return string.Empty;
        }

    }
}


