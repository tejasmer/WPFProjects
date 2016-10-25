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

namespace StylesTriggersResourcesConcepts
{
    /// <summary>
    /// Interaction logic for STRDemo.xaml
    /// </summary>
    public partial class STRDemo : Window
    {
        public STRDemo()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Styles st = new Styles();
            st.ShowDialog();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Triggers tr = new StylesTriggersResourcesConcepts.Triggers();
            tr.ShowDialog();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            Resources rs = new StylesTriggersResourcesConcepts.Resources();
            rs.ShowDialog();

        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {

        }

       
    }
}
