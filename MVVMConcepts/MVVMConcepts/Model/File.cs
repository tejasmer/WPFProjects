
namespace MVVMConcepts.Model
{
    public class File : GenericRecord
    {
        string _FileName;
        string _FilePath;

        public string FileName
        {
            get { return _FileName; }
            set
            {
                _FileName = value;
                RaisePropertyChanged("FileName");
            }
        }

        public string FilePath
        {
            get
            {
                return _FilePath;
            }
            set
            {
                _FilePath = value;
                RaisePropertyChanged("FilePath");
            }
        }


        public override string ToString()
        {
            return _FileName;
        }
    }
}
