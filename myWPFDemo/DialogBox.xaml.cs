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
using System.Windows.Shapes;

namespace myWPFDemo
{
    /// <summary>
    /// Interaction logic for DialogBox.xaml
    /// </summary>
    public partial class DialogBox : Window
    {
        public DialogBox()
        {
            InitializeComponent();
        }

        // The accept button is a button whose IsDefault property is set to true.
        // This event is raised whenever this button is clicked, or the ENTER key
        // is pressed.
        void acceptButton_Click(object sender, RoutedEventArgs e)
        {
            // Accept the dialog and return the dialog result
            this.DialogResult = true;
        }
    }
}
