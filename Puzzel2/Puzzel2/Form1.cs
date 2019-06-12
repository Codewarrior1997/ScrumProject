using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Puzzel2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void btnTest_Click(object sender, EventArgs e)
        {
            if (lblStappen.Text == "Stap 1")
            {

                if (chkOranje.Checked && chkGroen.Checked && chkPaars.Checked && chkGeel.Checked && !chkRood.Checked && !chkBlauw.Checked)
                {
                    chkOranje.Checked = false;
                    chkGroen.Checked = false;
                    chkPaars.Checked = false;
                    chkGeel.Checked = false;
                    lblStappen.Text = "Stap 2";
                    lblOpdracht.Text = "Mix de juiste 3 chemicaliën";
                }
    
            }
            if (lblStappen.Text == "Stap 2")
            {

                if (!chkRood.Checked && chkBlauw.Checked && chkGroen.Checked && !chkGeel.Checked && chkPaars.Checked && !chkOranje.Checked)
                {
                    chkBlauw.Checked = false;
                    chkGroen.Checked = false;
                    chkPaars.Checked = false;
                    lblStappen.Text = "Stap 3";
                    lblOpdracht.Text = "Mix de juiste 2 chemicaliën";
                }
             
            }
            if (lblStappen.Text == "Stap 3")
            {

                if(!chkRood.Checked && !chkBlauw.Checked && chkGroen.Checked && chkGeel.Checked && !chkPaars.Checked && !chkOranje.Checked)
                {
                    chkGroen.Checked = false;
                    chkGeel.Checked = false;
                    lblStappen.Text = "Stap 4";
                    lblOpdracht.Text = "Welke kleur is niet voorgekomen?";
                }
             
            }
            if (lblStappen.Text == "Stap 4")
            {

                if (chkRood.Checked && !chkBlauw.Checked && !chkGroen.Checked && !chkGeel.Checked && !chkPaars.Checked && !chkOranje.Checked)
                {
                    chkRood.Checked = false;
                    lblStappen.Text = "Stap 5";
                    lblOpdracht.Text = "Welke kleur is het meest voorgekomen?";
                }
         
            }
            if (lblStappen.Text == "Stap 5")
            {
                if (!chkRood.Checked && !chkBlauw.Checked && chkGroen.Checked && !chkGeel.Checked && !chkPaars.Checked && !chkOranje.Checked)
                {
                    chkGroen.Checked = false;
                    lblStappen.Text = "...";
                    lblOpdracht.Text = "832";
                }
            }
        }
    }
}
