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

namespace ControlTemplateConcepts
{
    /// <summary>
    /// Interaction logic for ControlTemplateDeom.xaml
    /// </summary>
    public partial class ControlTemplateDemo : Window
    {
        public ControlTemplateDemo()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            ButtonTemplates template = new ControlTemplateConcepts.ButtonTemplates();
            template.ShowDialog();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            ButtonTemplatesGlobal global = new ControlTemplateConcepts.ButtonTemplatesGlobal();
            global.ShowDialog();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            ButtonCustomShape demo = new ControlTemplateConcepts.ButtonCustomShape();
            demo.ShowDialog();
        }
    }
}
