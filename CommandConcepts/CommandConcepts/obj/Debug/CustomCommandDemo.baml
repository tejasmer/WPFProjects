   M S B A M L   `   `   `  ����J  FCommandConcepts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:CommandConceptsCommandConcepts  5   	   '    !CommandConcepts.CustomCommandDemo   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:CommandConcepts     5   	     � Title$  CustomCommandDemo��5   	   $	��300��6#   $	��300��60    � 	Resources 5	       �� 
TargetType �� Property �� Value��%�  '��       '�� L     '�� �     �� 5
   
   " ��6   .�5      ��  � ��$ 5q�6'   63   5      �� 5   
   " ��6   .�5      ��  � ��$ 5,5,5,0q�6'   69   �� 5       � ��$ 5q�6(   64   �� 5       � ��
 �����6;   5      �� 5   
   " ��6   .�5      ��  � ��$ Right=�64   6D   �� 5       � ��$ 5q�6'   63   �� 5       � ��$ 90��6'   64   5      5      .��5      �  � ShowGridLines .  � ColumnDefinitions 5   
   �� 5      $
��Auto �6   6.   �� 5      6!    � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5       $
��Auto �6   6,   �� 5!      6   �� 5"      $
��Auto �6   6,   .+�5$   
   �� .��6   
First Name6   �� 5%   
   $��1��6   ��6#   �� *	FirstName+ �� UpdateSourceTrigger$ PropertyChanged=�6f   �� 5&   
   $��1��6   .��6   	Last Name6*   �� 5'   
   $��1��6   $��1��6"   ��6/   �� *
LastName+$ PropertyChanged=�6q   �� 5(   
   $��2��6   $��2��6)   	 �� Orientation$	 
Horizontal=�66   $��Right=�6O   .+�5)      �� ��6   �� *
AddCommand+��64   �� *.+.��6T   Add6Y   �� 5*      ��6   �� *RemoveCommand+��67   �� *.+.��6W   Remove6_   5+      �� 5,   
   $��3��6   .��6   Names6$   �� 5-   
   $��1��6   $��3��6"   $��5q�6s   
���������6/   �� *Names+
 �� SelectedItem
 6M   �� *SelectedName+5.      �� 5/   
   $��2��6   $��4��6%   ��62   �� *InfoCommand+.��6R   Info6X   50      51      