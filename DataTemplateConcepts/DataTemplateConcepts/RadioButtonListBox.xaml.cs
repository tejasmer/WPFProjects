using System.Windows;

namespace DataTemplateConcepts
{
    /// <summary>
    /// Interaction logic for RadioButtonListBox.xaml
    /// </summary>
    public partial class RadioButtonListBox : Window
    {
        public RadioButtonListBox()
        {
            InitializeComponent();
            lstProducts.ItemsSource = App.StoreDb.GetProducts();
        }

        private void cmdGetSelectedItem(object sender, RoutedEventArgs e)
        {
            MessageBox.Show(lstProducts.SelectedItem.ToString());
        }
    }
}
