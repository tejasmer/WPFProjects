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
    /// Interaction logic for CutPasteCommand.xaml
    /// </summary>
    public partial class CutPasteCommand : Window
    {
        public CutPasteCommand()
        {
            InitializeComponent();
        }

        private void OnCutExecuted(object sender, ExecutedRoutedEventArgs e)
        {
            txtEditor.Cut();
        }

        private void OnPasteExecuted(object sender, ExecutedRoutedEventArgs e)
        {
            txtEditor.Paste();
        }

        private void CanExecutePaste(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = Clipboard.ContainsText();
        }

        private void CanExecuteCut(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = txtEditor != null && txtEditor.SelectionLength > 0;

        }
    }
}
