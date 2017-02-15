using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;

public partial class Create : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
protected void btn_sub(object sender, EventArgs e)
{
        string constr = @"Data Source=DESKTOP-7A60SOS;Initial Catalog=VirtualExam;User ID=sa;Password=Anj2";
        int Id = 0;

        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("Insert_Subject"))
            {
                cmd.Connection = con;
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {


                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@SubjectID", EID.Text.Trim());
                    cmd.Parameters.AddWithValue("@Name", ESubject.Text.Trim());
                    cmd.Parameters.AddWithValue("@Duration", Etime.Text.Trim());
                    cmd.Parameters.AddWithValue("@Qno", Eobj.Text.Trim());
                    cmd.Parameters.AddWithValue("@Qreq", objR.Text.Trim());
                    cmd.Parameters.AddWithValue("@Marks", Total.Text.Trim());
                    con.Open();
                    Id = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                    con.Close();
                }
            }
            string message = string.Empty;
            switch (Id)
            {
                case -1:
                    message = "Exam exists.";
                    break;
                case -2:
                    message = "Exam creation successful.";
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');window.open('Questions.aspx')", true);
                    break;
               
                    
                default:
                    message = " unsuccessful.";
                    break;
            }
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);

        }

    }
}