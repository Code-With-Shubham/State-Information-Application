using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AboutYou : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection scon;
        SqlDataAdapter sda;
        SqlCommand scmd;
        DataSet ds;
        string id = Convert.ToString(Session["userid"]);
        if (id != "na")
        {

            DBConnector dbc = new DBConnector();
            scon = dbc.GetDBConnection();
            scmd = new SqlCommand("select Name,Age,Gender,Mobile,Email from users where Uid=@a;", scon);
            scmd.Parameters.AddWithValue("a", id);
            sda = new SqlDataAdapter(scmd);
            ds = new DataSet();
            sda.Fill(ds, "us");
            GridView1.DataSource = ds;
            GridView1.DataBind();


        }
        else
            Label1.Text = "Invalid session...please login";
    }
}