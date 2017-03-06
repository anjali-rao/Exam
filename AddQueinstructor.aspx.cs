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

public partial class AddQueinstructor : System.Web.UI.Page
{
    //database connection
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
       
    }    
      protected void Button1_Click1(object sender, EventArgs e)
    {
        //Query to add Question and Answers into the questions database.
        string s1 = "insert into questions values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
        SqlCommand cmd = new SqlCommand(s1, con);
        cmd.ExecuteNonQuery();
        Label3.Text = " Successfully added";//successful addition
        SqlDataAdapter da = new SqlDataAdapter("select * from questions", con); //Display existing questions on the screen by gridview
        DataSet ds = new DataSet();
        da.Fill(ds, "questions");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
   
    } 
 
    protected void Button2_Click(object sender, EventArgs e)
    {
        //reset button
        TextBox1.Text = "";
        TextBox2.Text = "";
        
    }

   
}
