﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepositAccount.aspx.cs" Inherits="BankProject.DepositAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 48%;
            height: 206px;
            border-style: solid;
            border-width: 3px;
        }
        .auto-style2 {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table align="center" cellpadding="5" cellspacing="6" class="auto-style1">
                <tr>
                    <td class="auto-style2">Acccount No</td>
                    <td>
                        <asp:TextBox ID="txtAccountNo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Deposit Amount</td>
                    <td>
                        <asp:TextBox ID="txtDepositAmount" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnDeposit" runat="server" Text="Deposit Amount" OnClick="btnDeposit_Click" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
