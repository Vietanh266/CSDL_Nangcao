﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSDL_Nangcao
{
    [Serializable]
    public class UserLogin
    {
        public string UserID { set; get; }
        public string UserName { set; get; }
        public string GroupID { set; get; }
    }
}