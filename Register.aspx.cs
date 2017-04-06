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

public partial class Register : System.Web.UI.Page
{
  
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=true");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Check if the user exists using user ID and password
        string s1 = "select uid,pwd from Registration where uid='" + TextBox6.Text + "' and pwd='" + TextBox7.Text + "'";
        SqlCommand cmd = new SqlCommand(s1, con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            Response.Write("<script LANGUAGE='JavaScript' >alert('User Exists')</script>");
           
        }
        else

            {
            //if the user is new, then insert the record in the database. The primary key ID is displayed to user.
            con.Close();
            con.Open();
            Session["sid"] = TextBox6.Text;
        string s2 = "insert into Registration values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox9.Text + "')";
        SqlCommand cmdd = new SqlCommand(s2, con);
        cmdd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("RegAck.aspx");
    }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //clear button to clear all fields

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        DropDownList1.SelectedItem.Text = DropDownList1.Items[0].Text;
        DropDownList2.SelectedItem.Text = DropDownList2.Items[0].Text;
        DropDownList3.SelectedItem.Text = DropDownList3.Items[0].Text;
        RadioButtonList1.Items[0].Selected = false;
        RadioButtonList1.Items[1].Selected = false;
    }

    protected void Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");//redirect to home page
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}
