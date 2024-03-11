using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114L
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitClick(object sender, EventArgs eventArgs)
        {
            string LastName = LastNIO.Text;
            string FirstName = FirstNIO.Text;
            string Affiliation = AffiliationIO.Text;
            string TelNo = TelNoIO.Text;
            string FaxNo = FaxNoIO.Text;
            string Email = EmailIO.Text;
            string Inquire = InquireIO.Text;
            string Comment = CommentsIO.Text;
            var connectS = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Burgerlight.mdb;Persist Security Info=True");
            connectS.Open();
            string query = "INSERT INTO Inquiry VALUES (@Sender_lastname,@Sender_firstname,@Sender_Affiliation,@Sender_Tel_no,@Sender_Fax_no,@Sender_email,@Inquiry_Type,@Sender_Comments)";
            var command = new OleDbCommand(query, connectS);
            command.Parameters.AddWithValue("@Sender_lastname", LastName);
            command.Parameters.AddWithValue("@Sender_firstname", FirstName);
            command.Parameters.AddWithValue("@Sender_Affiliation", Affiliation);
            command.Parameters.AddWithValue("@Sender_Tel_no", TelNo);
            command.Parameters.AddWithValue("@Sender_Fax_no", FaxNo);
            command.Parameters.AddWithValue("@Sender_email", Email);
            command.Parameters.AddWithValue("@Inquiry_Type", Inquire);
            command.Parameters.AddWithValue("@Sender_Comments", Comment);

            LastNIO.Text = "";
            FirstNIO.Text = "";
            AffiliationIO.Text = "";
            TelNoIO.Text = "";
            FaxNoIO.Text = "";
            EmailIO.Text = "";
            InquireIO.Text = "";
            CommentsIO.Text = "";
            Success.Text = "    REGISTRATION COMPLETE!   ";
            command.ExecuteNonQuery();
            connectS.Close();
            connectS.Dispose();
        }
        protected void OrderRedirect(object sender, EventArgs e)
        {
            Response.Redirect("ProductOrder.aspx");
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}