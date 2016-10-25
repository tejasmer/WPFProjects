using System.Windows;
using MVVMConcepts.ViewModel;
using MVVMConcepts.Helpers;
using System.Windows.Media;
using System.Windows.Data;
using System.Windows.Controls;

namespace MVVMConcepts
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);


            //CREATE INSTANCE OF VIEW
            ExplorerView view = new MVVMConcepts.ExplorerView();

            //INITIALIZE EXTERNAL SERVICE FOR VIEW MODEL.
            IFolderExplorer folderExplorerService = new FolderExplorerService();

            //CREATE INSTANCE OF VIEWMODEL AND PASS EXTERNAL SERVICE TO IT.
            ExplorerViewModel viewModel = new ExplorerViewModel(folderExplorerService);

            //BIND VIEW'S DATA CONTEXT  TO VIEWMODEL
            view.DataContext = viewModel;

            //ATTACH ADORNER TO THE WINDOW.
            AttachLoadingAdorner(view.grd, viewModel); //COMMENT OUT THIS LINE TO REMOVE ADORNER EFFECT.

            view.ShowDialog();
        }

        private void AttachLoadingAdorner(UIElement view,ExplorerViewModel viewModel)
        {
            LoadingAdorner loading = new LoadingAdorner(view);

            //We can set font information and text.
            loading.FontSize = 14;
            loading.OverlayedText = "Please Wait! Extracting folders/files information from Selected Drive.";
            loading.Typeface = new Typeface(new FontFamily("Arial"), FontStyles.Italic, FontWeights.Bold,  FontStretches.Normal);

            Binding bind = new Binding();
            bind.Source = viewModel;
            bind.Path = new PropertyPath("Isbusy");
            bind.Converter = new VisibilityConverter();
            loading.SetBinding(LoadingAdorner.VisibilityProperty, bind);
            System.Windows.Documents.AdornerLayer.GetAdornerLayer(view).Add(loading);

        }
    }
}
