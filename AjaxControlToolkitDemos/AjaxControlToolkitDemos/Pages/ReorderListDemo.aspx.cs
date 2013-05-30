using System;
using System.Collections.ObjectModel;
using System.Web.UI;
using Model;

namespace AjaxControlToolkitDemos.Pages
{
    public partial class ReorderListDemo : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            InitList();
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