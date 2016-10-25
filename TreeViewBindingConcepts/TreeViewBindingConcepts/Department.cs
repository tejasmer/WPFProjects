using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TreeViewBindingConcepts
{
    public class Department : ViewModelBase
    {
        private string _departmentName;
        ObservableCollection<Course> _courses;

        public string DepartmentName
        {
            get
            {
                return _departmentName;
            }

            set
            {
                _departmentName = value;
                RaisePropertyChanged("DepartmentName");
            }
        }

        public ObservableCollection<Course> Courses
        {
            get
            {
                return _courses;
            }

            set
            {
                _courses = value;
                RaisePropertyChanged("Courses");
            }
        }
    }
}
