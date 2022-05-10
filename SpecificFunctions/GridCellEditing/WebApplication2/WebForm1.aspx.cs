using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["data"] == null)
            {
                Session["data"] = this.getData();

            }
            this.WebDataGrid1.DataSource = Session["data"];
        }

        private DataTable getData()
        {
            DataColumn[] PrimaryColumn = new DataColumn[1];
            DataTable dt = new DataTable();
            PrimaryColumn[0] = dt.Columns.Add("ID", typeof(int));
            dt.Columns.Add("ProductName", typeof(string));
            dt.Columns.Add("Supplier", typeof(string));
            dt.Columns.Add("UnitPrice", typeof(double));
            dt.Columns.Add("UnitsInStock", typeof(int));
            dt.Rows.Add(1, "果汁100% オレンジ", "あじあ株式会社", 18.00, 39);
            dt.Rows.Add(2, "果汁100% グレープ", "あじあ株式会社", 19.00, 17);
            dt.Rows.Add(3, "果汁100% レモン", "あじあ株式会社", 10.00, 13);
            dt.Rows.Add(4, "果汁100% ピーチ", "あじあ株式会社", 22.00, 53);
            dt.Rows.Add(5, "コーヒーマイルド", "東京コーヒー", 21.35, 0);
            dt.Rows.Add(6, "コーヒービター", "東京コーヒー", 25.00, 120);
            dt.Rows.Add(7, "コーヒーミルク", "東京コーヒー", 30.00, 15);
            dt.Rows.Add(8, "ピリピリ ビール", "恵比寿株式会社", 40.00, 6);
            dt.Rows.Add(9, "オタル白ラベル", "恵比寿株式会社", 97.00, 29);
            dt.PrimaryKey = PrimaryColumn;

            return dt;
        }
    }
}