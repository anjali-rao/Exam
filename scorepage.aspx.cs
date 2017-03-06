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

public partial class scorepage : System.Web.UI.Page
{
    SqlConnection con=new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        //The current user's calculated score is retrieved from the database. The sesSion User id is used for this purpose
        SqlCommand cmd4 = new SqlCommand("select id from Registration where uid='" + Session["uid"].ToString() + "'", con);
        SqlDataReader dr;
        dr = cmd4.ExecuteReader();

        if (dr.Read())
        {
            Session["sids1"] = dr[0].ToString();
            dr.Close();
        }
        dr.Close();
         
        //Label1.Text = Session["sids1"].ToString();
        
        SqlCommand cmd1 = new SqlCommand("select count(*) from studentScore", con);//select score
        int i;
        i = Convert.ToInt16(cmd1.ExecuteScalar());
        Label2.Text = i.ToString();//display score

        SqlCommand cmd2 = new SqlCommand("insert into allstsmarks values(" + Session["sids1"].ToString() + ",'" + Label2.Text + "')", con);
        cmd2.ExecuteNonQuery();
        SqlCommand cmd = new SqlCommand("delete from studentAnswers", con);//delete answer
        cmd.ExecuteNonQuery();
        
        
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentHome.aspx");
    }
}
