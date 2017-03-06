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

public partial class Register : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7A60SOS;Initial Catalog=OnlineExamination;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //create a new record in the database consister of user details like name,ID ,DOB,Password ,etc.
        Session["sid"] = TextBox6.Text;
        string s1 = "insert into Registration values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+RadioButtonList1.SelectedItem.Text+"','"+DropDownList3.SelectedItem.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"','"+TextBox7.Text+"','"+TextBox8.Text+"','"+DropDownList1.SelectedItem.Text+"','"+DropDownList2.SelectedItem.Text+"','"+TextBox9.Text+"')";
        SqlCommand cmd = new SqlCommand(s1, con);
        cmd.ExecuteNonQuery();
        Response.Redirect("RegAck.aspx");//redirects to acknowledgement page on successfull registration
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //reset button
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        DropDownList1.SelectedItem.Text = DropDownList1.Items[0].Text;
        DropDownList2.SelectedItem.Text = DropDownList2.Items[0].Text;
        DropDownList3.SelectedItem.Text = DropDownList3.Items[0].Text;
        RadioButtonList1.Items[0].Selected = false;
        RadioButtonList1.Items[1].Selected = false;
    }
}
