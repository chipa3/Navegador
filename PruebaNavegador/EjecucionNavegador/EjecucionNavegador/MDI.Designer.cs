namespace EjecucionNavegador
{
    partial class MDI
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
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.aBRIRToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cATALOGOToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.bANCOSToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.rEPORTESToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.aYUDAToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.mATERIAPRIMAToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.aBRIRToolStripMenuItem,
            this.cATALOGOToolStripMenuItem,
            this.rEPORTESToolStripMenuItem,
            this.aYUDAToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1142, 28);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // aBRIRToolStripMenuItem
            // 
            this.aBRIRToolStripMenuItem.Name = "aBRIRToolStripMenuItem";
            this.aBRIRToolStripMenuItem.Size = new System.Drawing.Size(64, 24);
            this.aBRIRToolStripMenuItem.Text = "ABRIR";
            // 
            // cATALOGOToolStripMenuItem
            // 
            this.cATALOGOToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.bANCOSToolStripMenuItem,
            this.mATERIAPRIMAToolStripMenuItem});
            this.cATALOGOToolStripMenuItem.Name = "cATALOGOToolStripMenuItem";
            this.cATALOGOToolStripMenuItem.Size = new System.Drawing.Size(96, 24);
            this.cATALOGOToolStripMenuItem.Text = "CATALOGO";
            // 
            // bANCOSToolStripMenuItem
            // 
            this.bANCOSToolStripMenuItem.Name = "bANCOSToolStripMenuItem";
            this.bANCOSToolStripMenuItem.Size = new System.Drawing.Size(224, 26);
            this.bANCOSToolStripMenuItem.Text = "BANCOS";
            this.bANCOSToolStripMenuItem.Click += new System.EventHandler(this.bANCOSToolStripMenuItem_Click);
            // 
            // rEPORTESToolStripMenuItem
            // 
            this.rEPORTESToolStripMenuItem.Name = "rEPORTESToolStripMenuItem";
            this.rEPORTESToolStripMenuItem.Size = new System.Drawing.Size(91, 24);
            this.rEPORTESToolStripMenuItem.Text = "REPORTES";
            // 
            // aYUDAToolStripMenuItem
            // 
            this.aYUDAToolStripMenuItem.Name = "aYUDAToolStripMenuItem";
            this.aYUDAToolStripMenuItem.Size = new System.Drawing.Size(71, 24);
            this.aYUDAToolStripMenuItem.Text = "AYUDA";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(12, 158);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(262, 22);
            this.textBox1.TabIndex = 1;
            this.textBox1.Visible = false;
            // 
            // mATERIAPRIMAToolStripMenuItem
            // 
            this.mATERIAPRIMAToolStripMenuItem.Name = "mATERIAPRIMAToolStripMenuItem";
            this.mATERIAPRIMAToolStripMenuItem.Size = new System.Drawing.Size(224, 26);
            this.mATERIAPRIMAToolStripMenuItem.Text = "MATERIA PRIMA";
            this.mATERIAPRIMAToolStripMenuItem.Click += new System.EventHandler(this.mATERIAPRIMAToolStripMenuItem_Click);
            // 
            // MDI
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1142, 550);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.menuStrip1);
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "MDI";
            this.Text = "MDI";
            this.Load += new System.EventHandler(this.MDI_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.ToolStripMenuItem aBRIRToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cATALOGOToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem rEPORTESToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem aYUDAToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem bANCOSToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mATERIAPRIMAToolStripMenuItem;
    }
}