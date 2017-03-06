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
public partial class questions : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        //query to select all questions ad it options from the table and fill in the table
        SqlDataAdapter da = new SqlDataAdapter("select * from Questions where id <= 10", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "questions");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
}
