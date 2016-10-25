using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TreeViewBindingConcepts
{
    public class Course : ViewModelBase
    {
        private string _courseName;
        ObservableCollection<Book> _books;

        public string CourseName
        {
            get
            {
                return _courseName;
            }

            set
            {
                _courseName = value;
                RaisePropertyChanged("CourseName");
            }
        }

        public ObservableCollection<Book> Books
        {
            get
            {
                return _books;
            }

            set
            {
                _books = value;
                RaisePropertyChanged("Books");
            }
        }
    }
}
