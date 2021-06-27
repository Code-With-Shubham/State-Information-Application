using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class changepsw : System.Web.UI.Page
{

    protected void change(object sender, EventArgs e)
    {
        SqlConnection scon;
        SqlCommand scmd;
        string Uid, curps, newps, confps;
        Uid = Convert.ToString(Session["userid"]);
        curps = TextBox1.Text;
        newps = TextBox2.Text;
        confps = TextBox3.Text;
        if (newps == confps)
        {
            
            DBConnector dbc = new DBConnector();
            scon = dbc.GetDBConnection();
            scon.Open();
            scmd = new SqlCommand("update users set Psw=@p1 where Uid=@p2 and Psw=@p3;", scon);
            scmd.Parameters.AddWithValue("p1", newps);
            scmd.Parameters.AddWithValue("p2", Uid);
            scmd.Parameters.AddWithValue("p3", curps);
            int cnt = scmd.ExecuteNonQuery();
            if (cnt > 0)
            {
               Label1.Text = "password changed successfully";
            }

            else
            {
                Label1.Text = "Failed...!";
            }
            scon.Close();
        }
        else
            
            Label1.Text = "New passwords mismatched";
    }
}