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

public partial class questionupds : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    public void disp()
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select id,que,aw from questions", con);//select question and answers based on ID from the database
        DataSet ds = new DataSet();
        da.Fill(ds, "questions");
        GridView1.DataSource = ds.Tables[0];//display questions
        GridView1.DataBind();
        con.Close();
    }



    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;//edit the data-the instuctor can change the questions
        disp();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        disp();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox bugid= (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];
        TextBox bugname= (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
        TextBox bugaw = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];

        string bugi = bugid.Text;
        string bugn = bugname.Text;
        string buga = bugaw.Text;
        //the modified data is updated in the questions database with values given by the user . This is done using the question ID
        string stat = "update questions set que='" + bugn + "',aw='"+buga+"'where id='" + bugi + "'";
        SqlCommand cmd2 = new SqlCommand(stat, con);
        con.Open();
        int i = cmd2.ExecuteNonQuery();
        if (i > 0)
            Response.Write("changed");//successfull updation
        else
            Response.Write("not changed");//unsuccessful
        
        con.Close();
        disp();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        disp();
    }
   
}
