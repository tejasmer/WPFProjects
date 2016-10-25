using System;

namespace TreeViewBindingConcepts
{

    public class Book : ViewModelBase
    {
        private string _bookName;
        public string BookName
        {
            get
            {
                return _bookName;
            }

            set
            {
                _bookName = value;
                RaisePropertyChanged("Book");
            }
        }

    }
}
