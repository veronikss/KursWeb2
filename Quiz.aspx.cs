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
    public partial class Quiz : System.Web.UI.Page
    {
        string submittedanswer;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=192.168.50.50;Initial Catalog=VeronikaKursBrukere;User ID=skole;Password=skole123");
            SqlCommand insertQuery = new SqlCommand(@"INSERT INTO [dbo].[SubmittedAnswer]
           ([SubAnswer])
     VALUES
           (" + submittedanswer+")", con);
           con.Open();
            insertQuery.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('your answer is submitted successfully')</script>");
            SqlCommand extractQuery = new SqlCommand("SELECT SubmittedAnswer.SubAnswer, Answer.answer" +
                "From Answer INNER JOIN (SELECT TOP 1 SubAnswer FROM SubmittedAnswer OPDER BY ID DESC)" +
                "AS submittedanswer ON SubmittedAnswer.SubAnswer=Answer.answer");
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            submittedanswer = "88";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            submittedanswer = "eehur";
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            submittedanswer = "sjhjf";
        }

        protected void btnChceck_Click(object sender, EventArgs e)
        {

        }
    }
}