   M S B A M L   `   `   `  ����Z  VStylesTriggersResourcesConcepts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:StylesTriggersResourcesConceptsStylesTriggersResourcesConcepts  5   	   ,    &StylesTriggersResourcesConcepts.Styles   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ?local-clr-namespace:StylesTriggersResourcesConcepts     5   	     � Title$X  RStyles- At Windows Resources, At Stack Panel Resource, Move Mouse and Change Focus��5   	   $	��350��6d   $	��625��6q    � 	Resources 5	         ButtonStyle �� Property �� Value �� Triggers P� Property P� Value��%�  &	        �� 5
   
   .�5      ��  � ��$ Arial)�62   6B   �� 5       � ��$ 14(�60   6=   �� 5       � ��$ Italic$�61   6B   �� 5       � ��$
 Bold"�62   6A   �� 5       � ��$ 3q�6.   6:    5      P� 5       �@J�	IsFocused . . �5      ��  � ��
 �  ��6H   5      P� 5       �@J�IsMouseOver . . �5      ��  � ��
 � � �6J   5      5      5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      $��* �6   6)   .+�5   
   �� $��0��6   .+�5       �� -   5         ��Name$
 btn1��5       #��[  6#   .��6H   &$Uses the style from Windows Resource6n   �� 5!      -   5        $
 btn2��5!      ��5"      �� 5#      .�5$      ��  � ��$ Verdana)�6>   6P   �� 5%       � ��$ 14(�6<   6I   �� 5&       � ��$ Italic$�6=   6N   �� 5'       � ��$
 Bold"�6>   6M   �� 5(       � ��
 ��ح�6R   �� 5)       � ��
 ��  �6M   �� 5*       � ��$ 3q�6:   6F    5+      P� 5,       �@J�	IsFocused . . �5-   "   ��  � ��
 � ���6W   5.      P� 5/       �@J�IsMouseOver . . �50   "   ��  � ��
 ��  �6U   51      53      .��54       &$Style Applied Explicitly to Control.56      57      �� 58   
   $��1��6    59      	 �� 
TargetType��%  '��       �� 5:      "	 ��6   .�5;      ��  � ��$ Calibiri)�6:   6M   �� 5<       � ��$ 16(�68   6E   �� 5=       � ��$ Italic$�69   6J   �� 5>       � ��$
 Bold"�6:   6I   �� 5?       � ��
 ��ح�6G   �� 5@       � ��
 � � �6C   �� 5A       � ��$ 3q�66   6B    5B      P� 5C       �@J�	IsFocused . . �5D      ��  � ��
 � ���6S   5E      P� 5F       �@J�IsMouseOver . . �5G      ��  � ��
 ��  �6Q   5H      5J      5K      .+�5L      �� -   5        $
 btn3��5L      #��[  6#   .��6I   &$Uses the style from Windows Resource6o   �� 5M      -   5        $
 btn4��5M      .��6$   :8Style has been applied automatically based on it's type.6^   �� 5N      -   5        $
 btn5��5N      ��6#   Z� .��65   ,*Style has been set to {x:Null} explicitly.6a   �� 5O      $
��Wrap=�6   $��20(�6,   dbMove mouse over buttons and also change the focus by clicking on button or throught the keyboard. �� 5Q      .�6   No Code Behind at All.6/   5R      5S      5T      5U      