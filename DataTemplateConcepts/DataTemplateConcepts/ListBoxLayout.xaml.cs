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
    /// Interaction logic for ListBoxLayout.xaml
    /// </summary>
    public partial class ListBoxLayout : Window
    {
        public ListBoxLayout()
        {
            InitializeComponent();
        }

        private void cmdGetProducts_Click(object sender, RoutedEventArgs e)
        {
            lstProducts.ItemsSource = App.StoreDb.GetProducts();
        }
    }
}
