namespace User_Control
{
    partial class Headerstrip
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnSluit = new System.Windows.Forms.Button();
            this.btnMinimize = new System.Windows.Forms.Button();
            this.btnMaximize = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnSluit
            // 
            this.btnSluit.BackgroundImage = global::Puzzel.Properties.Resources.background;
            this.btnSluit.Dock = System.Windows.Forms.DockStyle.Right;
            this.btnSluit.FlatAppearance.BorderSize = 0;
            this.btnSluit.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Red;
            this.btnSluit.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSluit.ForeColor = System.Drawing.SystemColors.Control;
            this.btnSluit.Location = new System.Drawing.Point(418, 0);
            this.btnSluit.Name = "btnSluit";
            this.btnSluit.Size = new System.Drawing.Size(75, 30);
            this.btnSluit.TabIndex = 0;
            this.btnSluit.Text = "X";
            this.btnSluit.UseVisualStyleBackColor = true;
            this.btnSluit.Click += new System.EventHandler(this.btnSluit_Click);
            // 
            // btnMinimize
            // 
            this.btnMinimize.BackgroundImage = global::Puzzel.Properties.Resources.background;
            this.btnMinimize.Dock = System.Windows.Forms.DockStyle.Right;
            this.btnMinimize.FlatAppearance.BorderSize = 0;
            this.btnMinimize.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnMinimize.ForeColor = System.Drawing.SystemColors.Control;
            this.btnMinimize.Location = new System.Drawing.Point(268, 0);
            this.btnMinimize.Name = "btnMinimize";
            this.btnMinimize.Size = new System.Drawing.Size(75, 30);
            this.btnMinimize.TabIndex = 1;
            this.btnMinimize.Text = "_";
            this.btnMinimize.UseVisualStyleBackColor = true;
            this.btnMinimize.Click += new System.EventHandler(this.btnMinimize_Click_1);
            // 
            // btnMaximize
            // 
            this.btnMaximize.BackgroundImage = global::Puzzel.Properties.Resources.background;
            this.btnMaximize.Dock = System.Windows.Forms.DockStyle.Right;
            this.btnMaximize.FlatAppearance.BorderSize = 0;
            this.btnMaximize.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnMaximize.ForeColor = System.Drawing.SystemColors.Control;
            this.btnMaximize.Location = new System.Drawing.Point(343, 0);
            this.btnMaximize.Name = "btnMaximize";
            this.btnMaximize.Size = new System.Drawing.Size(75, 30);
            this.btnMaximize.TabIndex = 2;
            this.btnMaximize.Text = "+";
            this.btnMaximize.UseVisualStyleBackColor = true;
            this.btnMaximize.Click += new System.EventHandler(this.btnMaximize_Click);
            // 
            // Headerstrip
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.BackgroundImage = global::Puzzel.Properties.Resources.background;
            this.Controls.Add(this.btnMinimize);
            this.Controls.Add(this.btnMaximize);
            this.Controls.Add(this.btnSluit);
            this.Name = "Headerstrip";
            this.Size = new System.Drawing.Size(493, 30);
            this.MouseDown += new System.Windows.Forms.MouseEventHandler(this.HeaderStrip_MouseDown);
            this.MouseMove += new System.Windows.Forms.MouseEventHandler(this.HeaderStrip_MouseMove);
            this.MouseUp += new System.Windows.Forms.MouseEventHandler(this.HeaderStrip_MouseUp);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnSluit;
        private System.Windows.Forms.Button btnMinimize;
        private System.Windows.Forms.Button btnMaximize;
    }
}
