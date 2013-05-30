using System;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;
using Model;

namespace AjaxControlToolkitDemos.Pages
{
    public partial class ReorderListDemo : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            InitList();
        }

        protected void MyReorderList_OnItemDataBound(object sender, ReorderListItemEventArgs e)
        {
            var dummy = (DummyViewModel)e.Item.DataItem;

            var hdfMyId = (HiddenField)e.Item.FindControl("hdfMyId");
            if (hdfMyId != null) {
                hdfMyId.Value = dummy.MyId.ToString(CultureInfo.InvariantCulture);
            }

            var lblName = (Label)e.Item.FindControl("lblName");
            if (lblName != null) {
                lblName.Text = dummy.MyName;
            }

            var lblPosition = (Label)e.Item.FindControl("lblPosition");
            if (lblPosition != null) {
                lblPosition.Text = dummy.MyPosition.ToString(CultureInfo.InvariantCulture);
            }
        }

        private void InitList()
        {
            var dummies = new Collection<DummyViewModel>
                {
                    new DummyViewModel {MyId = 0, MyName = "Foo", MyPosition = 0},
                    new DummyViewModel {MyId = 1, MyName = "Bar", MyPosition = 1},
                    new DummyViewModel {MyId = 2, MyName = "Baz", MyPosition = 2}
                };

            MyReorderList.DataSource = dummies;
            MyReorderList.DataBind();
        }


    }


}