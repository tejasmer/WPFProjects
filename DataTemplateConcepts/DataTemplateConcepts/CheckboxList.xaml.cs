using StoreDatabase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace DataTemplateConcepts
{
    /// <summary>
    /// Interaction logic for CheckboxList.xaml
    /// </summary>
    public partial class CheckboxList : Window
    {
        public CheckboxList()
        {
            InitializeComponent();
            lstProducts.ItemsSource = App.StoreDb.GetProducts();
        }

        private void cmdGetSelectedItems(object sender, RoutedEventArgs e)
        {
            if (lstProducts.SelectedItems.Count > 0)
            {
                string items = "You selected: ";
                foreach (Product product in lstProducts.SelectedItems)
                {
                    items += "\n  * " + product.ModelName;
                }
                MessageBox.Show(items);
            }

        }
    }
}
