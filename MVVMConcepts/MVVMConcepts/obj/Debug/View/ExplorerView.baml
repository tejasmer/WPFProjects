   M S B A M L   `   `   `  ����G  CMVVMConcepts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:MVVMConcepts.ViewModelMVVMConcepts.ViewModel  5   	   7 clr-namespace:MVVMConcepts.ModelMVVMConcepts.Model  5   	   ;"clr-namespace:MVVMConcepts.HelpersMVVMConcepts.Helpers  5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity 5	   	   +clr-namespace:MVVMConceptsMVVMConcepts  5
   	       MVVMConcepts.ExplorerView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3vm$clr-namespace:MVVMConcepts.ViewModel     5   	   0mod clr-namespace:MVVMConcepts.Model     5   	   6helpers"clr-namespace:MVVMConcepts.Helpers     5   	   ^iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity     5	   	   ,localclr-namespace:MVVMConcepts     5
   	   -   5          �Name$  mainPane��5   	    � Title$ Folder Explorer��5   	   $	��570��6!   $	��525��6.   $	��670��6:   $	��525��6J   $	��750��6Y   $
��525 ��6i   .��5      �� .u�5   
   � -   5         �Name$	 grd��5   $    � ShowGridLines .  � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $��* �6     � ColumnDefinitions 5      �� 5      $
��Auto �6#   .+�5      �� $��2,2,2,2q�6   $(��"Select Theme for the Appliaiton UI��6(   
���   �$	��Top=�6j   $
��Left=�6�   $��0��6�   $	��500��6�   .��5      �  � Orientation$ 
Horizontal=�6   .+�5       �� $
��Bold"�6    $��Available Themes ��62   $��2,2,2,2q�6K   �� 5!       �� DisplayMemberPath$ 	LocalPath��6f   $��2,2,2,2q�6�   $	��250��6�   ��6    �� *Themes+ �� SelectedItem 6?   �� *SelectedTheme+6�   5"      5#      �� 5%      $��2,2,2,2q�6   $��Drive��6(   $	��Top=�68   $
��Left=�6P   
���  ��$��0��6�   $��1��6�   $	��500��6�   .��5&      � $ 
Horizontal=�6   .+�5'      �� $
��Bold"�6    $��Available Drive(s):��62   $��2,2,2,2q�6M   �� 5(      $ 	DriveName��6f   $��2,2,2,2q�6�   $��80��6�   ��6    �� *Drives+ 6?   �� *SelectedDrive+6�   5*      5+      �� 5-      $��2,2,2,2q�6   $��Folder��6(   $	��Top=�6:   $��0��6R   $��2��6b   
��� � �y�6p   �� *IsFolderGrpBxVisible+.��5.      � $ 
Horizontal=�6   .+�5/      �� $
��Bold"�6    $��Select Folder:��62   $	��105��6I   �� 50      $
��Left=�6h   $ 
FolderName��6�   $��5,3,3,5q�6�   $	��250��6�   ��6   �� *	Folders+ 6?   �� *SelectedFolder+6�   52      53      �� 56      $��2,2,2,2q�6   $��Folder Details��6)   $	��Top=�6B   
����  �$��3��6o   $	��350��6|   $
��500 ��6�   y�6�   �� *IsFolderDetailsGrpBxVisible+.��57      R� $��	0,0,94,45q�6>   ��6   �� *	MenuItems+��58      �� 59      	 �� DataType!   MVVMConcepts.Model.MenuItem"	  63   
 �� ItemsSource
 6T   �� *Items+.R�5:      � .+�5;   "   ��  ��Name$	 img��6(   67   �� 5<   "   $��3,0,0,0q�6C   ��6,   �� *Title+6C   5=       �� Triggers 5>      �� 5?   "    �� Value$
 True��6K    �� Binding 6.   �� *
IsFolder+.a�5@   &   ��  �� 
TargetName$	 img��6-    �� Property � �� �� Value$( "/MVVMConcepts;component/Folder.png��6P   5A   #   �� 5B   "   $ False��6K    6.   �� *
IsFolder+.a�5C   &   �� $	 img��6-    � ��$&  /MVVMConcepts;component/File.png��6P   5D   #   5F      .  (System.Windows.Interactivity.Interaction   Triggers 5J      /  )System.Windows.Interactivity.EventTrigger  5K         	EventName$ SelectedItemChanged��6)   .  (System.Windows.Interactivity.TriggerBase   Actions. 5L      6  0System.Windows.Interactivity.InvokeCommandAction     Command 64   �� *SetSelectedItemCommand+   CommandParameter 6_   ��  �� RelativeSource �� *FindAncestor+ �� AncestorType" R� �� AncestorLevel$ 1�� �� Path$ SelectedItem�5M      5O      5P      �� 5R      $��2,2,2,2q�6   $��Open File/Folder��6(   
���   �$	��Top=�6X   $
��Left=�6p   $��4��6�   $	��500��6�   y�6�   �� *IsFolderDetailsGrpBxVisible+.��5S      ��  �� Orientation$ 
Horizontal=�6   .+�5T      �� $��5,5,5,5q�6A   $��30��6R   $	��300��6^   ��6   �� *SelectedItemPath+6^   �� 5U      $
��Open��6   $��5,5,5,5q�6Y   $��50��6j   $��25��6u   ��6-   �� *OpenSelectedItemCommand+6u   5V      5W      5Y      5Z      5[      