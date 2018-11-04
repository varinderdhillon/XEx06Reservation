<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="XEx06Reservation.Reservation" %>

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

                <div class="form-group">
                    <label class="col-sm-3 control-label">Arrival Date</label>
                    <div class="col-sm-4">
                <asp:Label ID="Label1" runat="server"  CssClass="form-control"> </asp:Label>
                        </div>
                    </div>

                    <div class="form-group">
                    <label class="col-sm-3 control-label">Depature Date</label>
                    <div class="col-sm-4">
                 <asp:Label ID="Label2" runat="server" CssClass="form-control"></asp:Label>
                        </div>
                        </div>

                   <div class="form-group">
                    <label class="col-sm-3 control-label">Full Name</label>
                    <div class="col-sm-4">
                 <asp:Label ID="Label3" runat="server"  CssClass="form-control"></asp:Label>
                        </div>
                       </div>

                       <div class="form-group">
                    <label class="col-sm-3 control-label">Phone Number</label>
                    <div class="col-sm-4">
                 <asp:Label ID="Label4" runat="server" CssClass="form-control"></asp:Label>
                        </div>
                           </div>

                           <div class="form-group">
                    <label class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-4">
                 <asp:Label ID="Label5" runat="server" CssClass="form-control"></asp:Label>
                        </div>
                               </div>

                    <div class="form-group">
                    <label class="col-sm-3 control-label">Number of People</label>
                    <div class="col-sm-4">
                 <asp:Label ID="Label6" runat="server"  CssClass="form-control"></asp:Label>
                        </div>
                        </div>

                        <div class="form-group">
                    <label class="col-sm-3 control-label">Bed Type</label>
                    <div class="col-sm-4">
                 <asp:Label ID="Label7" runat="server" CssClass="form-control"></asp:Label>
                        </div>
                            </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Special Note</label>
                    <div class="col-sm-4">
                 <asp:Label ID="Label8" runat="server" CssClass="form-control"></asp:Label>
                        </div>
                    </div>

                    <div class="form-group">
                    <label class="col-sm-3 control-label">Payment Method</label>
                    <div class="col-sm-4">
                 <asp:Label ID="Label9" runat="server" CssClass="form-control"></asp:Label>
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
