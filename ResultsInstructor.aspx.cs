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
public partial class ResultsInstructor : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        //selects scores of students
        SqlDataAdapter da = new SqlDataAdapter("select * from allstsmarks", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "allstsmarks");
        GridView1.DataSource = ds.Tables[0];//fill scores in the table to be displayed
        GridView1.DataBind();
    }
}
