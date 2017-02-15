using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;
using System.Data.Sql;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void button1_Click(object sender, EventArgs e)
    {
        if (ListBox1.SelectedValue == "Student")
        {
            string constr = @"Data Source=DESKTOP-7A60SOS;Initial Catalog=VirtualExam;User ID=sa;Password=Anj2";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Student where ID =@ID and Password=@Password", con);
            cmd.Parameters.AddWithValue("@ID", ID.Text);
            cmd.Parameters.AddWithValue("@Password", PASSWORD.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                Response.Redirect("Student.aspx");
                
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            }
        }
        else if (ListBox1.SelectedValue == "Faculty")
        {
            string constr = @"Data Source=DESKTOP-7A60SOS;Initial Catalog=VirtualExam;User ID=sa;Password=Anj2";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Faculty where ID =@ID and Password=@Password", con);
            cmd.Parameters.AddWithValue("@ID", ID.Text);
            cmd.Parameters.AddWithValue("@Password", PASSWORD.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                Response.Redirect("Faculty.aspx");

            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            }

        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Select User Type')</script>");
        }
    }
    public void button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}