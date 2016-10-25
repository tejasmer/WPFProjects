using System.Collections.ObjectModel;

namespace MVVMConcepts.Model
{
    public class MenuItem
    {
        public MenuItem()
        {
            this.Items = new ObservableCollection<MenuItem>();
        }
        public string Title { get; set; }

        public bool IsFolder { get; set; }

        public ObservableCollection<MenuItem> Items { get; set; }

        public MenuItem parentItem { get; set; }
    }
}
