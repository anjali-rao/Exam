using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Toproceed : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=True");
    string s1 ;
   // s1= Session["desg"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        //string s = Session["uid"].ToString();
        //Label2.Text = s;
        
         
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //redirects to the specific account based on user type-student/instructor/admin
        //based on the login authentication performed.
        string s1 = Session["desg"].ToString();
        if (s1 == "Student")
        {
                 
          Response.Redirect("StudentHome.aspx");
        }
        else if (s1 == "Admin")
            Response.Redirect("AdminHome.aspx");
        else
            Response.Redirect("InstructorHome.aspx");
    }
}
