   M S B A M L   `   `   `  ����N  JRoutedEventConcepts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:RoutedEventConceptsRoutedEventConcepts  5   	   $    RoutedEventConcepts.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:RoutedEventConcepts     5   	   -   5          � Title$&   Routed Event - Bubble Up Example��5   	   $	��550��62   $	��525��6?   .��5	      � -   5         � RowDefinitions 5
   
   �� 5      $
��Auto �6   6,   �� 5      $��* �6   6)   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   .+�5   
   �� -   5        $��20q�5      
���   �$��0��6H   .+�5      �� -   5        $��10q�5      
���ݠ��.+�5      �� -   5        
��� � �$	��0.1q�5   -   
�������._�5      �� -   5        $
��cmd1��5       $��5q�6,   $��Default Text for 1��67   
��� ���6|   5      �� 5      -   5        $
��cmd2��5      $��5q�6)   $��Default Text for 2��64   
�������6v   �� 5      -   5        $
��cmd3��5      $��5q�6(   $��Default Text for 3��63   
�������6v   �� 5      -	   5        $
��cmd4��5      $��5q�6(   $��Default Text for 4��63   
�������6v   5      5      �� 5   
   -
   5        $��lstbox��5      $��1��6   $	��100��6-   $
��Auto=�6=   6q   �� 5   
   -   5        $��	chkhandle��5       $��2��6   .��61   Handle only First Item6I   �� 5   
   -   5        $
��btn1��5      $��Clear List Me��6   $��3��6H   6W   �� 5   
   $
��Wrap=�6   $��4��6(   �� 5      .�6   53MouseUp Event has been subscribed Most of Elements.6H   5       5!      5"      