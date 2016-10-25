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

namespace PanelConcepts
{
    /// <summary>
    /// Interaction logic for PanelsDemo.xaml
    /// </summary>
    public partial class PanelsDemo : Window
    {
        public PanelsDemo()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            StackPanelDemo demo = new PanelConcepts.StackPanelDemo();
            demo.ShowDialog();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            DockPanelDemo demo = new PanelConcepts.DockPanelDemo();
            demo.ShowDialog();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            GridDemo demo = new GridDemo();
            demo.ShowDialog();
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            CanvasDemo cd = new PanelConcepts.CanvasDemo();
            cd.ShowDialog();
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            AllPanels cd = new PanelConcepts.AllPanels();
            cd.ShowDialog();

        }
    }

    
}
