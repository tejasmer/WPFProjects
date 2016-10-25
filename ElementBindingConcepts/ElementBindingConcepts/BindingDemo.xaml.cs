using System.Windows;


namespace ElementBindingConcepts
{
    /// <summary>
    /// Interaction logic for BindingDemo.xaml
    /// </summary>
    public partial class BindingDemo : Window
    {
        public BindingDemo()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            ElementBinding eb = new ElementBindingConcepts.ElementBinding();
            eb.ShowDialog();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            ObjectBinding ob = new ElementBindingConcepts.ObjectBinding();
            ob.ShowDialog();
        }
    }
}
