using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Home : System.Web.UI.Page
{
      protected void submit(object sender, EventArgs e)
    {
        String Uid, Psw, Type;
        Uid = TextBox1.Text;
        Psw = TextBox2.Text;

        SqlConnection scon;
        SqlCommand scmd;
        SqlDataAdapter sda;
        DataSet ds;

        DBConnector dbc = new DBConnector();
        scon = dbc.GetDBConnection();

        scmd = new SqlCommand("select * from users where Uid=@a and Psw=@b;", scon);
        scmd.Parameters.AddWithValue("a", Uid);
        scmd.Parameters.AddWithValue("b", Psw);
        sda = new SqlDataAdapter(scmd);
        ds = new DataSet();
        sda.Fill(ds, "as");
        int cnt = ds.Tables["as"].Rows.Count;

        if (cnt > 0)
        {
            Session["userid"] = Uid;
            Type = Convert.ToString(ds.Tables["as"].Rows[0]["Type"]);
            Session["typ"] = Type;

            if (Type == "customer")
                Response.Redirect("User.aspx");

            if (Type == "Admin")
                Response.Redirect("Administrator.aspx");
        }

        else
            Response.Redirect("Failure.aspx");
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}