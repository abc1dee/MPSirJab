<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="IT114L.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
            .mainframe {
                background-color: honeydew;
                border: 13px solid black;
                margin: 20px;
                padding: 20px;
                height: 1150px;
            }
            .subframe {
                background-color: lightgoldenrodyellow;
                border: 5px solid black;
                margin: 5px;
                padding: 5px;
                height: 390px;
            }
            .required1 {
                color: red;
            }
            .FullTextBox {
                width: 420px;
                height: 20px;
            }
            .HalfTextBox {
                width: 260px;
                height: 20px;
            }
            .NumberTextBox {
                width: 210px;
                height: 40px;
            }
            .auto-style1 {
                background-color: lightgoldenrodyellow;
                border: 5px solid black;
                margin: 5px;
                padding: 5px;
                float: left;
            }
            .auto-style2 {
                background-color: lightgoldenrodyellow;
                border: 5px solid black;
                margin: 5px;
                padding: 5px;
                float: right;
            }
        </style>
</head>
<body style="width: 1708px; height: 566px">
    <form class="mainframe" runat="server">
            <center><img src="Burger.jpg" alt="BurgerLight Logo" /></center>
            <h1 style="font-family: verdana; font-size: 40px; text-align: center;">BurgerLight <asp:LinkButton runat="server" ID="OrderButton" Text="ORDER FOOD" Font-Size="XX-Large" OnClick="OrderRedirect"></asp:LinkButton> </h1>
            <asp:Panel ID="Panel2" runat="server" Height="635px" Width="846px" CssClass="auto-style1">
                    <h2 style="font-family: verdana; font-size: 20px; text-align: center;">Contact Us Page</h2>
                    <p style="font-family: verdana; font-size: 20px;">Sender's Last Name: <asp:TextBox runat="server" ID="LastNIO" Height="24px" Width="225px"></asp:TextBox> </p>
                    <p style="font-family: verdana; font-size: 20px;">Sender's First Name: <asp:TextBox runat="server" ID="FirstNIO" Height="24px" Width="225px"></asp:TextBox> </p>
                    <p style="font-family: verdana; font-size: 20px;">Sender's Company Affiliation: <asp:TextBox runat="server" ID="AffiliationIO" Height="24px" Width="225px"></asp:TextBox> </p>
                    <p style="font-family: verdana; font-size: 20px;">Sender's Telephone Number: <asp:TextBox runat="server" ID="TelNoIO" Height="24px" Width="225px"></asp:TextBox> </p>
                    <p style="font-family: verdana; font-size: 20px;">Sender's Fax Machine Number: <asp:TextBox runat="server" ID="FaxNoIO" Height="24px" Width="225px"></asp:TextBox> </p>
                    <p style="font-family: verdana; font-size: 20px;">Sender's Emails: <asp:TextBox runat="server" ID="EmailIO" Height="24px" Width="225px"></asp:TextBox> </p>
                    <p style="font-family: verdana; font-size: 20px;">Inquiry Type (1- Inquiry/2-Suggestion/3-Commendation): <asp:TextBox runat="server" ID="InquireIO" Height="24px" Width="225px"></asp:TextBox> </p>
                    <p style="font-family: verdana; font-size: 20px;">Sender's Comments<asp:TextBox runat="server" ID="CommentsIO" Height="24px" Width="225px"></asp:TextBox> </p>
                <asp:Button runat="server" ID="Submit" Text="Submit"  OnClick="SubmitClick" Height="75px" Width="200px" Font-Size="XX-Large"/>

            <asp:Label runat="server" ID="Success" Text="" Font-Size="XX-Large" Font-Bold="true" ForeColor="Green"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\Burgerlight.mdb;Persist Security Info=True" DeleteCommand="DELETE FROM [Inquiry] WHERE [Field Name] = ?" InsertCommand="INSERT INTO [Inquiry] ([Field Name], [Type]) VALUES (?, ?)" ProviderName="System.Data.OleDb">
                        <InsertParameters>
                            <asp:Parameter Name="Field_Name" Type="String" />
                            <asp:Parameter Name="Type" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
        </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" Height="681px" Width="669px" CssClass="auto-style2">
                <h1 style="font-family: verdana; font-size: 40px; text-align: center;">About Us</h1>
                <p style="font-family: verdana; font-size: 20px;">BurgerLight is the largest fast food chain in the Philippines, operating a 
                nationwide network of over 750 stores. A dominant market leader in the Philippines,
                BurgerLight enjoys the lion’s share of the local market that is more than all the other 
                multinational brands combined. The company has also embarked on an aggressive 
                IT114L
                international expansion plan in the USA, Vietnam, Hong Kong, Saudi Arabia, Qatar and 
                Brunei, firmly establishing itself as a growing international QSR player.</p>
                <p style="font-family: verdana; font-size: 20px;">BurgerLight was founded by Adomar L. Ilao and his family with its humble 
                beginnings as an Funeral Parlor which later grew into an emerging global brand. At the 
                heart of its success is a family-oriented approach to personnel management, making 
                Jollibee one of the most admired employers in the region with an Employer of the Year 
                Award from the Personnel Management Association of the Philippines,</p>
                <p style="font-family: verdana; font-size: 20px;">Customer satisfaction has always been key to Jollibee’s success. Never losing 
                sight of its goals, Jollibee has grown to be one of the most recognized and highly 
                preferred brands in the Philippines. Now the market leader among fast food chains in
                the Philippines, claiming a market share that totals to more than half of the entire 
                industry.
                </p>
            </asp:Panel>
               
     </form>
</body>
</html>
