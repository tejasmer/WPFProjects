   M S B A M L   `   `   `  ����O  KDataTemplateConcepts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:DataTemplateConceptsDataTemplateConcepts  5   	   6    0DataTemplateConcepts.ListBoxAdvancedDataTemplate   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:DataTemplateConcepts     5   	     � Title$!  ListBoxAdvancedDataTemplate��5   	   $	��420��6-   $	��675��6:    � 	Resources 5	      -   'DataTemplateConcepts.ImagePathConverter   ImagePathConverter��%   &	          5
   
   6@   5      .��5      �  � ColumnDefinitions 5   
   �� 5      $��3* �6   6,   �� 5      $��5* �6   6,   .+�5   
   �  � RowDefinitions 5      �� 5      $
��Auto �6    60   �� 5      $��* �6    6-   .+�5      �� -   5        $��7,7,7,0q�5      $��2q�6&   .��6O   Get Products6]   �� 5      -   5        $��lstProducts��5   5   $��1��6   $��7,3,7,10q�6#   $��Stretch=�6H    J� SnapsToDevicePixels . ��5      �� 5      .�5      ��  �� Property � �� �� Value$ 0q�6<   6H    �� Triggers 5      P� 5       P� Property �@��
IsSelected	 P� Value	 . . �5   "   ��  � ��
 �  ��6K   5       5"      ��5$      �� 5%      .R�5&      � $��0q�6   
�������.+�5'      �� $��5q�6%   $��1q�60   
�����F�
 �� CornerRadius$
 4��5/      ��5(      ��  �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType" �� �� Path$ 
Background�._�50   "   � $��3q�6'    51   &   �� 52   *   6:   �� 53   *   6:   �� 54   *   6:   .+�56   &   �� $
��Bold"�60   ��6B   �� $ ModelNumber�6f   �� 57   &   $��1��60   ��6=   �� $ 	ModelName�6_   �� 58   &   $��2��6,   $��2��69   ��6J   �� $ ProductImagePath� �� 	Converter# [  6�   59   #   5:      5;      5<      5>      5A      �� 5C   
   $��1��6   $
��Left=�6'   $��Stretch=�6B   $��5��6^   6j   �� 5E   
   $��1��6    �� Padding$ 7q�6!   $��7q�6-   
����İ�._�5F      �  � DataContext 6   ��  �� ElementName$ lstProducts��$ SelectedItem� 5G      �� 5H      $
��Auto �6'   66   �� 5I      6)    5K      �� 5L      $
��Auto �6$   64   �� 5M      $
��Auto �6$   64   �� 5N      $
��Auto �6$   64   �� 5O      $
��Auto �6$   64   �� 5P      $��* �6$   61   .+�5S      �� $��7q�6   Model Number:66   �� 5T      $��5q�6   $��1��6%   ��65   �� $ ModelNumber�6Y   �� 5U      $��7q�6   $��1��6'   Model Name:6A   �� 5V      $��5q�6   $��1��6%   $��1��62   ��6B   �� $ 	ModelName�6d   �� 5W      $��7q�6   $��2��6'   
Unit Cost:6@   �� 5X      $��5q�6   $��2��6%   $��1��62   ��6B   �� $ UnitCost�6c   �� 5Y      $��7,7,7,0q�6   $��3��6-   Description:6H   �� 5Z      $��7q�6   $��4��6%   $��0��62   $��2��6B    �� TextWrapping$
 Wrap=�6V   " �� VerticalScrollBarVisibility$ Visible=�6j   ��6�   �� $ Description�6�   5\      5]      5_      5`      