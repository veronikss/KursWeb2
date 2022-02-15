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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {

            if (UserExist(TextBoxEmail.Text, TextBoxPsw.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(TextBoxEmail.Text, chkPersistCookie.Checked);

               // Response.Redirect("MyPage.aspx");
            }
            else
            {
                lblMsg.Text = "Feil e-post og/eller passord. Vennligst prøv igjen.";
            }
        }

        public bool UserExist(string un,string pw)
        {
            bool exist;
            var connectionString = ConfigurationManager.ConnectionStrings["Conf"].ConnectionString;
            SqlParameter param;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT userid from bruker where username like @un and password like @pw", conn);
                cmd.CommandType = CommandType.Text;

                param = new SqlParameter("@un", SqlDbType.NVarChar);
                param.Value = un;
                cmd.Parameters.Add(param);

                 
                param = new SqlParameter("@pw", SqlDbType.NVarChar);
                param.Value = pw;
                cmd.Parameters.Add(param);

                SqlDataReader reader=cmd.ExecuteReader();
                exist = reader.HasRows;
                reader.Close();
                conn.Close();
            }
            return exist;
        }
    }

}