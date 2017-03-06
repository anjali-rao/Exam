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
using System.Web.SessionState;

public partial class TFBasedQp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            //int min = 1;
            //SqlCommand cmd1 = new SqlCommand("select count(*) from questions", con);

            //int max;
            //max = Convert.ToInt16(cmd1.ExecuteScalar());
            //Random r = new Random();

            //int a = (r.Next() % (max - min + 1)) + min;
            //int b = (r.Next() % (max - min + 1)) + min;
            //int c = (r.Next() % (max - min + 1)) + min;
            //int d = (r.Next() % (max - min + 1)) + min;

            //int f = (r.Next() % (max - min + 1)) + min;
            //int g = (r.Next() % (max - min + 1)) + min;
            //int i = (r.Next() % (max - min + 1)) + min;

            SqlDataAdapter Da = new SqlDataAdapter("select id, que from questions where id >= 1 and id <= 10 Order By newid()", con);
            DataSet ds = new DataSet();//select 10 questions from database
            Da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

        }
    }

    //public void check()
    //{
    //    int min = 1;
    //    SqlCommand cmd1 = new SqlCommand("select count(*) from questions", con);

    //    int max;
    //    max = Convert.ToInt16(cmd1.ExecuteScalar());
    //    Random r = new Random();
        
    //    int a=(r.Next() % (max - min + 1) )+ min;
    //    int b=(r.Next() % (max - min + 1)) + min;
    //    int c = (r.Next() % (max - min + 1)) + min;
    //    int d= (r.Next() % (max - min + 1)) + min;
        
    //    int e= (r.Next() % (max - min + 1)) + min;
    //    int f= (r.Next() % (max - min + 1)) + min;
    //    int g=( r.Next() % (max - min + 1)) + min;

        
    //}


    
    protected void Button2_Click(object sender, EventArgs e)
    {
        string ss;
      
        int x = GridView1.Rows.Count;
        foreach (GridViewRow r in GridView1.Rows)
        {//record student's selection of option for result calculation
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
            //The responses are inserted into the database
            SqlCommand cmd1 = new SqlCommand("insert into studentAnswers(id,aw) values(" + l1.Text + ",'" + Session["sqn"] + "')", con);
            cmd1.ExecuteNonQuery();
            //calculatemarks();

        }
        Response.Redirect("scorepage.aspx");

    }
    
}
