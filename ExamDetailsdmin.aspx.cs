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

public partial class ExamDetailsdmin : System.Web.UI.Page
{
    //database connection
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from schedule", con);//selecting all colums from table schedule
        DataSet ds = new DataSet();
        da.Fill(ds, "schedule");//fill table with exam details.
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
}
