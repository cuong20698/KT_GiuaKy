using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User
/// </summary>
public class User
{
    string firstName;
    string lastName;
    string email;
    bool gender;
    string address;
    string userName;
    string passWord;

    public string FirstName
    {
        get { return firstName; }
        set { this.firstName = value; }
    }
     public string LastName         
     {            
         get { return lastName; }    
         set { lastName = value; }    
     } 
 
     public string Email       
     {           
         get { return email; }      
         set { email = value; }      
     }       
    public bool Gender  
    {           
        get { return gender; }    
        set { gender = value; }   
    } 
    public string Address    
    {         
        get { return address; } 
        set { address = value; }     
    }        
    public string UserName      
    {            
        get { return userName; }  
        set { userName = value; }   
    } 

    public string PassWord    
    {           
        get { return passWord; }  
        set { passWord = value; }      
    }
}