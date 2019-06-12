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
                    lblCorrect.Text = "Correct!";
                    lblStappen.Text = "Stap 2";
                    lblOpdracht.Text = "Mix de juiste 3 chemicaliën";
                }
                else
                {
                    lblCorrect.Text = "Niet correct.";
                }
            }
            if (lblStappen.Text == "Stap 2")
            {
                if (!chkRood.Checked && chkBlauw.Checked && chkGroen.Checked && !chkGeel.Checked && chkPaars.Checked && !chkOranje.Checked)
                {
                    lblCorrect.Text = "Correct!";
                    lblStappen.Text = "Stap 3";
                    lblOpdracht.Text = "Mix de juiste 2 chemicaliën";
                }
                else
                {
                    lblCorrect.Text = "Niet correct.";
                }
            }
            if (lblStappen.Text == "Stap 3")
            {
                if(!chkRood.Checked && !chkBlauw.Checked && chkGroen.Checked && chkGeel.Checked && !chkPaars.Checked && !chkOranje.Checked)
                {
                    lblCorrect.Text = "Correct!";
                    lblStappen.Text = "Stap 4";
                    lblOpdracht.Text = "Welke kleur is niet voorgekomen?";
                }
                else
                {
                    lblCorrect.Text = "Niet correct.";
                }
            }
            if (lblStappen.Text == "Stap 4")
            {

            }
        }
    }
}
