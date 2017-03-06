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
public partial class StudentDetailsAdmin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        //select student records from the registration table
        SqlDataAdapter da = new SqlDataAdapter("select * from Registration where utype='Student'", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "registration");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();//fill in the table to be displayed
    }
}
