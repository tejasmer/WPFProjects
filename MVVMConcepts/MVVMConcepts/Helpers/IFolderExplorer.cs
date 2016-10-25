using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections.ObjectModel;
using MVVMConcepts.Model;

namespace MVVMConcepts.Helpers
{
    public interface IFolderExplorer
    {
        ObservableCollection<Drive> GetAllDrivesInSystem();
        ObservableCollection<Model.File> GetAllFilesInDriveOrFolder(Drive drive, Folder folder);
        ObservableCollection<Folder> GetAllFoldersInDriveOrFolder(Drive drive, Folder folder);
        MenuItem BuildMenuItem(Folder folderContent, MenuItem parentMenuItem);
        MenuItem BuildMenuItem(Model.File file, MenuItem parentMenuItem);

    }
}
