using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ForgetPass : System.Web.UI.Page
{

    protected void forget(object sender, EventArgs e)
    {
        string Uid, SQ, Answer, np;
        Uid = TextBox1.Text;
        SQ = DropDownList1.SelectedValue;
        Answer = TextBox2.Text;
        SqlConnection scon;
        SqlCommand scmd;
        SqlDataAdapter sda;
        DataSet ds;
        DBConnector dbc = new DBConnector();
        scon = dbc.GetDBConnection();
        scmd = new SqlCommand("select * from users where uid=@a and SQ=@b and Answer=@c;", scon);
        scmd.Parameters.AddWithValue("a", Uid);
        scmd.Parameters.AddWithValue("b", SQ);
        scmd.Parameters.AddWithValue("c", Answer);
        sda = new SqlDataAdapter(scmd);
        ds = new DataSet();
        sda.Fill(ds, "us");
        if(ds.Tables["us"].Rows.Count > 0)
        {
            np = Uid.Substring(1, 2) + "&" + DateTime.Now.Second + DateTime.Now.Month;
            Response.Write("your new password is " + np);
            scon.Open();
            scmd = new SqlCommand("update users set Psw=@a where Uid=@b;", scon);
            scmd.Parameters.AddWithValue("a", np);
            scmd.Parameters.AddWithValue("b", Uid);
            scmd.ExecuteNonQuery();
            scon.Close();
        }
        else
        {
            Response.Write("User identity failed...");
        }
    }
    }
