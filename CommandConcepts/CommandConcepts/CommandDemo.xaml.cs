using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace CommandConcepts
{
    /// <summary>
    /// Interaction logic for CommandDemo.xaml
    /// </summary>
    public partial class CommandDemo : Window
    {
        public CommandDemo()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            CutPasteCommand cp1 = new CutPasteCommand();cp1.ShowDialog();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            CustomCommandDemo cp2 = new CommandConcepts.CustomCommandDemo(); cp2.ShowDialog();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            CommandParameterDemo cp3 = new CommandConcepts.CommandParameterDemo();
            cp3.ShowDialog();
        }
    }
}
