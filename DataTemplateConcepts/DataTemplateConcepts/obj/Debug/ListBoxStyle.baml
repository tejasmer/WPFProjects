   M S B A M L   `   `   `  ����O  KDataTemplateConcepts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:DataTemplateConceptsDataTemplateConcepts  5   	   '    !DataTemplateConcepts.ListBoxStyle   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:DataTemplateConcepts     5   	     � Title$  ListBoxStyle��5   	   $	��500��6   $	��300��6+   .��5	      �  � RowDefinitions 5
   
   �� 5      $��* �6   6)   �� 5      $
��Auto �6   6,   �� 5      $��* �6   6)   .+�5   
   �  5      �� 5      $��* �6    6-   �� 5      $
��Auto �6    60   .+�5      �� -   5        $��lstProducts��5      $��5q�6)    �� DisplayMemberPath$ 	ModelName��64    �� AlternationCount$ 2��6R   ��5      �� 5       �� 
TargetType" ��6   .�5      ��  �� Property � �� �� Value
 ��İ�67   �� 5       � ��$ 5q�63   6?   �� 5       � ��$ 5q�64   6@    �� Triggers 5      P� 5       P� Property �@��AlternationIndex	 P� Value$	 1��6O   . �5   "   ��  � ��
 ��ح�6?   5      P� 5        �@��
IsSelected	 . . �5!   "   ��  � ��
 �  ��6?   �� 5"   "    � ��
 �����6?   �� 5#   "    � ��
 �   �6@   �� 5$   "    � ��$ 1q�6D   5%      5(      5,      �� 5-      $��1��6   $��Right=�6&   
 �� Orientation$
 
Horizontal=�6B   $��5,2,5,10q�6[   .+�5.      �� -   5        $��2,0,0,0q�5.      $��2q�6+   .��5/   ,   Get Products6:   50      51      �� 53   
   $��1��6   $��Stretch=�6$   $��Bottom=�6B    �� ResizeBehavior$ PreviousAndNext=�6]   $��5��6~   6�   �� 54   
   $��2��6    �� Padding$ 7q�6   $��7q�6*   
����İ�._�55      �  � DataContext 6   ��  �� ElementName$ lstProducts�� �� Path$ SelectedItem� � ColumnDefinitions 56      �� 57      $
��Auto �6'   66   �� 58      6)    5:      �� 5;      $
��Auto �6$   64   �� 5<      $
��Auto �6$   64   �� 5=      $
��Auto �6$   64   �� 5>      $
��Auto �6$   64   �� 5?      $��* �6$   61   .+�5B      �� $��7q�6   Model Number:66   �� 5C      $��5q�6   $��1��6%   ��65   �� $ ModelNumber�6Y   �� 5D      $��7q�6   $��1��6'   Model Name:6A   �� 5E      $��5q�6   $��1��6%   $��1��62   ��6B   �� $ 	ModelName�6d   �� 5F      $��7q�6   $��2��6'   
Unit Cost:6@   �� 5G      $��5q�6   $��2��6%   $��1��62   ��6B   �� $ UnitCost�6c   �� 5H      $��7,7,7,0q�6   $��3��6-   Description:6H   �� 5I      $��7q�6   $��4��6%   $��0��62   $��2��6B    �� TextWrapping$
 Wrap=�5J      " �� VerticalScrollBarVisibility$ Visible=�6&   ��6L   �� $ Description�6p   5K      5L      5M      5N      