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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace ControlTemplateConcepts
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class ButtonTemplatesGlobal : Window
    {
        public ButtonTemplatesGlobal()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            test.IsEnabled = !test.IsEnabled;
        }
        ResourceDictionary _previous;
        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            ResourceDictionary res = new ResourceDictionary();
            res.Source = new Uri("Resources/UserPreferenceDictionary.xaml", UriKind.Relative);
            _previous = this.Resources.MergedDictionaries[0];
            Resources.MergedDictionaries[0] = res;
        }
    }
}
