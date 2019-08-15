using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DangNhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        string username = txtUsername.Text;
        string password = txtPassword.Text;
        string query = "SELECT COUNT(*) FROM UserInfo WHERE Username = '" + username + "' and Password = '" + password + "'";
        UserDAO dao = new UserDAO();
        bool kiemtra = dao.getQuery(query);
        if (kiemtra)
        {
            Response.Redirect("DangKy.aspx");
        }
        else
        {
            lblThonBao.Text = "Tài khoản hoặc mật khẩu không chính xác!";
        }
    }
}