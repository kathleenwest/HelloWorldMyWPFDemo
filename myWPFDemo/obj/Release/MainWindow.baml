   M S B A M L   `   `   `  ���� D  @myWPFDemo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:myWPFDemo	myWPFDemo      myWPFDemo.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     J FWpfAnimatedGif, Version=1.4.14.0, Culture=neutral, PublicKeyToken=null,gif"http://wpfanimatedgif.codeplex.com  #localclr-namespace:myWPFDemo     
background#��[    � Title$&   My WPF Demo - Hello World - Game��$	��399��$	��800�� � WindowStartupLocation$ CenterScreen=�$	��400��$	��800��$	��400��$	��800�� � 
ResizeMode$ NoResize=� � 	Resources  �� 
TargetType �� Property �� Value �� 
TargetType��%�   '��       �� " ��.���  � �� �� " ��.R�� .+�A� 
���   �$��5,5,0,0q�A� #��z��$��0,0,5,5q�(� $��	5,5,15,15q�.���� .��� .+��� -    ��Name$ clickbutton��$��Click Me��$��Right=�$	��Top=�$��75���� -   	 ��Name$	 greeting��$��Center=�$
��Wrap=�$��Hello World Game��$��Center=�
 J� RenderTransformOrigin$
 2.757,12.643&�$��30(�$��Italic$�$
��Bold"��� -   $	 message��$��Center=�$
��Wrap=�$-��'Try to Click the Button for a Surprise!��$��Bottom=�$
 2.757,12.643&�$��20(�$��Italic$�$
��Bold"��� -    ��Name$ party��"  WpfAnimatedGif.ImageBehavior   AnimatedSource$ catparty.gif��$
��Fill=�$y�Hidden=�