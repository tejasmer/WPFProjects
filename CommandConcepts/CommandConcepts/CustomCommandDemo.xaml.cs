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

namespace CommandConcepts
{
    /// <summary>
    /// Interaction logic for CustomCommandDemo.xaml
    /// </summary>
    public partial class CustomCommandDemo : Window
    {
        public CustomCommandDemo()
        {
            InitializeComponent();
            DataContext = new NameList();
        }
    }
}
