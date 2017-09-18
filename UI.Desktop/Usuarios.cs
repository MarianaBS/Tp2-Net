﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Business.Entities;
using Business.Logic;

namespace UI.Desktop
{
    public partial class Usuarios : ApplicationForm
    {
        #region Constructor
        public Usuarios()
        {
            InitializeComponent();
        }
        
        #endregion 
  
        #region Metodos
        public void Listar()
        {
            UsuarioLogic ul = new UsuarioLogic();
            this.dgvUsuario.AutoGenerateColumns = false;
            this.dgvUsuario.DataSource = ul.GetAll();
        }      
        #endregion
        
        #region Eventos

        private void Usuarios_Load(object sender, EventArgs e)
        {
            Listar();
        }        
        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        private void btnActualizar_Click(object sender, EventArgs e)
        {
            this.Listar();
        }
        private void tsbNuevo_Click(object sender, EventArgs e)
        {
            UsuarioDesktop formUsuario = new UsuarioDesktop(ApplicationForm.ModoForm.Alta);
            formUsuario.ShowDialog();
            this.Listar();
        }
        private void tsbEditar_Click(object sender, EventArgs e)
        {
            int ID = ((Usuario)this.dgvUsuario.SelectedRows[0].DataBoundItem).ID;
            UsuarioDesktop formUsuario = new UsuarioDesktop(ID, ApplicationForm.ModoForm.Modificacion);
            formUsuario.ShowDialog();
            this.Listar();
        }
        private void tsbEliminar_Click(object sender, EventArgs e)
        {
            int ID = ((Usuario)this.dgvUsuario.SelectedRows[0].DataBoundItem).ID;
            UsuarioDesktop formUsuario = new UsuarioDesktop(ID, ApplicationForm.ModoForm.Baja);
            formUsuario.ShowDialog();
            this.Listar();
        }

        #endregion

    }

}
