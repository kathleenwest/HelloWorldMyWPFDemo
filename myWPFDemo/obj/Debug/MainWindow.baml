   M S B A M L   `   `   `  ����D  @myWPFDemo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:myWPFDemo	myWPFDemo  5   	       myWPFDemo.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   J FWpfAnimatedGif, Version=1.4.14.0, Culture=neutral, PublicKeyToken=null,gif"http://wpfanimatedgif.codeplex.com  5   	   #localclr-namespace:myWPFDemo  5   	      
background#��[  5   	     � Title$&   My WPF Demo - Hello World - Game��5   	   $	��399��62   $	��800��6?    � WindowStartupLocation$ CenterScreen=�6K   $	��400��6p   $	��800��6�   $	��400��6�   $	��800��6�    � 
ResizeMode$ NoResize=�6�    � 	Resources 5       �� 
TargetType �� Property �� Value �� 
TargetType��%=  '��       �� 5   
   " ��6   .�5      ��  � �� 5      �� 5      " ��6&   .R�5      � .+�5      A� 
���   �$��5,5,0,0q�63   6F   A� 5      #��z��6&   $��0,0,5,5q�6J   6]   (� 5      $��	5,5,15,15q�6&   .��5   "   �� 65   5      5      5      5      5      5      .��5      � .+�5   
   �� -   5         ��Name$ clickbutton��5      $��Click Me��6&   $��Right=�69   $	��Top=�6U   $��75��6m   6�   �� 5   
   -   5        	 ��Name$	 greeting��5      $��Center=�6&   $
��Wrap=�6C   $��Hello World Game��6W   $��Center=�6o   
 J� RenderTransformOrigin$
 2.757,12.643&�6�   $��30(�6�   $��Italic$�6�   $
��Bold"�6�   �� 5    
   -   5        $	 message��5       $��Center=�6%   $
��Wrap=�6B   $-��'Try to Click the Button for a Surprise!��6V   $��Bottom=�6�   $
 2.757,12.643&�6�   $��20(�6�   $��Italic$�6�   $
��Bold"�6�   �� 5!   
   -   5         ��Name$ party��5!      "  WpfAnimatedGif.ImageBehavior   AnimatedSource$ catparty.gif��6   $
��Fill=�6O   $y�Hidden=�6^   5"      5#      