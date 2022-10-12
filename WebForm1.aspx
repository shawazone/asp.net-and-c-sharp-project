<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="finalProject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 390px;
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <strong>Inscriotion in 3rd year Computer Science:&nbsp;&nbsp; by mohamad bashar alshawa</strong></div>
        <table class="auto-style1">
            <tr>
                <td><b>Course Code:</b></td>
                <td>
                    <asp:TextBox ID="textBoxCourseCode" runat="server" ForeColor="Blue"></asp:TextBox> <! text box for course code !>  <! !>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textBoxCourseCode" ErrorMessage="this field is required" ForeColor="Red" ValidationGroup="val1"></asp:RequiredFieldValidator> <! required filed validator for the coures code with valadation group 'val 1' !>
                    
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="textBoxCourseCode" Display="Dynamic" ErrorMessage="should be in the form m1111" ForeColor="Red" ValidateRequestMode="Enabled" ValidationExpression="[a-z]\d{4}" ValidationGroup="val1"></asp:RegularExpressionValidator> <! regular expriession valadotr for the courese code to make sure u enter the right form with valadation group "val 1" >
                </td>
            </tr>
            <tr>
                <td><b>Credit Nb:</b></td>
                <td>
                    <asp:TextBox ID="textBoxCreditNb" runat="server" ForeColor="Blue">0</asp:TextBox> <!   text box for the number of credits>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="textBoxCreditNb" ErrorMessage="Credit nb shoulde be between 3 and 6" ForeColor="Red" MaximumValue="6" MinimumValue="3" Type="Double" ValidationGroup="val1"></asp:RangeValidator> <! range validatior to check the number if credits between 3 and 6>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="buttonAdd" runat="server" CssClass="auto-style3" Text="Add" OnClick="buttonAdd_Click" ValidationGroup="val1" /> <! buttom to add the text box elements to the lists>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="buttonClear" runat="server" CssClass="auto-style3" Text="Clear" OnClick="buttonClear_Click" /> <!button to clear the text boxes>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">List of Modules :</td>
                <td>
                     <! list for the courses codes !> 
                    <asp:ListBox ID="listOfModules" runat="server" CssClass="auto-style3" Height="112px" Width="116px"> 
                        <asp:ListItem>--Code--</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td>
                    <asp:Button ID="buttonRegister" runat="server" CssClass="auto-style3" Text="Register" OnClick="buttonRegister_Click" /> <! button fot registration>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Summary :</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Registered Courses :</td>
                <td>

                    <! list for registred courses >
                    <asp:ListBox ID="listOfRegisteredCourses" runat="server" CssClass="auto-style3" Height="108px" Width="105px">
                        <asp:ListItem>--Code--</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td><b>Total nb of credits :<asp:Label ID="labelTotalNbOfCredits" runat="server" Text="0"></asp:Label> <! label for total number of credits >
                    </b></td>
                <td>
                    <asp:Label ID="errorLabel" runat="server"></asp:Label> <! label for errors >
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="buttonDelete" runat="server" CssClass="auto-style3" Text="Delete" OnClick="buttonDelete_Click" /> <! the delete button >
                </td>
                <td>
                    <asp:Button ID="buttonDeleteAll" runat="server" CssClass="auto-style3" Text="Delete All" OnClick="buttonDeleteAll_Click" /> <! the delete button >
                </td>
                <td>
                    <asp:Button ID="buttonUp" runat="server" CssClass="auto-style3" Text="Up" OnClick="buttonUp_Click" /> <! button up >
                </td>
                <td>
                    <asp:Button ID="buttonDown" runat="server" CssClass="auto-style3" Text="Down" OnClick="buttonDown_Click" /><!  button down>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
