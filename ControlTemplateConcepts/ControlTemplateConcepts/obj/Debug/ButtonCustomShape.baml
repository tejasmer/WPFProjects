   M S B A M L   `   `   `  ����R  NControlTemplateConcepts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:ControlTemplateConceptsControlTemplateConcepts  5   	   /    )ControlTemplateConcepts.ButtonCustomShape   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:ControlTemplateConcepts     5   	     � Title$  ButtonCustomShape��5   	   $	��300��6#   $	��300��60   .��5	      �  � 	Resources 5
   
      buttonTemplate A�Name �� 
StartPoint �� EndPoint � Offset � Color �� Triggers P� Property	 P� Value
 �� 
TargetName �� Property �� Value �� ScaleX �� ScaleY��%�  &	        �� 5   
   .R�5      � .+�5      A� $ outerCircle��63   $	��160��6   $	��160��6&   ��5      �� 5      $	 0,0&�6.   $	 0,1&�6?   .��5      � $ 0Q�6+   $ Green��66   6F   � 5      $ 1Q�6+   $ Purple��66   6G   5      5      A� 5      $ innerCircle��63   $	��120��6   $	��120��6&   ��5      �� 5      $	 0,0&�6.   $	 0,1&�6?   .��5      � $ 0Q�6+   $
 Gray��66   6E   � 5      $ 1Q�6+   $
 Blue��66   6E   5      5      5       5      P� 5       �@J�IsMouseOver	 . . �5       �� $
 outerCircle��6    � ��
 �   �6V   �� 5!      $
 innerCircle��6!    � ��
 � ���6[   5"      P� 5#       � ��	 . . �5$      ��  � z� 5%      �� 5&      $ .8Q�6-   $ .8Q�69   6G   5(      �� 5)       �@J�RenderTransformOrigin$ .6,.6&�6>   6N   5*      5,      5-      .+�5.   
   �� #��[  6   .��6<   
Click Me6F   5/      50      