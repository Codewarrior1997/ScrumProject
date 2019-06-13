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
using System.IO;

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
            List<byte> soundBytes = new List<byte>(File.ReadAllBytes("morse.wav"));
            MemoryStream memoryStream = new MemoryStream(soundBytes.GetRange(0, soundBytes.Count / 1).ToArray(), true);
            SoundPlayer player = new SoundPlayer(memoryStream);
            
                player.Stream.Position = 0;
                player.Load();
                player.PlaySync();
            


        }

        private void button2_Click(object sender, EventArgs e)
        {
            List<byte> soundBytes = new List<byte>(File.ReadAllBytes("morse2.wav"));
            MemoryStream memoryStream = new MemoryStream(soundBytes.GetRange(0, soundBytes.Count / 1).ToArray(), true);
            SoundPlayer player = new SoundPlayer(memoryStream);

            player.Stream.Position = 0;
            player.Load();
            player.PlaySync();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            List<byte> soundBytes = new List<byte>(File.ReadAllBytes("morse3.wav"));
            MemoryStream memoryStream = new MemoryStream(soundBytes.GetRange(0, soundBytes.Count / 1).ToArray(), true);
            SoundPlayer player = new SoundPlayer(memoryStream);

            player.Stream.Position = 0;
            player.Load();
            player.PlaySync();
        }
    }
}
