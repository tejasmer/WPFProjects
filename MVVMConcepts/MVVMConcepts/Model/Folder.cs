using System;
using System.Collections.ObjectModel;

namespace MVVMConcepts.Model
{
    public class Folder : GenericRecord
    {
        string _FolderName;
        string _FolderPath;
        private ObservableCollection<Folder> _Folders;
        private ObservableCollection<File> _Files;

        public string FolderName
        {
            get { return _FolderName; }
            set
            {
                _FolderName = value;
                RaisePropertyChanged("FolderName");
            }
        }
        public string FolderPath
        {
            get { return _FolderPath; }
            set { _FolderPath = value; RaisePropertyChanged("FolderPath"); }
        }

        public ObservableCollection<Folder> Folders
        {
            get { return _Folders; }
            set
            {
                _Folders = value;
                RaisePropertyChanged("Folders");
            }
        }
        public ObservableCollection<File> Files
        {
            get { return _Files; }
            set
            {
                _Files = value;
                RaisePropertyChanged("Files");
            }
        }

        public override string ToString()
        {
            return _FolderName;
        }
    }
}
