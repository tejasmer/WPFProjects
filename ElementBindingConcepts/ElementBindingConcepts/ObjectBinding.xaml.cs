using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Windows;
using System.Windows.Input;

namespace ElementBindingConcepts
{
    /// <summary>
    /// Interaction logic for ObjectBinding.xaml
    /// </summary>
    public partial class ObjectBinding : Window
    {
        public ObjectBinding()
        {
            InitializeComponent();
            this.DataContext = new Person() { FirstName = "Tejas", LastName = "Mer", Age = 32 };
        }
    }

    public class Person : INotifyPropertyChanged
    {
        private string _firstName;
        private string _lastName;
        private int _age;

        private RelayCommand _OkCommand = new RelayCommand((x) =>
        {
            MessageBox.Show("Okay Clicked");
        });

        private RelayCommand _CanCelCommand = new RelayCommand((x) =>
        {
            MessageBox.Show("Cancel Clicked");
        });

        public Person()
        {

        }


        public event System.EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }


        public string FirstName
        {
            get
            {
                return _firstName;
            }

            set
            {
                _firstName = value;
                OnPropertyChanged("FirstName");
            }
        }

        public string LastName
        {
            get
            {
                return _lastName;
            }

            set
            {
                _lastName = value;
                OnPropertyChanged("LastName");
            }
        }

        public int Age
        {
            get
            {
                return _age;
            }

            set
            {
                _age = value;
                OnPropertyChanged("Age");
            }
        }

        public RelayCommand OkCommand
        {
            get
            {
                return _OkCommand;
            }


        }

        public RelayCommand CanCelCommand
        {
            get
            {
                return _CanCelCommand;
            }


        }

        private void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public event PropertyChangedEventHandler PropertyChanged;
    }


    public class RelayCommand : ICommand
    {
        #region Fields

        readonly Action<object> _execute;
        readonly Predicate<object> _canExecute;

        #endregion // Fields

        #region Constructors

        public RelayCommand(Action<object> execute)
            : this(execute, null)
        {
        }

        public RelayCommand(Action<object> execute, Predicate<object> canExecute)
        {
            if (execute == null)
                throw new ArgumentNullException("execute");

            _execute = execute;
            _canExecute = canExecute;
        }
        #endregion // Constructors

        #region ICommand Members

        public bool CanExecute(object parameter)
        {
            return _canExecute == null ? true : _canExecute(parameter);
        }

        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        public void Execute(object parameter)
        {
            _execute(parameter);
        }

        #endregion // ICommand Members
    }
}
