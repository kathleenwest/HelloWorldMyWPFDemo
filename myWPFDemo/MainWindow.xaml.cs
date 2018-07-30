using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Media;
using System.Runtime.InteropServices;
using System.IO;
using System.Diagnostics;
using System.Threading;

namespace myWPFDemo
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Random rand;                         // Random number for direction
        Point point;                         // Point for Button
        SoundPlayer giggle, yahoo;           // Sounds
        DialogBox dialog;                    // User Dialog Box Window Object

        public MainWindow()
        {
            rand = new Random();
            point = new Point(0, 0);
            giggle = new SoundPlayer(myWPFDemo.Properties.Resources.giggle);
            yahoo = new SoundPlayer(myWPFDemo.Properties.Resources.yahoo);
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            // Plays a Short Awww
            yahoo.Play();

            MessageBox.Show("Hello World! --> Kathleen is Awesome!", "Hello World", MessageBoxButton.OK, MessageBoxImage.Exclamation);

            dialog = new DialogBox();
            
            dialog.ShowDialog();
            if (dialog.DialogResult.HasValue && dialog.DialogResult.Value)
            {
                // Start a Party
                PartyNow();
            }
          }

        private void clickbutton_MouseEnter(object sender, MouseEventArgs e)
        {            
            int quandrant = rand.Next(1, 5); // Random number to go 1 in 4 directions

            double left = clickbutton.Margin.Left;          // Current Left Margin
            double right = clickbutton.Margin.Right;        // Current Right Margin
            double bottom = clickbutton.Margin.Bottom;      // Current Bottom Margin
            double top = clickbutton.Margin.Top;            // Current Top Margin

            int rate = 200;

            switch (quandrant)
            {
                case 1: // Go Diagonal Up Right
                    left = left + rate;
                    top = top - rate;
                    break;
                case 2: // Go Diagonal Up Left
                    left = left - rate;
                    top = top - rate;
                    break;
                case 3: // Go Diagnoal Down Right
                    left = left + rate;
                    top = top + rate;
                    break;
                case 4: // Go Diagnoal Down Left
                    left = left - rate;
                    top = top + rate;
                    break;
                default:
                    break;
            }

            // Edge Cases
            left = (left > 0) ? left : 0;
            left = (left < 700) ? left : 200;
            top = (top > 0) ? top : 0;
            top = (top < 300) ? top : 200;

            right = 700 - left;
            bottom = 300 - top;

            clickbutton.Margin = new Thickness(left,top,right,bottom);

            // Plays a Short Giggle
            giggle.Play();

            // Delay the Button Move Asynchronously
            DelayButtonMove();

        }

        public async void DelayButtonMove()
        {
            // Temporarily Disable the event handler
            clickbutton.MouseEnter -= clickbutton_MouseEnter;

            // 1/2 second delay
            await Task.Delay(500);

            // Re-enable the event handler
            clickbutton.MouseEnter += clickbutton_MouseEnter;
        }

        // Party Starts Here
        public void PartyNow()
        {
            party.Visibility = Visibility.Visible;              // Shows the Cat dancing GIF
            clickbutton.Visibility = Visibility.Hidden;         // Hides the Button
            greeting.Visibility = Visibility.Hidden;            // Hide the Text Block
        }
    }
}
