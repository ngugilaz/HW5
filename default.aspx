<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="laz.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
   <h1> Mike's Massively Awesome Mortgage Calculator</h1>
        
        <br /><br />
     
        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" >    </asp:TextBox>
                  
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter amount" ControlToValidate="tbLoanAmt"></asp:RequiredFieldValidator>
                  
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please interest rate" ControlToValidate="tbAnnualInterest"></asp:RequiredFieldValidator>
        
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter the loan term" ControlToValidate="tbLoanTerm"></asp:RequiredFieldValidator>
        
        <br /><br />

        Monthly Payment &nbsp <asp:Label ID="Label1" runat="server"></asp:Label>
        <table>
            <tr>
                <td align ="right"& nbsp; ></td> <td align ="left"><asp:Button ID="btnCalcPmt" runat="server" TabIndex="5" Text="Calculate" Width="125px" /></td>
            </tr>
        </table>
        
        <br />
         <br />

        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="clearButton" runat="server" Text="Clear" Width="127px" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <br /><br />
         <%If Not IsPostBack Then%>
        <p> Welcome to my mortgage Calculator. Please complete the fileds above to have your monthly payment and loan repayment schedule calculated for you</p>

        <% Else%>
        Monthly Payment: &nbsp;<span class="bold"> <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label></span>
        
        <br />
        <br />
        
        <asp:GridView ID="loanGridView" runat="server" CssClass="cssgrindview">
        <alternatingRowstyle Cssclass="alt" />
        </asp:GridView>
         <%End If%>
        </div>
    </form>
</body>
</html>
