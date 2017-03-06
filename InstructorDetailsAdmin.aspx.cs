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
public partial class InstructorDetailsAdmin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        //query to selected instructors from register table
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from Registration where utype='Admin'", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "registration");
        GridView1.DataSource = ds.Tables[0];//fill in table to be displayed
        GridView1.DataBind();
    }
}
