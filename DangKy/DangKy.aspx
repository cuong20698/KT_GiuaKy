<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 119px;
        }
        .auto-style2 {
            width: 106px;
        }
        .auto-style4 {
            width: 119px;
            height: 27px;
        }
        .auto-style6 {
            width: 106px;
            height: 27px;
        }
        .auto-style8 {
            height: 27px;
            width: 78px;
        }
        .auto-style9 {
            width: 78px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="contain">
            <div class="main">
                <table style="width: 70%; height: 375px;">
                    <tr>
                        <td colspan="2">
                            <h3>ĐĂNG KÝ THÀNH VIÊN</h3>
                        </td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">First name:</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtFName" runat="server" Width="183px"></asp:TextBox>
                        </td>
                        <td class="auto-style2">
                            <asp:RequiredFieldValidator ID="rfvFName" runat="server" ControlToValidate="txtFName" ErrorMessage="Nhập first name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Last name:</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtLName" runat="server" Width="183px"></asp:TextBox>
                        </td>
                        <td class="auto-style2">
                            <asp:RequiredFieldValidator ID="rfvLName" runat="server" ControlToValidate="txtLName" ErrorMessage="Nhập last name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Email contact:</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtEmail" runat="server" Width="183px"></asp:TextBox>
                        </td>
                        <td class="auto-style2">
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không hợp lê" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Nhập email" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Gender:</td>
                        <td class="auto-style9">
                            <asp:DropDownList ID="ddlGender" runat="server">
                                <asp:ListItem Value="true">Nam</asp:ListItem>
                                <asp:ListItem Value="false">Nữ</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Address:</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtAddress" runat="server" Width="183px"></asp:TextBox>
                        </td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">User name:</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtUsername" runat="server" Width="183px"></asp:TextBox>
                        </td>
                        <td class="auto-style2">
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Nhập username" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Password:</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtPass" runat="server" Width="183px" TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="auto-style6">
                            <asp:RequiredFieldValidator ID="rfvPass" runat="server" ControlToValidate="txtPass" ErrorMessage="Nhập password" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Confirm password:</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtCPass" runat="server" Width="183px" TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="auto-style2">
                            <asp:CompareValidator ID="cvCPass" runat="server" ControlToCompare="txtPass" ControlToValidate="txtCPass" ErrorMessage="Mật khẩu không khớp" ForeColor="Red"></asp:CompareValidator>
                            <asp:RequiredFieldValidator ID="rfvCPass" runat="server" ControlToValidate="txtCPass" ErrorMessage="Nhập pass word" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td style="margin-left: 80px" class="auto-style9">
                            <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
                            <asp:Button ID="btnCapNhat" runat="server" OnClick="btnCapNhat_Click" Text="Cập nhật" />
                        </td>
                        <td style="margin-left: 80px" class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td style="margin-left: 80px" class="auto-style9">
                            <asp:Label ID="lblThongBao" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                        <td style="margin-left: 80px" class="auto-style2">&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
        <div>
        <asp:GridView ID="grvDS" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:CheckBoxField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyShopConnectionString %>" SelectCommand="SELECT * FROM [UserInfo]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
