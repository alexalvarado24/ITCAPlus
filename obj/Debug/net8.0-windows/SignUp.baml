   M S B A M L   `   `   `  ����C  ?ITCAPlus, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:ITCAPlusITCAPlus  5          ITCAPlus.SignUp   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      "localclr-namespace:ITCAPlus  5      .��5      � .+�5   
   �� $	��265��6   $	��Top=�6!   ��5      �� 5        �� 
StartPoint$  0.5,0&�6&    �� EndPoint$ 0.5,1&�69   .��5      �  � Color$ MidnightBlue��6#   � 5      $
 Teal��6#    � Offset$ 1Q�60   � 5      $ 
MediumBlue��6#   $	 0.5Q�66   5      5      �� 5   
   $	��400��6   $	��318��6    
�������$��Center=�6:   $	��Top=�6W    �� RadiusX$ 10��6o    �� RadiusY$ 10��6|   $��0,38,0,0q�6�    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 15Q�6#      Color$ 	#FFBBBBBB��63   	   	Direction$	 0Q�6E   
   RenderingBias$
 Quality=�6S   5      � 5    
   $��150,0,160,110q�6   $��Bottom=�6&   $	��280��6A   .+�5!      �� $��REGISTRO DE USUARIO��6   $��Center=�62   $	��Top=�6O   $��22��6g   $
��Bold"�6s   z�5"      V� 5#      .~�5$      ��  �� ScaleY$ 1Q�6)   �� 5%      �� 5&      T� 5'      5(      5*      �� 5-      $��Center=�6   $��	15,0,15,0q�64   $	��250��6G   .+�5.      �� -   5         ��Name$ txtNombreUsuario��5.      $
��0,10q�5/      $��Corbel Light)�50      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Nombre de usuario��51       %  !MaterialDesignFloatingHintTextBox#��[  52      $��18(�6P   �� 53      -   5        $ 	txtCorreo��53      $
��0,10q�54      $��Corbel Light)�55      $/ )Correo institucional                     ��56      #��[  58      $��18(�6A   G� 5:      -   5         G�Name$ txtPassword��5:      $
��0,10q�5;      $��Corbel Light)�5<      $ Contraseña��5=       ) %MaterialDesignFloatingHintPasswordBox#��[ 5>      $��18(�6T   5?      �� 5B      -   5         ��Name$	 Rol��5B      $��Center=�6$   $��	0,228,0,0q�6A   $	��Top=�6T   $	��120��6l   $ Seleccione un rol��5C      .@�5D      �� $��Director��6   �� 5E      $��Docente��6   5F       � 5G      -   5          �Name$ frContenido��5G        � NavigationUIVisibility$ Hidden=�6)   5H      �� 5K   
   -   5         ��Name$ btn_Registrar��5K      $��	REGISTRAR��6(   $��Center=�6<   $��	0,340,0,0q�6Y   $	��Top=�6l   6�   �� 5N   
   $
��Left=�6   $��176,395,0,0q�6/   $
��Wrap=�6D   $��¿Ya tienes una cuenta?��6X   $	��Top=�6v    � Cursor$
 Hand��6�   $��14(�6�   �� 5O   
   -   5         ��Name$ txbLogin��5O      $
��Left=�6&   $��334,395,0,0q�6A   $
��Wrap=�6V   $��Inicia sesión��6j   $	��Top=�6   $
 Hand��6�   ���	#FF0027FF$
��Bold"�6�   $��14(�6�   6�   5Q      5R      