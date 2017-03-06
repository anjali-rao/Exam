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

public partial class RegAck : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        string s1 = "select id from Registration where uid='"+Session["sid"]+"'";
        //select id from the registration table and match with session ID to give successfull registration message
        SqlCommand cmd = new SqlCommand(s1, con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label2.Text = dr[0].ToString();
            dr.Close();
        }

    }
    //protected void Button2_Click(object sender, EventArgs e)
    //{
    //    Session["desg"] = DropDownList1.SelectedItem.Text;
    //    string s1 = "select * from Registration where utype='" + DropDownList1.SelectedItem.Text + "' and uid='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "'";
        
    //    SqlCommand cmd = new SqlCommand(s1, con);
    //    SqlDataReader da;
    //    da = cmd.ExecuteReader();
    //    if (da.Read())
        
    //        Response.Redirect("Toproceed.aspx");
    //    else
    //        Response.Write("not authenticated");
    //}
    //protected void LinkButton1_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("Register.aspx");
    //}
    //protected void LinkButton2_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("ForgotPwd.aspx");
    //}
    //protected void LinkButton3_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("ChangePwd.aspx");
    //}
}
