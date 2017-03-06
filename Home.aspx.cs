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

public partial class Home : System.Web.UI.Page
{
    //databse connection
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       // Validation check:The user enters user ID,Password which is validated with the database values,If the values match,Then the user is authenticated and taken to the respective account.
        if (DropDownList1.SelectedItem.Text == "Student")
            Session["uid"] = TextBox1.Text;
            



        Session["desg"] = DropDownList1.SelectedItem.Text;
        string s1 = "select * from Registration where utype='" + DropDownList1.SelectedItem.Text + "' and uid='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "'";
        //if (DropDownList1.SelectedItem.Text == "Student")
        //{
        //    Session["uid"] = TextBox1.Text;
        //}
        SqlCommand cmd = new SqlCommand(s1, con);
        SqlDataReader da;
        da = cmd.ExecuteReader();
        if (da.Read())
            Response.Redirect("Toproceed.aspx");//successfull authentication
        else
            Response.Write("not authenticated");//invalid details were provided
    }
    //links to other pages
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgotPwd.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePwd.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
}
