using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public class UserDAO
{
    string connectionString = ConfigurationManager.ConnectionStrings["MyDB"].ToString();
    
    public UserDAO(){}
    public bool CheckUser(string username)
    {
        string query = "SELECT COUNT(*) FROM UserInfo WHERE Username = @usn";
        using(SqlConnection con=new SqlConnection(connectionString))
        {
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@usn", username);
            con.Open();
            int result = (int)cmd.ExecuteScalar();
            return (result >= 1);
        }
    }

    public bool getQuery(string query)
    {
        using (SqlConnection con = new SqlConnection(connectionString)){
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            int result = (int)cmd.ExecuteScalar();
            return (result >= 1);
        }
    }

    public bool Insert(User user)
    {
        string query = "INSERT INTO UserInfo VALUES(@username,@password,@firstname,@lastname,@email,@gender,@address)";
        using(SqlConnection con = new SqlConnection(connectionString)){
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username",user.UserName);
            cmd.Parameters.AddWithValue("@password", user.PassWord);
            cmd.Parameters.AddWithValue("@firstname", user.FirstName);
            cmd.Parameters.AddWithValue("@lastname", user.LastName);
            cmd.Parameters.AddWithValue("@email", user.Email);
            cmd.Parameters.AddWithValue("@gender", user.Gender);
            cmd.Parameters.AddWithValue("@address", user.Address);
            con.Open();
            int result = cmd.ExecuteNonQuery();
            return (result >= 1);
        }
    }
}