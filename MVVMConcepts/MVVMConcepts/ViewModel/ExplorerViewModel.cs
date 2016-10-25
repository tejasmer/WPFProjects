using System;
using System.Collections.ObjectModel;


using MVVMConcepts.Helpers;
using MVVMConcepts.Model;
using System.Windows;
using System.Diagnostics;
using System.IO;
using System.Threading;
using System.Collections.Generic;
using System.Windows.Threading;

namespace MVVMConcepts.ViewModel
{
    public class ExplorerViewModel : ViewModelBase
    {
        #region Private members


        private ObservableCollection<Drive> _drives;
        private ObservableCollection<Folder> _folders;
        private ObservableCollection<MenuItem> _menuItems = new ObservableCollection<MenuItem>();

        private Drive _SelectedDrive;
        private Folder _SelectedFolder;
        private string _SelectedItemPath;

        private bool _isbusy;

        private Visibility _IsFolderGrpBxVisible;
        private Visibility _IsFolderDetailsGrpBxVisible;
        private IFolderExplorer _folderExplorer;

        private ObservableCollection<Uri> _themes = new ObservableCollection<Uri>();
        private Uri _SelectTheme;
        private bool _isSourceInitialized = false;

        #endregion

        #region Properties

        /// <summary>
        /// Holds the Drives List
        /// </summary>
        public ObservableCollection<Drive> Drives
        {
            get { return _drives; }
            set { _drives = value; RaisePropertyChanged("Drives"); }
        }

        /// <summary>
        /// Holds the Folders / Files list
        /// </summary>
        public ObservableCollection<Folder> Folders
        {
            get { return _folders; }
            set { _folders = value; RaisePropertyChanged("Folders"); }
        }

        public ObservableCollection<MenuItem> MenuItems
        {
            get
            {
                return _menuItems;
            }

            set
            {
                _menuItems = value;
                RaisePropertyChanged("MenuItems");
            }
        }

        public Drive SelectedDrive
        {
            get { return _SelectedDrive; }
            set
            {
                if (_SelectedDrive != value && value != null)
                {

                    _SelectedDrive = value;
                    HandleDriveSelectionChange();
                    IsFolderDetailsGrpBxVisible = Visibility.Collapsed;
                    RaisePropertyChanged("SelectedDrive");
                }
            }
        }
        public Folder SelectedFolder
        {
            get { return _SelectedFolder; }
            set
            {

                if (_SelectedFolder != value && value != null)
                {
                    _SelectedFolder = value;
                    MenuItems.Clear();
                    HandleFolderSelectionChanged();
                    IsFolderDetailsGrpBxVisible = Visibility.Visible;
                    RaisePropertyChanged("SelectedFolder");
                }
            }
        }
        public string SelectedItemPath
        {
            get { return _SelectedItemPath; }
            set { _SelectedItemPath = value; RaisePropertyChanged("SelectedItemPath"); }
        }


        public RelayCommand OpenSelectedItemCommand
        {
            get;
            set;
        }
        public RelayCommand SetSelectedItemCommand
        {
            get;
            set;
        }


        public Visibility IsFolderGrpBxVisible
        {
            get { return _IsFolderGrpBxVisible; }
            set { _IsFolderGrpBxVisible = value; RaisePropertyChanged("IsFolderGrpBxVisible"); }
        }
        public Visibility IsFolderDetailsGrpBxVisible
        {
            get { return _IsFolderDetailsGrpBxVisible; }
            set { _IsFolderDetailsGrpBxVisible = value; RaisePropertyChanged("IsFolderDetailsGrpBxVisible"); }
        }


        public bool Isbusy
        {
            get
            {
                return _isbusy;
            }

            set
            {
                _isbusy = value;
                RaisePropertyChanged("Isbusy");
            }
        }

        public ObservableCollection<Uri> Themes
        {
            get
            {
                return _themes;
            }

            set
            {
                _themes = value;
                RaisePropertyChanged("Themes");
            }
        }


        public Uri SelectedTheme
        {
            get { return _SelectTheme; }
            set
            {
                _SelectTheme = value;
                RaisePropertyChanged("SelectedTheme");

                if (_isSourceInitialized)
                    ChangeTheme(_SelectTheme);
            }
        }

        private void ChangeTheme(Uri _SelectTheme)
        {
            App.Current.Resources.Clear();
            App.Current.Resources.Source = _SelectTheme;
        }


        #endregion

        #region Constructor
        public ExplorerViewModel(IFolderExplorer folderExplorer)
        {
            _folderExplorer = folderExplorer;


            ThreadPool.QueueUserWorkItem(delegate
            {
                // Dynamic Themes based on user creation.
                var localthemes = new System.IO.DirectoryInfo("Themes").GetFiles();
                foreach (var item in localthemes)
                {
                    _themes.Add(new Uri(item.FullName));
                }

                // By default System Themes provided by Microsoft for different OS specific Vista, Windows 7 etc
                //  PresentationFramework.Aero.dll
                //  PresentationFramework.AeroLite.dll
                //  PresentationFramework.Classic.dll
                //  PresentationFramework.Luna.dll
                //  PresentationFramework.Royale.dll
                Uri uri = new Uri("pack://application:,,,/PresentationFramework.Aero;V3.0.0.0;31bf3856ad364e35;component/themes/aero.normalcolor.xaml", UriKind.RelativeOrAbsolute);
                _themes.Add(uri);
                uri = new Uri("pack://application:,,,/PresentationFramework.Classic,Version=3.0.0.0,Culture=neutral,PublicKeyToken=31bf3856ad364e35;component/themes/Classic.xaml", UriKind.RelativeOrAbsolute);
                _themes.Add(uri);
                uri = new Uri("pack://application:,,,/PresentationFramework.Royale,Version=3.0.0.0,Culture=neutral,PublicKeyToken=31bf3856ad364e35;component/themes/royale.normalcolor.xaml", UriKind.RelativeOrAbsolute);
                _themes.Add(uri);
                uri = new Uri("pack://application:,,,/PresentationFramework.Luna,Version=3.0.0.0,Culture=neutral,PublicKeyToken=31bf3856ad364e35;component/themes/luna.homestead.xaml", UriKind.RelativeOrAbsolute);
                _themes.Add(uri);
                uri = new Uri("pack://application:,,,/PresentationFramework.Luna,Version=3.0.0.0,Culture=neutral,PublicKeyToken=31bf3856ad364e35;component/themes/luna.metallic.xaml", UriKind.RelativeOrAbsolute);
                _themes.Add(uri);
                uri = new Uri("pack://application:,,,/PresentationFramework.Luna,Version=3.0.0.0,Culture=neutral,PublicKeyToken=31bf3856ad364e35;component/themes/luna.normalcolor.xaml", UriKind.RelativeOrAbsolute);
                _themes.Add(uri);
            }
            );

            _drives = _folderExplorer.GetAllDrivesInSystem();

            IsFolderDetailsGrpBxVisible = Visibility.Collapsed;
            OpenSelectedItemCommand = new RelayCommand(OpenSelectedItem);
            SetSelectedItemCommand = new RelayCommand(TreeviewFileSelected);
            _isSourceInitialized = true;
        }
        #endregion

        #region Helper Methods

        private string GetPathFromParentItem(MenuItem menuItem)
        {
            string path = "";

            if (menuItem != null && menuItem.parentItem == null)
            {
                path = menuItem.Title;
                return path;
            }
            else
            {
                path = GetPathFromParentItem(menuItem.parentItem) + "\\" + menuItem.Title;//"
            }
            return path;
        }

        #endregion

        void OpenSelectedItem(object parameter)
        {
            if (SelectedItemPath != null)
            {
                Process.Start("explorer.exe", SelectedItemPath);
            }
        }

        void TreeviewFileSelected(object parameter)
        {
            MenuItem selectedItem = parameter as MenuItem;

            if (selectedItem != null)
            {
                SelectedItemPath = SelectedDrive.DriveName + ":\\" + GetPathFromParentItem(selectedItem);
                IsFolderDetailsGrpBxVisible = Visibility.Visible;
            }
        }

        private void HandleDriveSelectionChange()
        {
            Isbusy = true;

            ThreadPool.QueueUserWorkItem(delegate
            {
                //simulate some work load
                Folders = _folderExplorer.GetAllFoldersInDriveOrFolder(SelectedDrive, null);
                Isbusy = false;
            });
        }

        private Folder HandleFolderSelectionChanged()
        {
            if (SelectedFolder != null)
            {
                IsFolderDetailsGrpBxVisible = Visibility.Visible;
            }

            else
            {
                IsFolderDetailsGrpBxVisible = Visibility.Collapsed;
            }
            MenuItem root = _folderExplorer.BuildMenuItem(SelectedFolder, null);
            MenuItems.Add(root);
            RaisePropertyChanged("MenuItems");
            return SelectedFolder;
        }

    }
}
