using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace User_Control
{
    public partial class Headerstrip : UserControl
    {
        Point mouseStartLocation;
        Point formStartLocation;
        bool mouseIsDown;

        public Headerstrip()
        {
            InitializeComponent();
        }

        private void btnSluit_Click(object sender, EventArgs e)
        {
            Form form = (Form)this.Parent;
            form.Close();
        }


        private void btnMinimize_Click_1(object sender, EventArgs e)
        {
            Form form = (Form)this.Parent;
            form.WindowState = FormWindowState.Minimized;
        }

        private void btnMaximize_Click(object sender, EventArgs e)
        {
            Form form = (Form)this.Parent;
            if (form.WindowState == FormWindowState.Normal)
            {
                form.WindowState = FormWindowState.Maximized;
            }

            else if (form.WindowState == FormWindowState.Maximized)
            {
                form.WindowState = FormWindowState.Normal;
            }

        }

        private void HeaderStrip_MouseDown(object sender, MouseEventArgs e)
        {
            Form form = (Form)this.Parent;

            mouseIsDown = true;
            formStartLocation = form.Location;
            mouseStartLocation = MousePosition;
        }

        private void HeaderStrip_MouseUp(object sender, MouseEventArgs e)
        {
            mouseIsDown = false;
        }

        private void HeaderStrip_MouseMove(object sender, MouseEventArgs e)
        {
            if (mouseIsDown)
            {
                Form form = (Form)this.Parent;

                Point deviation = Point.Subtract(MousePosition, (Size)mouseStartLocation);
                form.Location = Point.Add(formStartLocation, (Size)deviation);
            }
        }
    }
}







