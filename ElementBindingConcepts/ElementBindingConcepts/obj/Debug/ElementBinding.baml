   M S B A M L   `   `   `  ����Q  MElementBindingConcepts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:ElementBindingConceptsElementBindingConcepts  5   	   +    %ElementBindingConcepts.ElementBinding   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:ElementBindingConcepts     5   	     � Title$'  !ElementBinding Magic NoCodeBehind��5   	   $	��550��63   $	��525��6@   .��5	      �  � ShowGridLines .  � RowDefinitions 5
   
   �� 5      $	��300 �6   6+   �� 5      $��* �6   6)    � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!   .+�5   
   �� $��0��6   $��0��6%   .+�5      �� $
��Wrap=�6   $��15(�6,   
��� ���WUFont sized is controlled by slider and Textbox. Text will control by another textbox.6�   �� 5      -   5         ��Name$	 txt��5      $
��Wrap=�6%   {�.  ��6K   ��  �� ElementName$ 
slidersize�� �� Path$ Value� �� Mode$ TwoWay=�GEThis is text font sized is controlled by slider and textbox below me.6�   5      �� 5   
   -   5         ��Name$ 
slidersize��5   |   $��1��6   $��0��6!   	 � Value$	 10Q�6.   
 � Minimum$
 1Q�69    � Maximum$ 40Q�6E    �� TickFrequency$ 1Q�6R    �� TickPlacement$ TopLeft=�6d   6�   �� 5   
   $��0��6   $��1��6%   .+�5      �� $
��Wrap=�6   $��15(�6,   
��� ���B@Text will control slider value and text font size of above cell.6�   �� 5      
���   ���6+   �� $ 
slidersize��$ Value�$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   5      �� 5    
   $��1��6   $��1��6%   .+�5!      �� $
��Wrap=�6   $��15(�6,   
��� ���75Type in below textbox to change the text of 1st cell.6�   �� 5"      
���   �$	��100��6+    �� TextWrapping$
 Wrap=�68   ��6L   �� $	 txt��$
 Text�$ TwoWay=�$ PropertyChanged=�6�   �� 5#      
���   � �� 
IsReadOnly . ��6=   �� $ Title� �� RelativeSource �� *FindAncestor+ �� AncestorType" �6�   5$      5&      5'      