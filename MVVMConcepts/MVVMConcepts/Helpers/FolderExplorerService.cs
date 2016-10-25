using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MVVMConcepts.Model;
using System.Collections.ObjectModel;
using System.IO;
using MVVMConcepts.ViewModel;

namespace MVVMConcepts
{
    public class FolderExplorerService : MVVMConcepts.Helpers.IFolderExplorer
    {
        public ObservableCollection<Drive> GetAllDrivesInSystem()
        {
            string[] arrDrives = System.IO.Directory.GetLogicalDrives();

            ObservableCollection<Drive> drives = new ObservableCollection<Drive>();

            if (arrDrives != null && arrDrives.Length > 0)
            {
                foreach (string s in arrDrives)
                {
                    string temp = null;

                    if (s != null && s.Contains(":") && !s.Contains("C"))
                    {
                        int indexOfColon = s.IndexOf(":");
                        temp = s.Remove(indexOfColon);

                        Drive newDrive = new Drive();
                        newDrive.DriveName = temp;

                        //ObservableCollection<Folder> foldersInDrive = GetAllFoldersInDriveOrFolder(newDrive, null);
                        //newDrive.Folders = foldersInDrive;

                        //ObservableCollection<Model.File> filesInDrive = GetAllFilesInDriveOrFolder(newDrive, null);
                        //newDrive.Files = filesInDrive;

                        drives.Add(newDrive);
                    }
                }
            }
            return drives;
        }

        public ObservableCollection<Model.File> GetAllFilesInDriveOrFolder(Drive drive, Folder folder)
        {
            ObservableCollection<Model.File> files = new ObservableCollection<Model.File>();

            if (folder == null)
            {
                System.IO.DriveInfo di = new System.IO.DriveInfo(drive.DriveName + ":\\");
                System.IO.DirectoryInfo dirInfo = di != null ? di.RootDirectory : null;

                DirectoryInfo[] dirInfoFolders = dirInfo != null ? dirInfo.GetDirectories() : null;

                FileInfo[] fileInfo = dirInfo != null ? dirInfo.GetFiles() : null;

                if (fileInfo != null && fileInfo.Length > 0)
                {
                    foreach (FileInfo item in fileInfo)
                    {
                        FileAttributes attributes = item.Attributes;

                        string attrNames = Convert.ToString(attributes);

                        if (attrNames != null && !attrNames.Contains("Hidden"))
                        {
                            Model.File file = new Model.File();
                            file.FileName = item.Name;
                            files.Add(file);
                        }
                    }
                }
            }
            else
            {
                try
                {
                    string[] filesInFolder = Directory.GetFiles(folder.FolderPath);

                    if (filesInFolder != null && filesInFolder.Length > 0)
                    {
                        foreach (string item in filesInFolder)
                        {
                            int folderPathLength = folder.FolderPath.Length;

                            string fileInFolder = null;

                            fileInFolder = item.Remove(0, folderPathLength + 1);

                            Model.File file = new Model.File();

                            file.FileName = fileInFolder;
                            file.FilePath = item;

                            files.Add(file);
                        }
                    }
                }
                catch (Exception)
                {
                }

            }

            return files;
        }

        public ObservableCollection<Folder> GetAllFoldersInDriveOrFolder(Drive drive, Folder folder)
        {
            ObservableCollection<Folder> folders = new ObservableCollection<Folder>();

            if (folder == null)
            {
                System.IO.DriveInfo di = new System.IO.DriveInfo(drive.DriveName + ":\\");//"
                System.IO.DirectoryInfo dirInfo = di != null ? di.RootDirectory : null;

                DirectoryInfo[] dirInfoFolders = dirInfo != null ? dirInfo.GetDirectories() : null;

                FileInfo[] fileInfo = dirInfo != null ? dirInfo.GetFiles() : null;
                if (dirInfoFolders != null && dirInfoFolders.Length > 0)
                {
                    foreach (DirectoryInfo item in dirInfoFolders)
                    {
                        FileAttributes attributes = item.Attributes;

                        string attrNames = Convert.ToString(attributes);

                        if (attrNames != null && !attrNames.Contains("Hidden"))
                        {
                            Folder newFolder = new Folder();
                            newFolder.FolderName = item.Name;
                            newFolder.FolderPath = drive.DriveName + ":\\" + newFolder.FolderName;//"

                            ObservableCollection<Folder> subFolders = GetAllFoldersInDriveOrFolder(drive, newFolder);
                            newFolder.Folders = subFolders;

                            ObservableCollection<Model.File> files = GetAllFilesInDriveOrFolder(drive, newFolder);
                            newFolder.Files = files;
                            folders.Add(newFolder);
                        }
                    }
                }
            }
            else
            {
                try
                {
                    string[] subFolders = Directory.GetDirectories(folder.FolderPath);
                    Folder subfolder = new Folder();
                    if (subFolders != null && subFolders.Length > 0)
                    {
                        foreach (string item in subFolders)
                        {
                            int folderPathLength = folder.FolderPath.Length;

                            string fldr = null;

                            fldr = item.Remove(0, folderPathLength + 1);

                            subfolder = new Folder();

                            subfolder.FolderName = fldr;
                            subfolder.FolderPath = item;
                            subfolder.Folders = GetAllFoldersInDriveOrFolder(drive, subfolder);
                            subfolder.Files = GetAllFilesInDriveOrFolder(drive, subfolder);

                            folders.Add(subfolder);
                        }
                    }

                }
                catch (Exception)
                {
                }

            }

            return (folders != null && folders.Count > 0) ? folders : null;
        }

        public MenuItem BuildMenuItem(Folder folderContent, MenuItem parentMenuItem)
        {
            MenuItem root = new MenuItem() { Title = folderContent.FolderName, parentItem = parentMenuItem ,IsFolder=true };

            ObservableCollection<Folder> foldersInFolder = folderContent.Folders;
            ObservableCollection<Model.File> filesInFolder = folderContent.Files;

            if (foldersInFolder != null && foldersInFolder.Count > 0 && ((filesInFolder == null) || filesInFolder.Count == 0))
            {
                for (int i = 0; i < foldersInFolder.Count; i++)
                {
                    MenuItem item = BuildMenuItem(foldersInFolder[i], root);
                    root.Items.Add(item);
                }
            }

            if ((foldersInFolder == null || foldersInFolder.Count == 0) && filesInFolder != null && filesInFolder.Count > 0)
            {
                for (int i = 0; i < filesInFolder.Count; i++)
                {
                    MenuItem item = BuildMenuItem(filesInFolder[i], root);
                    root.Items.Add(item);
                }
            }

            if (foldersInFolder != null && foldersInFolder.Count > 0 && filesInFolder != null && filesInFolder.Count > 0)
            {
                bool itemsAdded = false;
                for (int i = 0; (i < foldersInFolder.Count + filesInFolder.Count && !itemsAdded); i++)
                {
                    if (i >= foldersInFolder.Count)
                    {
                        for (int j = 0; j < filesInFolder.Count; j++)
                        {
                            MenuItem item = BuildMenuItem(filesInFolder[j], root);
                            root.Items.Add(item);
                            itemsAdded = true;
                        }
                    }
                    else
                    {
                        MenuItem item = BuildMenuItem(foldersInFolder[i], root);
                        root.Items.Add(item);
                    }
                }
            }
            return root;
        }

        public MenuItem BuildMenuItem(Model.File file, MenuItem parentMenuItem)
        {
            MenuItem root = new MenuItem() { Title = file.FileName, parentItem = parentMenuItem };
            return root;
        }

    }
}
