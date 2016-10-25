using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace CommandConcepts
{
    public class RemoveCommand : ICommand

    {
        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        public bool CanExecute(object parameter)
        {
            var namelist = parameter as NameList;
            return namelist != null && namelist.SelectedName !=null;
        }

        public void Execute(object parameter)
        {
            var namelist = parameter as NameList;
            var oldName = namelist.SelectedName;
            namelist.Names.Remove (oldName);
            namelist.FirstName = namelist.LastName = "";
        }
    }
}
