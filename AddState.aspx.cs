using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AddState : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        string snm, cp, lang, area, reg;

        try
        {
            SqlConnection scon;
            SqlCommand scmd;

            snm = TextBox1.Text;
            cp = TextBox2.Text;
            lang = TextBox3.Text;
            area = TextBox4.Text;
            reg = DropDownList1.SelectedValue;

            DBConnector dbc = new DBConnector();
            scon = dbc.GetDBConnection();
            scmd = new SqlCommand("insert into states values(@a,@b,@c,@d,@e);", scon);
            scon.Open();
            scmd.Parameters.AddWithValue("@a", snm);
            scmd.Parameters.AddWithValue("@b", cp);
            scmd.Parameters.AddWithValue("@c", lang);
            scmd.Parameters.AddWithValue("@d", area);
            scmd.Parameters.AddWithValue("@e", reg);
            int cnt = scmd.ExecuteNonQuery();
            if (cnt > 0)
                Label1.Text = "State add succesfully";
            else
                Label1.Text = "Sorry state registration failed..";
            scon.Close();

        }
        catch (Exception ex)
        {
            Label1.Text = "Failed....";
        }
    }
}
