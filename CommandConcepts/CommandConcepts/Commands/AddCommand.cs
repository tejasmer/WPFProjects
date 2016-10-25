using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace CommandConcepts
{
    public class AddCommand : ICommand

    {
        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove  { CommandManager.RequerySuggested -= value; }
        }

        public bool CanExecute(object parameter)
        {
            var namelist = parameter as NameList;
            return namelist != null && !string.IsNullOrWhiteSpace(namelist.FirstName) && !string.IsNullOrWhiteSpace(namelist.LastName);
        }

        public void Execute(object parameter)
        {
            var namelist = parameter as NameList;
            var newname = string.Format("{0} {1} ", namelist.FirstName, namelist.LastName);
            namelist.Names.Add(newname);
            namelist.FirstName = namelist.LastName = "";
        }
    }
}
