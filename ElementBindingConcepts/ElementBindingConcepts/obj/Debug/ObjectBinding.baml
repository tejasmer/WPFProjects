   M S B A M L   `   `   `  ����Q  MElementBindingConcepts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:ElementBindingConceptsElementBindingConcepts  5   	   *    $ElementBindingConcepts.ObjectBinding   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:ElementBindingConcepts     5   	     � Title$J  DObjectBinding - Instance of Person Class has been set as DataContext��5   	   $	��300��6V   $	��600��6c    � 	Resources 5	       �� 
TargetType �� Property �� Value��%   '��       '�� L     �� 5
   
   " ��6   .�5      ��  � ��$ 5q�6'   63   5      �� 5   
   " ��6   .�5      ��  � ��$ 5,5,5,0q�6'   69   �� 5       � ��$ 5q�6(   64   �� 5       � ��
 �����6;   5      5      .��5      �  � ShowGridLines .  � ColumnDefinitions 5   
   �� 5      $
��Auto �6   6.   �� 5      6!    � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   .+�5   
   �� .��6   
First Name6   �� 6%   -   5         ��Name$ txtFirstName��5   J   $��1��6-   $��0��6=   ��6`   �� *	FirstName+	 �� UpdateSourceTrigger$	 PropertyChanged=�6�   �� 5    
   $��1��6   .��6   	Last Name6)   �� 63   -   5        $ txtLastName��5    K   $��1��6;   $��1��6`   ��6m   �� *
LastName+$	 PropertyChanged=�6�   �� 5!   
   $��2��6   .��6   Age6#   �� 5"   
   -   5        $ txtAge��5"   0   $��1��6   $��2��6"   ��6@   �� *Age+$	 PropertyChanged=�6}   �� 5#   
   $��1��6   $��3��6#   $	��125��60   .@�5$      �� .+�5%      �� 
��� �����6   �� 
 �� ElementName$
 txtFirstName�� �� Path$
 Text�$	 PropertyChanged=�6�   �� 5&      
��� �����6   �� $
 txtLastName��$
 Text�$	 PropertyChanged=�6�   �� 5'      
��� �����6   �� $
 txtAge��$
 Text�$	 PropertyChanged=�6�   5(      5)      �� 5*   
   $��2��6   $��4��6)    �� Orientation$ 
Horizontal=�66   $��Right=�6O   .+�5+      �� $��70��6R   $��3,5,3,5q�6`   ��6   �� *	OkCommand+��63   �� *.+.��6q   Ok6u   �� 5,      $��70��6V   $��3,5,3,5q�6d   ��6   �� *CanCelCommand+��67   �� *.+.��6u   Cancel6}   5-      5.      5/      