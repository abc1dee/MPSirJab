<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductOrder.aspx.cs" Inherits="IT114L.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> </title>
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
            .subframe1 {
                background-color: darksalmon;
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
            .auto-style15 {
                width: 879px;
            }
            .auto-style16 {
                width: 862px;
            }
    </style>
</head>
<body style="width: 1708px; height: 566px">
    <form class="mainframe" runat="server">
        <!--- Cus_lastname,Cus_firstname,Cus_Tel_no,Cus_address,Cus_zipcode,Cus_province,Cus_city,No_TideWave,No_BurgerMeaty,No_Darkness,No_Macaroni,No_Cheesy,No_Amazing,No_Love,Type_Trans,Total_Bill-->
            <center><img src="Burger.jpg" alt="BurgerLight Logo" /></center>
            <h1 style="font-family: verdana; font-size: 40px; text-align: center;">BurgerLight</h1>
            <asp:Panel ID="Panel2" runat="server" Height="635px" Width="1550px" CssClass="auto-style1">
                 <h1 style="font-family: verdana; font-size: 20px; text-align: center;">Order Process</h1>
                 <!--- Product List-->
                <table border="1";  style="float: right;font-size:xx-large; color:black" >
                    <tr>
                        <th>Product Description</th>
                        <th>Price</th>
                    </tr>
                    <tr>
                        <td>Tide Wave Burger</td>
                        <td>250.00</td>
                        <td><asp:CheckBox ID="TideWave" runat="server" AutoPostBack="true" OnCheckedChanged="ShowTotal"/>  </td>
                    </tr>
                    <tr>
                        <td>Burger Meaty Delight</td>
                        <td>500.00</td>
                        <td><asp:CheckBox ID="BurgMeat" runat="server" AutoPostBack="true" OnCheckedChanged="ShowTotal"/>  </td>
                    </tr>
                    <tr>
                        <td>Darkness Mushroom Burger</td>
                        <td>600.00</td>
                        <td><asp:CheckBox ID="DarkMush" runat="server" AutoPostBack="true" OnCheckedChanged="ShowTotal"/>  </td>
                    </tr>
                    <tr>
                        <td>Macaroni Burger Now</td>
                        <td>200.00</td>
                        <td><asp:CheckBox ID="MacBurg" runat="server" AutoPostBack="true" OnCheckedChanged="ShowTotal"/>  </td>
                    </tr>
                    <tr>
                        <td>Cheesy Burger Delight</td>
                        <td>150.00</td>
                        <td><asp:CheckBox ID="CheesBurg" runat="server" AutoPostBack="true" OnCheckedChanged="ShowTotal"/>  </td>
                    </tr>
                    <tr>
                        <td>Amazing Bacon Delight</td>
                        <td>500.00</td>
                        <td><asp:CheckBox ID="AmazingBac" runat="server" AutoPostBack="true" OnCheckedChanged="ShowTotal"/>  </td>
                    </tr>
                    <tr>
                        <td>Love Me Now Burger</td>
                        <td>600.00</td>
                        <td><asp:CheckBox ID="LoveMe" runat="server" AutoPostBack="true" OnCheckedChanged="ShowTotal"/>  </td>
                    </tr>
                </table>
                <asp:Panel runat="server" ID="QuantPanel" Visible="false" Width="875px">
                    <p class="auto-style15" style="font-family: verdana; font-size: 40px;">Quantity: <asp:TextBox ID="Quant" runat="server" TextMode="Number" Height="40px" Width="40px" AutoPostBack="true" OnTextChanged="GrandTotal" ></asp:TextBox> </p>
                    <p class="auto-style15" style="font-family: verdana; font-size: 40px;">Total Price: <asp:TextBox ID="GTotal" runat="server">00.00</asp:TextBox></p> 
                    <p style="font-family: verdana; font-size: 35px;"class="auto-style16">Shipping/Delivery: <asp:DropDownList runat="server" Font-Size="XX-Large"  AutoPostBack="true" ID="TypeDel" OnSelectedIndexChanged="ShowCusInfo">
                    <asp:ListItem Value="">---</asp:ListItem>
                    <asp:ListItem Value="PickUp">Pick-Up</asp:ListItem>  
                    <asp:ListItem Value="Delivery">Delivery</asp:ListItem>
                    </asp:DropDownList>
                    </p>  
                </asp:Panel>          
                <asp:Panel runat="server" ID="CustomerInfo" Visible="false" CssClass="subframe1">
                    <p style="font-family: verdana; font-size: 20px;" class="auto-style2">Customers Last Name: <asp:TextBox runat="server" ID="CustLastNIO" Height="24px" Width="225px"></asp:TextBox> </p>
                    <p style="font-family: verdana; font-size: 20px;"class="auto-style2">Customers First Name: <asp:TextBox runat="server" ID="CustFirstNIO" Height="24px" Width="225px"></asp:TextBox> </p>
                    <p style="font-family: verdana; font-size: 20px;"class="auto-style3">Customers Telephone Number: <asp:TextBox runat="server" ID="CustTelNoIO" Height="24px" Width="225px"></asp:TextBox> </p>
                    <p style="font-family: verdana; font-size: 20px;"class="auto-style2">Customer Address:<asp:TextBox runat="server" ID="CustAdd" Height="24px" Width="225px"></asp:TextBox> </p>
                    <p style="font-family: verdana; font-size: 20px;"class="auto-style2">Customer ZIP Code: <asp:TextBox runat="server" ID="CustZIP" Height="24px" Width="225px"></asp:TextBox> </p>
                    <p style="font-family: verdana; font-size: 20px;"class="auto-style2">Customer Province: <asp:TextBox runat="server" ID="CustProv" Height="24px" Width="225px"></asp:TextBox> </p>
                    <p style="font-family: verdana; font-size: 20px;"class="auto-style2">Customer City: <asp:TextBox runat="server" ID="CustCity" Height="24px" Width="225px"></asp:TextBox> </p>
                    <asp:Button runat="server" ID="SubmitDB" Text="SUBMIT" Font-Size="XX-Large"  AutoPostBack="true" OnClick="SubmitBtn"/> <asp:Button runat="server" ID="CANCELRESET" Font-Size="XX-Large" Text="CANCEL" AutoPostBack="true" OnClick="CancelBtn"/>
                </asp:Panel>
                <asp:Label runat="server" ID="Success" Text="" Font-Size="XX-Large" Font-Bold="true" ForeColor="Green"></asp:Label>
        </asp:Panel>
    </form>
    <script>
</script>
</body>
</html>