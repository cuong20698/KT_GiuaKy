using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DangKy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        dangky();
        
    }
    private void dangky()
    {
        User user = layUser();
        UserDAO DAO = new UserDAO();
        bool kiemtra = DAO.CheckUser(user.UserName);
        if (kiemtra)
        {
            lblThongBao.Text = "Username này đã tồn tại!";
        }
        else
        {
            bool result = DAO.Insert(user);
            if (result)
            {
                lblThongBao.Text = "Đăng ký thành công!";
            }
            else
            {
                lblThongBao.Text = "Đăng ký không thành công!";
            }
        }
    }
    private User layUser()
    {
        string username = txtUsername.Text;
        string password = txtPass.Text;
        string firstname = txtFName.Text;
        string lastname = txtLName.Text;
        string email = txtEmail.Text;
        bool gender = Boolean.Parse(ddlGender.SelectedValue);
        string address = txtAddress.Text;

        User user = new User
        {
            FirstName = firstname,
            LastName = lastname,
            Email = email,
            Gender = gender,
            Address = address,
            UserName = username,
            PassWord = password,
        };
        return user;
    }

    public void XoaTrongForm()
    {
        txtUsername.Text = "";
        txtPass.Text = "";
        txtFName.Text = "";
        txtLName.Text = "";
        txtEmail.Text = "";
        txtCPass.Text = "";
        txtPass.Text = "";
        txtAddress.Text = "";
    }
    protected void btnCapNhat_Click(object sender, EventArgs e)
    {
        XoaTrongForm();
        Response.Redirect("DangKy.aspx");
    }
}