   M S B A M L   `   `   `  ����Z  VStylesTriggersResourcesConcepts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:StylesTriggersResourcesConceptsStylesTriggersResourcesConcepts  5   	   .    (StylesTriggersResourcesConcepts.Triggers   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ?local-clr-namespace:StylesTriggersResourcesConcepts     5   	     � Title$  Triggers��5   	   $	��450��6   $	��550��6'   .��5	      �  � 	Resources 5
   
      BigFontButton �� Triggers P� Property P� Value �� Property �� Value  BigFontButtonMulti ]� 
Conditions �� Property	 �� Value  FontAnimation
 :� RoutedEvent g� Duration �� TargetProperty	 W� To��%�  &	        &	 M    &	 H    �� 5       5      P� 5       �@J�	IsFocused . . �5      ��  � ��
 �  ��6?   5      P� 5       �@J�IsMouseOver . . �5      ��  � ��
 � � �6?   �� 5       � ��$
 Bold"�6?   5      P� 5       � �� . . �5      ��  � ��
 �  ��6?   5      5      �� 5       5      ]� 5       5      �� 5       �@J�	IsFocused	 . 6T   �� 5        �@J�IsMouseOver	 . 6V   /�5"      �� 5#       � ��
 �� ��6C   �� 5$       � ��$
 Bold"�6C   5&      5(      �� 5*       5+      :� 5,      $
 Mouse.MouseEnter��6#   [�5-      �� 5.      .��5/   "   �� .��50   &   W� $ 0:0:2D�66   $ FontSize�6G   $ 22X�6l   51   #   52      54      :� 55      $
 Mouse.MouseLeave��6#   [�56      �� 57      .��58   "   �� .��59   &   W� $ 0:0:1D�66   $ FontSize�6G   5:   #   5;      5=      5?      5@       � RowDefinitions 5A   
   �� 5B      $
��Auto �6   6,   �� 5C      $��* �6   6)   �� 5D      $��* �6   6)   �� 5E      $��* �6   6)   .+�5H   
   �� $��0��6   .+�5I      �� -   5         ��Name$
 btn2��5I      #��[  6#   .��6K   42Style (Triggers on Focused, Pressed and MouseOver)5K      5L      �� 5M   
   $��1��6   $��Center=�6"   $��Center=�6?   
�������.+�5N      �� -   5        $��cbSample��5N      $��Hello, world?��6'   �� 5O      $��Center=�6   $��0,10,0,0q�65   $��38(�6G   ��5P      �� 5Q       �� 
TargetType" ��6   .�5R      ��  � ��$ No��61   �� 5S       � ��
 �  ��67    5T      �� 5U       �� Binding 6*   ��  �� ElementName$ cbSample�� �� Path$ 	IsChecked� �� Value True6c   .a�5V   "   ��  � ��$
 Yes!��69   �� 5W   "    � ��
 � � �6?   5X      5Z      5\      5]      �� 5^   
   $��2��6    5_      ��%  '��       �� 5`      " ��6   .�5a      ��  � ��$ Calibiri)�6:   6M   �� 5b       � ��$ 16(�68   6E   �� 5c       � ��$ Italic$�69   6J   �� 5d       � ��$
 Bold"�6:   6I   �� 5e       � ��
 ��ح�6G   �� 5f       � ��
 � � �6C   �� 5g       � ��$ 3q�66   6B    5h      P� 5i       �@J�	IsFocused . . �5j      ��  � ��
 � ���6S   5k      P� 5l       �@J�IsMouseOver . . �5m      ��  � ��
 ��  �6Q   5n      5p      5q      .+�5r      �� -   5        $
 btn4��5r      #��[ 6#   .��6P   86Multi Trigger with conditions on Focused and Mouseover6�   �� 5s      -   5        $
 btn5��5s      #��[ 6#   .��6K   20Font Annimation Style with mouse enter and leave6}   �� 5t      $
��Wrap=�6   $��20(�6,   ��This Example uses Simple Trigger, MultiTrigger (Annimation Example),DataTrigger (CheckBox Example) and Multi Data Trigger(Multiple Checkbox) �� 5v      .�6   No Code Behind at All.6/   5w      5x      �� 5y   
   $��3��6   $��Center=�6#   $��Center=�6@   
�������.+�5z      �� -   5        $��cbSampleYes��5z      $	��Yes��6*   �� 5{      -   5        $��cbSampleSure��5{      $��I'm sure��6+   �� 5|      $��Center=�6   $��0,20,0,0q�65   $��18(�6G   ��5}      �� 5~      " ��6   .�5      ��  � ��$ 
Unverified��61   �� 5�       � ��
 �  ��67    5�      ^� 5�       ^� 
Conditions 5�   "   �� 5�   &    �� Binding 60   �� $ cbSampleYes��$ 	IsChecked�	 True6l   �� 5�   &    60   �� $ cbSampleSure��$ 	IsChecked�	 True6m   .0�5�   "   ��  � ��$ Verified��69   �� 5�   "    � ��
 � � �6?   5�      5�      5�      5�      5�      5�      