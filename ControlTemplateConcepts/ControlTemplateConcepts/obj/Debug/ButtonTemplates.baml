   M S B A M L   `   `   `  ����R  NControlTemplateConcepts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:ControlTemplateConceptsControlTemplateConcepts  5   	   -    'ControlTemplateConcepts.ButtonTemplates   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:ControlTemplateConcepts     5   	     � Title$H  BButtonTemplates (CustomTemplate is defined in Resources of Window)��5   	   $	��350��6T   $	��525��6a    � 	Resources 5	         ButtonTemplate �� 
TargetType �� CornerRadius  ButtonTemplateWithTrigger �� Triggers P� Property P� Value �� 
TargetName �� Property	 �� Value % !ButtonTemplateWithKeyBoardFocused
 �� StrokeDashArray J� SnapsToDevicePixels   ButtonTemplateWithAnnimation :� RoutedEvent �� 
TargetName �� TargetProperty	 �� To g� Duration g� AutoReverse g� RepeatBehavior��%#  &	        &	 �     &	 g    &	 $    �� 5
   
   " ��61   .R�5      �� 
��� ���$��3q�6*   $ 2��6>   
���  ��
�������._�5      �� ��. #��z��6>   5      5      5      �� 5   
   " ��6<   .R�5      �� $��Border��6   
��� ���$��3q�68   $ 2��6L   
���  ��
�������._�5      �� ��. #��z��6>   6c   5       5      P� 5       �@J�IsMouseOver . . �5      �� $ Border��6    � ��
	 �  ��6G   5      P� 5       � �� . . �5      �� $ Border��6    � ��
	 �\\��6G   �� 5      $ Border��6    � ��
	 �k���6H   5      5      �� 5   
   " ��6D   .R�5      �� $��Border��6   
��� ���$��3q�68   $ 2��6L   
���  ��
�������._�5       � .+�5!      �� $��FocusCue��6    $y�Hidden=�60   
���   �$��5��6S   $	
 1 2R�6g    . 6�   �� 5"      ��. #��z��6B   6g   5#      5$       5%      P� 5&       �@J�IsMouseOver . . �5'      �� $ Border��6    � ��
	 �  ��6G   5(      P� 5)       � �� . . �5*      �� $ Border��6    � ��
	 �\\��6G   �� 5+      $ Border��6    � ��
	 �k���6H   5,      P� 5-       �@J�IsKeyboardFocused . . �5.      �� $ FocusCue��6    � y�$	 Visible=�6I   5/      51      �� 52   
   " ��6?   .R�53      �� $��Border��6}   
��� ���$��3q�6*   $ 2��6>   
���  ��
�������._�54      � .+�55      �� $��FocusCue��6    $y�Hidden=�60   
���   �$��1��6S   $	
 1 2R�6g    . 6�   �� 56      ��. #��z��6B   6g   57      58       59      :� 5:      $ 
MouseEnter��6   .[�5;      �� .��5<      �� .��5=      �� $ Border��6-   $ Background.Color�6L   $
 BlueX�6y   $ 0:0:1D�6�    . $ Forever��6�   6�   5>      5?      5@      :� 5A      $ 
MouseLeave��6   .[�5B      �� .��5C      �� .��5D      �� $ Border��6-   $ Background.Color�6L   $ 0:0:0.5D�6y   6�   5E      5F      5G      5I      5J      .��5K      �  � RowDefinitions 5L   
   �� 5M      6   �� 5N      6   �� 5O      6   �� 5P      6    � ColumnDefinitions 5R   
   �� 5S      6"   .+�5U   
   �� -   5         ��Name$
 test��5U      $��0��6   #��[  6-   $��2q�6X   $��2q�6d   $��Arial)�6o   $��14(�6�   .��6�   FDSimple Button with CustomTemplate, not much impressive if you click.6�   �� 5V   
   -   5        $ test2��5V      $��1��6    #��[ 6-   $��2q�6c   $��2q�6o   $��Arial)�6z   $��12(�6�   .��6�   KICustom Template and Triggers (Move Mouse Over Me and Press to see effect)5W      �� 5X   
   $��2��6   #��[ 6   $��2q�6]   $��2q�6i   $��Arial)�6t   $��14(�6�   .��6�   NLKeyboard Focused Custom Template and Triggers (Try to bring focus using tab)6�   �� 5Y   
   $��3��6   #��[ 6   $��2q�6X   $��2q�6d   $��Arial)�6o   $��14(�6�   .��6�   ?=Button with Annimated CustomTemplate Just keep mouse over Me.6�   5Z      5[      