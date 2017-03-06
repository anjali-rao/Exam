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
public partial class ChangePwd : System.Web.UI.Page
{
    //database connection
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //update table query to change the password using ID.
        string s1 = "update Registration set pwd='" + TextBox3.Text + "',rpwd='"+TextBox3.Text+"' where uid='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "'";
        SqlCommand cmd = new SqlCommand(s1, con);
        cmd.ExecuteNonQuery();
        Response.Write("Successfully changed");
        Panel1.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Reset button
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //Go to home page
        Response.Redirect("Home.aspx");
    }
}
