using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CommandConcepts
{
    public class NameList : INotifyPropertyChanged
    {

        private string _firstName;
        private string _lastName;
        private string _selectedName;


        InfoCommand _InfoCommand = new InfoCommand();
        AddCommand _addCommand = new AddCommand();
        RemoveCommand _removeCommand = new RemoveCommand();


        public NameList()
        {
            Names = new ObservableCollection<string>();
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

        public string SelectedName
        {
            get
            {
                return _selectedName;
            }

            set
            {
                _selectedName = value;
                OnPropertyChanged("SelectedName");
            }
        }

        public ObservableCollection<string> Names { get; private set; }

        public InfoCommand InfoCommand
        {
            get
            {
                return _InfoCommand;
            }


        }

        public AddCommand AddCommand
        {
            get
            {
                return _addCommand;
            }
        }

        public RemoveCommand RemoveCommand
        {
            get
            {
                return _removeCommand;
            }
        }

        private void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public event PropertyChangedEventHandler PropertyChanged;
    }
}
