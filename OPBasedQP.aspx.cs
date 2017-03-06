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

public partial class OPBasedQP : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            
            //int min = 1;
            //SqlCommand cmd1 = new SqlCommand("select count(*) from qnopts", con);

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

            SqlDataAdapter Da = new SqlDataAdapter("select qid,qn,options1,options2,options3,options4 from qnopts1 where qid>=1 and qid<=10 Order By newid()", con);
            //query to select 10 questions,options from the databse 
            DataSet ds = new DataSet();
            Da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
            string ss;
            int x = GridView1.Rows.Count;
            foreach (GridViewRow r in GridView1.Rows)
            {
            //to record each response given by the user for calculating result
                ss = "";
                Label l1;
                l1 = (Label)r.FindControl("la2");
                RadioButton rad1;
                rad1 = (RadioButton)r.FindControl("ra1");
                RadioButton kad1;
                kad1 = (RadioButton)r.FindControl("ra2");
                if ((rad1.Checked == true) || (kad1.Checked == true))
                {



                    if (rad1.Checked==true)
                        ss = "option1";
                    else
                        ss = "option2";

                }

                Response.Write(ss);
                SqlCommand cmd1 = new SqlCommand("insert into stuawsops values(" + l1.Text + ",'" + ss + "')", con);
                cmd1.ExecuteNonQuery();
                //calculatemarks();

            
        }
        Response.Redirect("OPBasedscore.aspx");


    }
}
