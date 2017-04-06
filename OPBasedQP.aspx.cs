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
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=true");
   
    protected void Page_Load(object sender, EventArgs e)
    {
        string testcode = Session["TId"].ToString();
      
        if (!IsPostBack)
        {
            con.Open();
            int i = 10;
            if (!SM1.IsInAsyncPostBack)
            Session["timeout"] = DateTime.Now.AddMinutes(i).ToString();
            //select random ids and select top 10 from the database.
            SqlDataAdapter Da = new SqlDataAdapter("select top 10 QId,Question,OptionA,OptionB,OptionC,OptionD from tblQuestions1234 where TId='" + testcode + "' Order By newid()", con);
            DataSet ds = new DataSet();
            Da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            con.Close();

        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        string ss;
            int x = GridView1.Rows.Count;
        
        foreach (GridViewRow r in GridView1.Rows)
            {
            //to view the selected option by the user and store the student answers in database to calculate score.
                ss = "";
                Label l1;
                l1 = (Label)r.FindControl("la2");
                RadioButton rad1;
                rad1 = (RadioButton)r.FindControl("ra1");
                RadioButton rad2;
                rad2 = (RadioButton)r.FindControl("ra2");
                RadioButton rad3;
                rad3 = (RadioButton)r.FindControl("ra3");
                RadioButton rad4;
                rad4 = (RadioButton)r.FindControl("ra4");
                if ((rad1.Checked == true) || (rad2.Checked == true) || (rad3.Checked == true) || (rad4.Checked == true))
                {

                    if (rad1.Checked == true)
                        ss = "A";
                    else if (rad2.Checked == true)
                        ss = "B";
                    else if (rad3.Checked == true)
                        ss = "C";
                    else
                        ss ="D";
                }
                Session["sqn"] = ss;
                SqlCommand cmd1 = new SqlCommand("insert into stuawsops values(" + l1.Text + ",'" + Session["sqn"] + "')", con);
                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                //calculatemarks();            
        }
       
            Response.Redirect("OPBasedscore.aspx");

    }
    
    protected void timer1_tick(object sender, EventArgs e)
    {
        //timer algorithm: subtract the current mins and secs as time passes. 
        //The seconds are reduced and as seconds are 0, the min is reduced.

        if (0 > DateTime.Compare(DateTime.Now, DateTime.Parse(Session["timeout"].ToString())))
        {
          
            lblTimer.Text = string.Format("Time Left: 00:{0}:{1}", 
                ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).TotalMinutes).ToString(),
                ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).Seconds).ToString());
        }
        else
        {
            
         
            Response.Redirect("OPBasedscore.aspx");

        }
      
    }
}
