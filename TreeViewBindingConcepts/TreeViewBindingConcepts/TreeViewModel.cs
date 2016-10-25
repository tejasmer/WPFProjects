using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TreeViewBindingConcepts
{
    public class TreeViewModel: ViewModelBase
    { 
        ObservableCollection<Department> _departments;


        public TreeViewModel()
        {
            _departments = new ObservableCollection<TreeViewBindingConcepts.Department>()

            {
                new TreeViewBindingConcepts.Department()
                {
                    DepartmentName ="Dept1",
                     Courses = new ObservableCollection<TreeViewBindingConcepts.Course>()
                     {
                          new TreeViewBindingConcepts.Course()
                          {
                              CourseName = "C1",
                              Books = new ObservableCollection<TreeViewBindingConcepts.Book>()
                              {
                                  new TreeViewBindingConcepts.Book() { BookName ="C1B1" },
                                  new TreeViewBindingConcepts.Book() { BookName ="C1B2" },
                                  new TreeViewBindingConcepts.Book() { BookName ="C1B3" }
                              }
                          },
                          new TreeViewBindingConcepts.Course()
                          {
                              CourseName = "C2",
                              Books = new ObservableCollection<TreeViewBindingConcepts.Book>()
                              {
                                  new TreeViewBindingConcepts.Book() { BookName ="C2B1" },
                                  new TreeViewBindingConcepts.Book() { BookName ="C2B2" },
                                  new TreeViewBindingConcepts.Book() { BookName ="C2B3" }
                              }
                          }
                     }
                },

                new TreeViewBindingConcepts.Department()
                {
                    DepartmentName ="Dept2",
                     Courses = new ObservableCollection<TreeViewBindingConcepts.Course>()
                     {
                          new TreeViewBindingConcepts.Course()
                          {
                              CourseName = "D2C1",
                              Books = new ObservableCollection<TreeViewBindingConcepts.Book>()
                              {
                                  new TreeViewBindingConcepts.Book() { BookName ="C1B1" },
                                  new TreeViewBindingConcepts.Book() { BookName ="C1B2" },
                                  new TreeViewBindingConcepts.Book() { BookName ="C1B3" }
                              }
                          },
                          new TreeViewBindingConcepts.Course()
                          {
                              CourseName = "D2C2",
                              Books = new ObservableCollection<TreeViewBindingConcepts.Book>()
                              {
                                  new TreeViewBindingConcepts.Book() { BookName ="C2B1" },
                                  new TreeViewBindingConcepts.Book() { BookName ="C2B2" },
                                  new TreeViewBindingConcepts.Book() { BookName ="C2B3" }
                              }
                          }
                     }
                }
            };

        }

        public ObservableCollection<Department> Departments
        {
            get
            {
                return _departments;
            }

            set
            {
                _departments = value;
                RaisePropertyChanged("Departments");
            }
        }
    }

    

  

   


}


