using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BossControlsWeb2
{
   
    using System;
    using System.Collections.Generic;
    public partial class User
    {
        public int u_Seq_ID { get; set; }
        public string u_First_Name { get; set; }
        public string u_Last_Name { get; set; }
        public string u_Email { get; set; }
        public string u_Password { get; set; }
        public Nullable<System.DateTime> u_Password_date { get; set; }
        public bool u_Active { get; set; }
        public bool u_Is_Master_Customer { get; set; }
    }
}
