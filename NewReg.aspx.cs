using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class NewReg : System.Web.UI.Page
{

    protected void Submit(object sender, EventArgs e)
    {
        string Uid, Psw, Name, Type, Gender = "", Mobile, Email, SQ, Answer;
        int Age;
        try
        {
            SqlConnection scon;
            SqlCommand scmd;

            Uid = TextBox1.Text;
            Psw = TextBox2.Text;
            Name = TextBox3.Text;
            Age = Convert.ToInt32(TextBox4.Text);
            if (RadioButton1.Checked)
                Gender = "male";
            else
                Gender = "female";
            Mobile = TextBox5.Text;
            Email = TextBox6.Text;
            SQ = DropDownList1.SelectedValue;
            Answer = TextBox7.Text;

            DBConnector dbc = new DBConnector();
            scon = dbc.GetDBConnection();
            scmd = new SqlCommand("insert into users values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j);", scon);
            scon.Open();
            scmd.Parameters.AddWithValue("@a", Uid);
            scmd.Parameters.AddWithValue("@b", Psw);
            scmd.Parameters.AddWithValue("@c", Name);
            scmd.Parameters.AddWithValue("@d", "customer");
            scmd.Parameters.AddWithValue("@e", Age);
            scmd.Parameters.AddWithValue("@f", Gender);
            scmd.Parameters.AddWithValue("@g", Mobile);
            scmd.Parameters.AddWithValue("@h", Email);
            scmd.Parameters.AddWithValue("@i", SQ);
            scmd.Parameters.AddWithValue("@j", Answer);
            int cnt = scmd.ExecuteNonQuery();
            if (cnt > 0)
                Response.Redirect("RegisterSucc.aspx");
            else
                Label1.Text = "Sorry registration failed..";
            scon.Close();

        }
        catch (Exception ex)
        {
            Label1.Text = "Failed...."; 
        }
      
    }
}