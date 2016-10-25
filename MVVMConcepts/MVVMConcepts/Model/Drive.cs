using System.Collections.ObjectModel;

namespace MVVMConcepts.Model
{
    public class Drive : GenericRecord
    {
        string _DriveName;
        private ObservableCollection<Folder> _Folders;
        private ObservableCollection<Model.File> _Files;

        public string DriveName
        {
            get { return _DriveName; }
            set
            {
                _DriveName = value;
                RaisePropertyChanged("DriveName");
            }
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

        public ObservableCollection<Model.File> Files
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
            return _DriveName;
        }
    }
}
