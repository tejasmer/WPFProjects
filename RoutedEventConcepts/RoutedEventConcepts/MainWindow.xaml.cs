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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace RoutedEventConcepts
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        int counter = 0;
        private void OnMouseUp(object sender, MouseButtonEventArgs e)
        {
            counter++;

            e.Handled = (bool)chkhandle.IsChecked;
            lstbox.Items.Add(counter + "#  Sender " + sender + Environment.NewLine +
                "Source " + e.Source.ToString() + Environment.NewLine +
                 "Orignal Source " + e.OriginalSource + Environment.NewLine);
        }

        private void btn1_Click(object sender, RoutedEventArgs e)
        {
            counter = 0;
            lstbox.Items.Clear();
        }
    }
}
