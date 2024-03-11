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
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GrandTotal(object sender, EventArgs e)
        {
            if (TideWave.Checked == true)
            {
                int firstotal = Convert.ToInt32(Quant.Text) * 250;
                GTotal.Text = Convert.ToString(firstotal);
                BurgMeat.Visible = false;
                DarkMush.Visible = false;
                MacBurg.Visible = false;
                CheesBurg.Visible = false;
                AmazingBac.Visible = false;
                LoveMe.Visible = false;

            }
            else if (BurgMeat.Checked == true)
            {
                int firstotal = Convert.ToInt32(Quant.Text) * 500;
                GTotal.Text = Convert.ToString(firstotal);
                TideWave.Visible = false;
                DarkMush.Visible = false;
                MacBurg.Visible = false;
                CheesBurg.Visible = false;
                AmazingBac.Visible = false;
                LoveMe.Visible = false;
            }
            else if (DarkMush.Checked == true)
            {
                int firstotal = Convert.ToInt32(Quant.Text) * 600;
                GTotal.Text = Convert.ToString(firstotal);
                TideWave.Visible = false;
                BurgMeat.Visible = false;
                MacBurg.Visible = false;
                CheesBurg.Visible = false;
                AmazingBac.Visible = false;
                LoveMe.Visible = false;
            }
            else if (MacBurg.Checked == true)
            {
                int firstotal = Convert.ToInt32(Quant.Text) * 200;
                GTotal.Text = Convert.ToString(firstotal);
                TideWave.Visible = false;
                BurgMeat.Visible = false;
                DarkMush.Visible = false;
                CheesBurg.Visible = false;
                AmazingBac.Visible = false;
                LoveMe.Visible = false;
            }
            else if (CheesBurg.Checked == true)
            {
                int firstotal = Convert.ToInt32(Quant.Text) * 150;
                GTotal.Text = Convert.ToString(firstotal);
                TideWave.Visible = false;
                BurgMeat.Visible = false;
                DarkMush.Visible = false;
                MacBurg.Visible = false;
                AmazingBac.Visible = false;
                LoveMe.Visible = false;
            }
            else if (AmazingBac.Checked == true)
            {
                int firstotal = Convert.ToInt32(Quant.Text) * 500;
                GTotal.Text = Convert.ToString(firstotal);
                TideWave.Visible = false;
                BurgMeat.Visible = false;
                DarkMush.Visible = false;
                MacBurg.Visible = false;
                CheesBurg.Visible = false;
                LoveMe.Visible = false;
            }
            else if (LoveMe.Checked == true)
            {
                int firstotal = Convert.ToInt32(Quant.Text) * 600;
                GTotal.Text = Convert.ToString(firstotal);
                TideWave.Visible = false;
                BurgMeat.Visible = false;
                DarkMush.Visible = false;
                MacBurg.Visible = false;
                CheesBurg.Visible = false;
                AmazingBac.Visible = false;

            }

        }
        protected void ShowTotal(object sender, EventArgs e)
        {
            QuantPanel.Visible = true;
        }
        protected void ShowCusInfo(object sender, EventArgs e)
        {
            if (TypeDel.SelectedValue == "Delivery")
            {
                GTotal.Text = Convert.ToString(Convert.ToInt32(GTotal.Text) + 500);
            }
            CustomerInfo.Visible = true;
        }
        protected void SubmitBtn(object sender, EventArgs e)
        {
            int TideWave1 = 0;
            int BurgerMeaty = 0;
            int Darkness = 0;
            int Macaroni = 0;
            int Cheesy = 0;
            int Amazing = 0;
            int Love = 0;
            string LastName = CustLastNIO.Text;
            string FirstName = CustFirstNIO.Text;
            string TelNo = CustTelNoIO.Text;
            string Address = CustAdd.Text;
            string ZIPC = CustZIP.Text;
            string Provi = CustProv.Text;
            string City = CustCity.Text;
            int Total = Convert.ToInt32(GTotal.Text);
            string TypeTrans = Convert.ToString(TypeDel);
            if  (TypeTrans=="PickUp")
            {
                TypeTrans = Convert.ToString(1);
            }
            else
            {
                TypeTrans = Convert.ToString(2);
            }
            if (TideWave.Checked == true)
            {
                 TideWave1 = Convert.ToInt32(Quant.Text);

            }
            else if (BurgMeat.Checked == true)
            {
                BurgerMeaty = Convert.ToInt32(Quant.Text);

            }
            else if (DarkMush.Checked == true)
            {
                Darkness = Convert.ToInt32(Quant.Text);

            }
            else if (MacBurg.Checked == true)
            {
                Macaroni = Convert.ToInt32(Quant.Text);

            }
            else if (CheesBurg.Checked == true)
            {
                Cheesy = Convert.ToInt32(Quant.Text);
            }
            else if (AmazingBac.Checked == true)
            {
                Amazing = Convert.ToInt32(Quant.Text);
            }
            else if (LoveMe.Checked == true)
            {
                Love = Convert.ToInt32(Quant.Text);
            }
            var connectS = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|Burgerlight.mdb;Persist Security Info=True");
            connectS.Open();
            string query = "INSERT INTO Order VALUES (@Cus_lastname,@Cus_firstname,@Cus_Tel_no,@Cus_address,@Cus_zipcode,@Cus_province,@Cus_city,@No_TideWave,@No_BurgerMeaty,@No_Darkness,@No_Macaroni,@No_Cheesy,@No_Amazing,@No_Love,@Type_Trans,@Total_Bill)";
            var command = new OleDbCommand(query, connectS);
            command.Parameters.AddWithValue("@Cus_lastname", LastName);
            command.Parameters.AddWithValue("@Cus_firstname", FirstName);
            command.Parameters.AddWithValue("@Cus_Tel_no", TelNo);
            command.Parameters.AddWithValue("@Cus_address", Address);
            command.Parameters.AddWithValue("@Cus_zipcode",ZIPC);
            command.Parameters.AddWithValue("@Cus_province", Provi);
            command.Parameters.AddWithValue("@Cus_city",City);
            command.Parameters.AddWithValue("@No_TideWave", TideWave1);
            command.Parameters.AddWithValue("@No_BurgerMeaty",BurgerMeaty);
            command.Parameters.AddWithValue("@No_Darkness",Darkness);
            command.Parameters.AddWithValue("@No_Macaroni",Macaroni);
            command.Parameters.AddWithValue("@No_Cheesy", Cheesy);
            command.Parameters.AddWithValue("@No_Amazing", Amazing);
            command.Parameters.AddWithValue("@No_Love",Love);
            command.Parameters.AddWithValue("@Type_Trans", TypeTrans);
            command.Parameters.AddWithValue("@Total_Bill", Total);


            TideWave.Checked = false;
            BurgMeat.Checked = false;
            DarkMush.Checked = false;
            MacBurg.Checked = false;
            CheesBurg.Checked = false;
            AmazingBac.Checked = false;
            LoveMe.Checked = false;
            QuantPanel.Visible = false;
            Quant.Text = "";
            GTotal.Text = "";
            TypeDel.SelectedValue.Replace(TypeDel.SelectedValue, "");
            CustomerInfo.Visible = false;
            CustLastNIO.Text = "";
            CustFirstNIO.Text = "";
            CustTelNoIO.Text = "";
            CustAdd.Text = "";
            CustZIP.Text = "";
            CustProv.Text = "";
            CustCity.Text = "";
            Success.Text = "     SUCCESS!";

            command.ExecuteNonQuery();
            connectS.Close();
            connectS.Dispose();
        }
        protected void CancelBtn(object sender, EventArgs e)
        {
            TideWave.Visible = true;
            TideWave.Checked = false;
            BurgMeat.Visible = true;
            BurgMeat.Checked = false;
            DarkMush.Visible = true;
            DarkMush.Checked = false;
            MacBurg.Visible = true;
            MacBurg.Checked = false;
            CheesBurg.Visible = true;
            CheesBurg.Checked = false;
            AmazingBac.Visible = true;
            AmazingBac.Checked = false;
            LoveMe.Visible = true;
            LoveMe.Checked = false;
            QuantPanel.Visible = false;
            Quant.Text = "";
            GTotal.Text = "";
            TypeDel.SelectedValue.Replace(TypeDel.SelectedValue, "");
            CustomerInfo.Visible = false;
            CustLastNIO.Text = "";
            CustFirstNIO.Text = "";
            CustTelNoIO.Text = "";
            CustAdd.Text = "";
            CustZIP.Text = "";
            CustProv.Text = "";
            CustCity.Text = "";

        }
    }
}