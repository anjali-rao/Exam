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
public partial class qustions1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    
        string ss;
        int x = GridView1.Rows.Count;
        foreach (GridViewRow r in GridView1.Rows)
        {
            ss = "";
            Label l1;
            l1 = (Label)r.FindControl("la2");
            RadioButton rad1;
            rad1 = (RadioButton)r.FindControl("ra1");
            RadioButton kad1;
            kad1 = (RadioButton)r.FindControl("ra2");
            if ((rad1.Checked == true) || (kad1.Checked == true))
            {



                if (rad1.Checked)
                    ss = "True";
                else
                    ss = "False";

            }

            Session["sqn"] = ss;
            SqlCommand cmd1 = new SqlCommand("insert into studentAnswers(id,aw) values(" + l1.Text + ",'" + Session["sqn"] + "')", con);
            cmd1.ExecuteNonQuery();
            //calculatemarks();

        }
    }
}
