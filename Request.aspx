<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Request.aspx.cs" Inherits="XEx06Reservation.Request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<title>Chapter 6: Reservations</title>--%>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <header class="jumbotron">
            <img src="Images/logo.png" alt="Royal Inns and Suites" />
        </header>

        <main>
            <form id="form1" runat="server" class="form-horizontal">
                <h1>Reservation Request</h1>

                <h3>Request data</h3>
              <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="Small" ForeColor="DarkRed" CssClass="text-center" DisplayMode="List" />

                <div class="form-group">
                    <label class="col-sm-3 control-label">Arrival Date</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtArrivalDate" runat="server" TextMode="Date"
                             CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Plrase Fill the Arrival Date" ControlToValidate="txtArrivaldate" Font-Size="Small">*</asp:RequiredFieldValidator>
                        </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Departure Date</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtdeoarturedate" runat="server" TextMode="Date"
                             CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Plrase Fill the Departure Date" ControlToValidate="txtdeoarturedate" Font-Size="Small">*</asp:RequiredFieldValidator>
                          <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Arrival Date should be Smaller than Departure Date" ControlToValidate="txtdeoarturedate" Operator="GreaterThanEqual" ControlToCompare="txtArrivalDate"></asp:CompareValidator>

                        <!-- text box -->
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Number of people</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlpeople" runat="server" CssClass="form-control">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                        <!-- drop-down -->
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Bed type</label>
                    <div class="col-sm-9 bedtype">
                        <asp:RadioButtonList ID="rbbrdtype" runat="server" >
                            <asp:ListItem>Queen Size</asp:ListItem>
                            <asp:ListItem>King Size</asp:ListItem>
                            <asp:ListItem>Suits</asp:ListItem>
                            <asp:ListItem>3 Beds</asp:ListItem>
                        </asp:RadioButtonList>
                        <!-- radio buttons -->
                    </div>
                </div>

                <h3>Special requests</h3>
                <div class="form-group">
                    <div class="col-sm-7">
                        <!-- multiline text box -->
                        <asp:TextBox ID="txtspecialnote" runat="server" TextMode="MultiLine"
                             CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <h3>Contact information</h3>
                <div class="form-group">
                    <label class="col-sm-3 control-label">First Name</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Plrase Fill the First Name." ControlToValidate="txtFirstName" Font-Size="Small" >*</asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Last Name</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtlastname" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Plrase Fill the Last Name." ControlToValidate="txtlastname" Font-Size="Small">*</asp:RequiredFieldValidator>

                        <!-- text box -->
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Email address</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtemail" runat="server" TextMode="Email"
                             CssClass="form-control"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Plrase Fill the Email Address." ControlToValidate="txtemail" Font-Size="Small">*</asp:RequiredFieldValidator>

                        <!-- text box -->
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Telephone number</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtphone" runat="server" TextMode="Phone"
                             CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Plrase Fill the Phone Number." ControlToValidate="txtphone" Font-Size="Small">*</asp:RequiredFieldValidator>

                        <!-- text box -->
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Preferred method</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlpayment" runat="server" CssClass="form-control">
                            <asp:ListItem>Debit Card</asp:ListItem>
                            <asp:ListItem>Visa</asp:ListItem>
                            <asp:ListItem>Master Card</asp:ListItem>
                        </asp:DropDownList>
                        <!-- drop down -->
                    </div>
                </div>

                <%-- Submit and Clear buttons --%>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                             CssClass="btn btn-primary"  OnClick="btnSubmit_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear"
                             CssClass="btn btn-primary"  OnClick="btnClear_Click" />
                    </div>
                </div> 
            
                <%-- message label --%>
                <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-11">
                        <asp:Label ID="lblMessage" runat="server" CssClass="text-info"></asp:Label>
                    </div>
                </div>

            </form>
        </main>

        <footer>
            <p>&copy; <asp:Label ID="lblYear" runat="server"></asp:Label> 
                Royal Inns and Suites</p>
        </footer>
    </div>
    
</body>
</html>