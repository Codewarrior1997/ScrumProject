namespace Puzzel2
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.chkRood = new System.Windows.Forms.CheckBox();
            this.chkGroen = new System.Windows.Forms.CheckBox();
            this.chkBlauw = new System.Windows.Forms.CheckBox();
            this.chkGeel = new System.Windows.Forms.CheckBox();
            this.chkPaars = new System.Windows.Forms.CheckBox();
            this.chkRoze = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // chkRood
            // 
            this.chkRood.AutoSize = true;
            this.chkRood.Location = new System.Drawing.Point(12, 12);
            this.chkRood.Name = "chkRood";
            this.chkRood.Size = new System.Drawing.Size(64, 21);
            this.chkRood.TabIndex = 0;
            this.chkRood.Text = "Rood";
            this.chkRood.UseVisualStyleBackColor = true;
            // 
            // chkGroen
            // 
            this.chkGroen.AutoSize = true;
            this.chkGroen.Location = new System.Drawing.Point(303, 12);
            this.chkGroen.Name = "chkGroen";
            this.chkGroen.Size = new System.Drawing.Size(70, 21);
            this.chkGroen.TabIndex = 1;
            this.chkGroen.Text = "Groen";
            this.chkGroen.UseVisualStyleBackColor = true;
            // 
            // chkBlauw
            // 
            this.chkBlauw.AutoSize = true;
            this.chkBlauw.Location = new System.Drawing.Point(155, 12);
            this.chkBlauw.Name = "chkBlauw";
            this.chkBlauw.Size = new System.Drawing.Size(67, 21);
            this.chkBlauw.TabIndex = 2;
            this.chkBlauw.Text = "Blauw";
            this.chkBlauw.UseVisualStyleBackColor = true;
            // 
            // chkGeel
            // 
            this.chkGeel.AutoSize = true;
            this.chkGeel.Location = new System.Drawing.Point(449, 12);
            this.chkGeel.Name = "chkGeel";
            this.chkGeel.Size = new System.Drawing.Size(60, 21);
            this.chkGeel.TabIndex = 3;
            this.chkGeel.Text = "Geel";
            this.chkGeel.UseVisualStyleBackColor = true;
            // 
            // chkPaars
            // 
            this.chkPaars.AutoSize = true;
            this.chkPaars.Location = new System.Drawing.Point(591, 12);
            this.chkPaars.Name = "chkPaars";
            this.chkPaars.Size = new System.Drawing.Size(67, 21);
            this.chkPaars.TabIndex = 4;
            this.chkPaars.Text = "Paars";
            this.chkPaars.UseVisualStyleBackColor = true;
            // 
            // chkRoze
            // 
            this.chkRoze.AutoSize = true;
            this.chkRoze.Location = new System.Drawing.Point(724, 12);
            this.chkRoze.Name = "chkRoze";
            this.chkRoze.Size = new System.Drawing.Size(63, 21);
            this.chkRoze.TabIndex = 5;
            this.chkRoze.Text = "Roze";
            this.chkRoze.UseVisualStyleBackColor = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.chkRoze);
            this.Controls.Add(this.chkPaars);
            this.Controls.Add(this.chkGeel);
            this.Controls.Add(this.chkBlauw);
            this.Controls.Add(this.chkGroen);
            this.Controls.Add(this.chkRood);
            this.Name = "Form1";
            this.Text = "Puzzel 2";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox chkRood;
        private System.Windows.Forms.CheckBox chkGroen;
        private System.Windows.Forms.CheckBox chkBlauw;
        private System.Windows.Forms.CheckBox chkGeel;
        private System.Windows.Forms.CheckBox chkPaars;
        private System.Windows.Forms.CheckBox chkRoze;
    }
}

