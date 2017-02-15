using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Configuration;


public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void btn_reg(object sender, EventArgs e)
    {
        if (ListBox1.SelectedValue == "Student")
        {

            string constr = @"Data Source=DESKTOP-7A60SOS;Initial Catalog=VirtualExam;User ID=sa;Password=Anj2";
            int userId = 0;

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Insert_User"))
                {
                    cmd.Connection = con;
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {


                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@ID", regID.Text.Trim());
                        cmd.Parameters.AddWithValue("@Name", regname.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", regpwd.Text.Trim());
                        cmd.Parameters.AddWithValue("@Email", Email.Text.Trim());
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                        con.Close();
                    }
                }
                string message = string.Empty;
                switch (userId)
                {
                    case -1:
                        message = "Username already exists.\\nPlease choose a different username.";
                        break;
                    case -2:
                        message = "Supplied email address has already been used.";
                        break;
                    case -3:
                        message = "Registration successful";
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');window.open('Default.aspx')", true);
                        break;
                    default:
                        message = "Registration unsuccessful.";
                        break;
                }
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            }
        }


        else if (ListBox1.SelectedValue == "Faculty")
        {

            string constr = @"Data Source=DESKTOP-7A60SOS;Initial Catalog=VirtualExam;User ID=sa;Password=Anj2";
            int userId = 0;

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Insert_faculty"))
                {
                    cmd.Connection = con;
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {


                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@ID", regID.Text.Trim());
                        cmd.Parameters.AddWithValue("@Name", regname.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", regpwd.Text.Trim());
                        cmd.Parameters.AddWithValue("@Email", Email.Text.Trim());
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                        con.Close();
                    }
                }
                string message = string.Empty;
                switch (userId)
                {
                    case -1:
                        message = "Username already exists.\\nPlease choose a different username.";
                        break;
                    case -2:
                        message = "Supplied email address has already been used.";
                        break;
                    case -3:
                        message = "Registration successful.";
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');window.open('Default.aspx')", true);
                        break;
                    default:
                        message = "Registration unsuccessful.";
                        break;
                }
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);

            }
        }

        else 
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Select User Type')</script>");
        }

}
    }
