using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;
using System.Configuration;

namespace BossControlsWeb2
{
        public class CustomerL
        {
         public int c_seq_id { get; set; }
        public string c_DBA { get; set; }
        }


    public class Security
    {
        public class SecurityResponse
        {
            public bool success { get; set; }
            public string error { get; set; }
        }

        public static User CurrentUser
        {
            get
            {
                User user = null;
                try
                {
                    if (HttpContext.Current.Session["user"] != null)
                        user = (User)HttpContext.Current.Session["user"];
                }
                catch { }

                return user;
            }
        }

        

        public static SecurityResponse Login(string email, string unencryptedPassword)
        {
            int passwordExpirationMonths = Convert.ToInt32(ConfigurationManager.AppSettings["Security.PasswordExpirationMonths"]);
            SecurityResponse response = new SecurityResponse();
            response.success = false;

            Boss_DBTableAdapters.UserTableAdapter UserTA = new Boss_DBTableAdapters.UserTableAdapter();
            Boss_DB.UserDataTable UserDT = UserTA.GetDataByEmailPassword(email, unencryptedPassword);
            
            if(UserDT.Rows.Count < 1)
            {
                response.error = "Incorrect email/password combination.";
                return response;
            }
            if (UserDT.Rows.Count > 1)
            {
                response.error = "Invalid Login Contact System Admin.";
                return response;
            }
            
            
           foreach (Boss_DB.UserRow UserDR in  UserDT.Rows)
           {
                //Password expired
                if (UserDR.u_Password_date <= DateTime.Now.AddMonths(-passwordExpirationMonths))
                {
                    response.error = "Your password has expired";
                    return response;
                }

                if (UserDR.u_Active != true)
                {
                    response.error = "User Not Active Contact System Admin.";
                    return response;
                }
                List<CustomerL> customersList = new List<CustomerL>();
                
                Boss_DBTableAdapters.User_Customer_LinkTableAdapter User_Customer_LinkTA = new Boss_DBTableAdapters.User_Customer_LinkTableAdapter();
                Boss_DB.User_Customer_LinkDataTable User_Customer_LinkDT = User_Customer_LinkTA.GetDataByuc_u_seq_ID(UserDR.u_Seq_ID);

                foreach (Boss_DB.User_Customer_LinkRow User_Customer_LinkDR in User_Customer_LinkDT.Rows)
                {
                    Boss_DBTableAdapters.CustomerTableAdapter CustomerTA = new Boss_DBTableAdapters.CustomerTableAdapter();
                    Boss_DB.CustomerDataTable CustomerDT = CustomerTA.GetDataBy_c_seq_id(User_Customer_LinkDR.uc_c_seq_ID);
                    foreach (Boss_DB.CustomerRow CustomerDR in CustomerDT.Rows)
                    {
                        CustomerL customer = new CustomerL();
                        customer.c_seq_id = CustomerDR.c_seq_id;
                        customer.c_DBA = CustomerDR.c_DBA;
                        customersList.Add(customer);



                    }
                }
                //User currentUser = context.users.Include(x => x.security_group).AsNoTracking().FirstOrDefault(fd => fd.u_email == email && fd.u_active == true);
                response.success = true;
                //Session important information
                User user = new User();
                user.u_Active = UserDR.u_Active;
                user.u_Email = UserDR.u_Email;
                user.u_First_Name = UserDR.u_First_Name;
                user.u_Is_Master_Customer = UserDR.u_Is_Master_Customer;
                user.u_Last_Name = UserDR.u_Last_Name;
                user.u_Password = UserDR.u_Password;
                user.u_Password_date = UserDR.u_Password_date;
                user.u_Seq_ID = UserDR.u_Seq_ID;

                HttpContext.Current.Session["user"] = user;
                HttpContext.Current.Session["Customer_List"] = customersList;
                //If there is a return URL, send them to that URL on logging in
                if (HttpContext.Current.Session["ReturnURL"] != null)
                {
                    string returnURL = HttpContext.Current.Session["ReturnURL"].ToString();
                    HttpContext.Current.Session["ReturnUrl"] = null;
                    HttpContext.Current.Response.Redirect(returnURL);
                    return response;
                }

                HttpContext.Current.Response.Redirect("~/");
                return response;

            }

            

                return response;
        }
    }

}