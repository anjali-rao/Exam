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

public partial class OPBasedaw : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        //the count value is selected from the database.
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select count(*) from opbasedscore", con);
        int i;
        i = Convert.ToInt16(cmd1.ExecuteScalar());




        Label2.Text = i.ToString();
        SqlCommand cmd2 = new SqlCommand("insert into allstsmarks values(" + Session["sids"].ToString() + ",'" + Label2.Text + "')", con);
        cmd2.ExecuteNonQuery();
        SqlCommand cmd = new SqlCommand("delete from stuawsops", con);
        cmd.ExecuteNonQuery();

    }
}
