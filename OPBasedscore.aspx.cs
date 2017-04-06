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

public partial class OPBasedscore : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=true");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd4 = new SqlCommand("select id from Registration where uid='" + Session["uid"].ToString() + "'", con);
        SqlDataReader dr;
        dr = cmd4.ExecuteReader();

        if (dr.Read())
        {
            
            Session["sids1"] = dr[0].ToString();
            dr.Close();
        }
        dr.Close();
        SqlCommand cmd1 = new SqlCommand("select count(*) from opbasedscore", con);
       int i;
       
        i = Convert.ToInt16(cmd1.ExecuteScalar());
        Page page = HttpContext.Current.CurrentHandler as Page;
        page.ClientScript.RegisterStartupScript(typeof(Page), "test", "<script type='text/javascript'>timeCalc(" + i + ");</script>");
        calculateScore( i);
        Label2.Text = i.ToString();
        SqlCommand cmd2 = new SqlCommand("insert into allstsmarks values(" + Session["sids"].ToString() + ",'" + Label2.Text + "')", con);
        cmd2.ExecuteNonQuery();
        SqlCommand cmd = new SqlCommand("delete from stuawsops", con);
        cmd.ExecuteNonQuery();
    }
    public void calculateScore(int i)
    {
        
       
            

        
    }
}
