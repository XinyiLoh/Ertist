﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ertist
{
    public partial class Wishlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            imgArtwork.ImageUrl = "Image/Star Clock at Night II.jpg";
            lblName.Text = "Star Clock at Night II";
            lblPrice.Text = "RM 100";
        }
    }
}