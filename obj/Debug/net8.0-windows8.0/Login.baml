   M S B A M L   `   `   `  ����C  ?ITCAPlus, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:ITCAPlusITCAPlus  5   	       ITCAPlus.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   "localclr-namespace:ITCAPlus  5   	     � Title$  Login��5	      $	��450��6   $	��600��6"    � WindowStartupLocation$ CenterScreen=�6.    � 
ResizeMode$ NoResize=�6S    � WindowStyle$
 None=�6i   .��5      � .+�5   
   �� $	��265��6   $	��Top=�6!   ��5      �� 5       �� 
StartPoint$ 0.5,0&�6&    �� EndPoint$ 0.5,1&�69   .��5      �  � Color$ MidnightBlue��6#   � 5      $
 Teal��6#    � Offset$ 1Q�60   � 5      $ 
MediumBlue��6#   $	 0.5Q�66   5      5      �� 5   
   $	��400��6   $	��318��6    
�������$��Center=�6:   $	��Top=�6W    �� RadiusX$ 10��6o   	 �� RadiusY$	 10��6|   $��0,38,0,0q�6�   
 J� Effect
 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 15Q�6#      Color$ 	#FFBBBBBB��63      	Direction$ 0Q�6E      RenderingBias$ Quality=�6S   5      � 5   
   $��150,0,160,110q�6   $��Bottom=�6&   $	��280��6A   .+�5       �� $��INICIO DE SESIÓN��6   $��Center=�6/   $	��Top=�6L   $��22��6d    J� RenderTransformOrigin$ 0.5,0.5&�6p   $
��Bold"�6�   z�5!      V� 5"      .~�5#      ��  �� ScaleY$ 1Q�6)   �� 5$      �� 5%      T� 5&      5'      5)      �� 5,      $��Center=�6   $��	15,0,15,0q�64   $	��200��6G   .+�5-      �� -   5         ��Name$ 	txtNombre��5-      $
��0,10q�5.      $��Corbel Light)�5/      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Nombre de usuario��50       %  !MaterialDesignFloatingHintTextBox#��[  51      $��18(�6P   G� 53      -   5         G�Name$ txtPassword��53      $
��0,10q�54      $��Corbel Light)�55      $ Contraseña��56       ) %MaterialDesignFloatingHintPasswordBox#��[ 57      $��18(�6T   58       � 5;      -   5          �Name$ frContenido��5;        � NavigationUIVisibility$ Hidden=�6)   5<      �� 5?   
   -   5         ��Name$ 	btn_Login��5?      $��INGRESAR��6$   $��Center=�67   $��	0,340,0,0q�6T   $	��Top=�6g   6   �� 5B   
   $
��Left=�6   $��172,270,0,0q�6/   $
��Wrap=�6D   $��¿No tienes una cuenta?��6X   $	��Top=�6v    � Cursor$ AppStarting��6�   $��14(�6�   �� 5C   
   -   5         ��Name$ 	txbSignUp��5C      $
��Left=�6'   $��331,270,0,0q�6B   $
��Wrap=�6W   $��
Registrate��6k   $	��Top=�6}   $
 Hand��6�   ���	#FF0027FF$
��Bold"�6�   $��14(�6�   6�   5E      5F      