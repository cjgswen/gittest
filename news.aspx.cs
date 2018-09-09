using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using XikeDb;
using XikeDb.Entity;
using XkServices;

namespace Web
{
    public partial class news : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dtNews = new BLL().GetList("D_News", "", "ColumnId=366 AND IsDelete=0 ORDER BY AddTime DESC,ID DESC").Tables[0];
            if (dtNews != null && dtNews.Rows.Count > 0)
            {
                rpList.DataSource = dtNews;
                rpList.DataBind();
            }
        }
    }
}