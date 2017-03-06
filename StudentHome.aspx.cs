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

public partial class StudentHome : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        //select the current session's user id to view the current student's details
        con.Open();
        SqlCommand cmd=new SqlCommand("select id from Registration where uid='"+Session["uid"].ToString()+"'",con);
        SqlDataReader dr;
         dr=cmd.ExecuteReader();

         if (dr.Read())
         {
             Session["sids"]= dr[0].ToString();
             dr.Close();
         }
             dr.Close();
         

    }
}
