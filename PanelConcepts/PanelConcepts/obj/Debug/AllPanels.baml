   M S B A M L   `   `   `  ����H  DPanelConcepts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:PanelConceptsPanelConcepts  5   	       PanelConcepts.AllPanels   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:PanelConcepts     5   	     � Title$O  IAllPanels - Grid as Container, (Wrap Top), (Stack Left), (Dock in Center)��5   	   $	��300��6[   $	��800��6h   .��5	      � 
��� ��� � RowDefinitions 5
   
   �� 5      $
��Auto �6   6-   �� 5      6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   6/   �� 5      6!   .+�5   
   � $��0��6   $��0��6$   $��2��61   
����� �.+�5      �� .��6   File6   �� 5      .��6   Edit6   �� 5      .��6   View6   �� 5      .��6   Tools6   �� 5      .��6   Help6   5      �� 5   
   $��1��6   $��0��6"   
��� � �.+�5      �� .��6   One6   �� 5      .��6   Two6   �� 5      .��6   Three6   �� 5      .��6   Four6   �� 5      .��6   Five6   5      ]� 5    
   $��1��6   $��1��6!   
�������.+�5!      �� -   5         ��Name$	 txt��5!   8   $	��Top=�6   $	��100��6+    �� AcceptsReturn . .��6Z   Type here what ever you want:6y   �� 5"       �� 
IsReadOnly . {�.  ��6   ��  �� ElementName$	 txt�� �� Path$
 Text� �� UpdateSourceTrigger$ PropertyChanged=�6�   5#      5$      5%      