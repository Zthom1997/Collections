using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inleveropdracht1
{
    public partial class Soundify : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Request.AppRelativeCurrentExecutionFilePath;
            foreach(MenuItem item in MainMenu.Items)
            {
                item.Selected = item.NavigateUrl.Equals(path, StringComparison.InvariantCultureIgnoreCase);
            }
        }



        protected void MainMenu_MenuItemDataBound(object sender, MenuEventArgs e)
        {
            MenuItem item = e.Item;

            if (item.Text == "Dashboard")
            {
                item.Selected = true;
            }
        }
    }
}