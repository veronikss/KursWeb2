using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace KursWeb
{

    public partial class Contact : System.Web.UI.Page
    {
        protected void ButtonReg_Click(object sender, EventArgs e)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["Conf"].ConnectionString;
            SqlParameter param;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO Bruker (Username,Password) " + "VALUES (@username,@password)", conn);
                cmd.CommandType = CommandType.Text;

                param = new SqlParameter("@username", SqlDbType.NVarChar);
                param.Value = TextBoxRegEmail.Text;
                cmd.Parameters.Add(param);


                param = new SqlParameter("@password", SqlDbType.NVarChar);
                param.Value = TextBoxPassord.Text;
                cmd.Parameters.Add(param);

                cmd.ExecuteNonQuery();
                conn.Close();
            }
            PanelReg.Visible = false;
            LabelConf.Visible = true;
        }
    }
}

