   M S B A M L   `   `   `  ����O  KDataTemplateConcepts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:DataTemplateConceptsDataTemplateConcepts  5   	   '    !DataTemplateConcepts.CheckboxList   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:DataTemplateConcepts     5   	     � Title$  CheckboxList��5   	   $	��300��6   $	��300��6+    � 	Resources 5	         CheckBoxListStyle �� 
TargetType �� Property �� Value �� 
TargetType d� 	IsChecked �� Path �� RelativeSource	 �� Mode��%�  &	        �� 5
   
   " ��6*   .�5      ��  �@��SelectionMode$ Multiple=�6.   6A   �� 5       � �� 5      �� 5      " ��6   .�5      ��  � ��$ 2q�63   �� 5       � �� 5      �� 5   "   " ��62   .R�5   &   ��  6/   �� $ 
IsSelected� �� *TemplatedParent+$	 TwoWay=�.��5   *   �� 6=   5   '   5   #   5      5      5      5      5      .��5      � $��8q�6   
 � RowDefinitions
 5    
   �� 5!      6   �� 5"      $
��Auto �6   6,   .+�5$   
   �� -   5        $��lstProducts��5$   =   #��[  6    �� DisplayMemberPath$ 	ModelName��6P   5%      �� 5&   
   -   5        $��1��5&      $��0,5,0,0q�6   .��6K   Get Selected Items6_   5'      5(      