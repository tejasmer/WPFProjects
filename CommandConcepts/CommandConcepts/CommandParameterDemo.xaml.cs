using System;
using System.ComponentModel;
using System.Globalization;
using System.Windows;
using System.Windows.Data;
using System.Windows.Input;
using System.Linq;

namespace CommandConcepts
{
    /// <summary>
    /// Interaction logic for CommandParameterDemo.xaml
    /// </summary>
    public partial class CommandParameterDemo : Window, INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        private ICommand _buttonCommad;
        private int _one;
        private int _two;
        private int _three;
        private string _result;

        public CommandParameterDemo()
        {
            InitializeComponent();
            DataContext = this;

            _buttonCommad = new RelayCommand(
                new Action<object>((x) => { Result = Convert.ToString(x); }),
                new Predicate<object>((x) => { return true; })
                );
           
            _one = 1; _two = 2; _three = 3;
        }

        private void RaisePropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public ICommand ButtonCommad
        {
            get
            {
                return _buttonCommad;
            }

            set
            {
                _buttonCommad = value;
            }
        }

        public int One
        {
            get
            {
                return _one;
            }

            set
            {
                _one = value;
                RaisePropertyChanged("One");
            }
        }

        public int Three
        {
            get
            {
                return _three;
            }

            set
            {
                _three = value;
                RaisePropertyChanged("Three");
            }
        }

        public int Two
        {
            get
            {
                return _two;
            }

            set
            {
                _two = value;
                RaisePropertyChanged("Two");
            }
        }

        public string Result
        {
            get
            {
                return _result;
            }

            set
            {
                _result = value;
                RaisePropertyChanged("Result");
            }
        }
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


    public class ConverterKey : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            if (values.Any(x => x == null || x == string.Empty))
                return null;
            else
            {
              return  values.ToList().ConvertAll<int>(new Converter<object, int>((x) => { return System.Convert.ToInt32(x) ; } )).Sum();
            }
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            return null;
        }
    }
}
