using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Media;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Puzzel
{
    
    public partial class Morse : Form
    {

        public Morse()
        {
            InitializeComponent();
        }

        private void Morse_Load(object sender, EventArgs e)
        {
            lblCode1.BackColor = System.Drawing.Color.Transparent;
            lblCode2.BackColor = System.Drawing.Color.Transparent;
            lblCode3.BackColor = System.Drawing.Color.Transparent;
            label4.BackColor = System.Drawing.Color.Transparent;


        }

        private void button4_Click(object sender, EventArgs e)
        {
            string codeinvoer1 = txtCodeInvoer1.Text;
            string codeinvoer2 = txtCodeInvoer2.Text;
            string codeinvoer3 = txtCodeInvoer3.Text;
            string Enter = txtEnter.Text;

            if (txtEnter.Text == "839")
            {
                MessageBox.Show("U have entered the correct code");
            }
            else
            {
                MessageBox.Show("U have entered the incorrect Code");
            }


        }

        private void button1_Click(object sender, EventArgs e)
        {
             void playSimpleSound()
            {
                SoundPlayer simpleSound = new SoundPlayer(@"C:\Users\GEBRUIKER\Downloads\morsecode.wav");
                simpleSound.Play();
            }

            playSimpleSound();
        }
    }
}
