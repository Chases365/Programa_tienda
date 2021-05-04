Public Class frmusuario

    Private dt As New DataTable

    Private Sub frmusuario_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        mostrar()
    End Sub

    Public Sub limpiar()
        btnguardar.Visible = True
        btneditar.Visible = False
        txtacceso.Text = ""
        txtpassword.Text = ""
        txtlogin.Text = ""
        txttelefono.Text = ""
        txtdireccion.Text = ""
        txtcurp.Text = ""
        txtapellidos.Text = ""
        txtnombre.Text = ""
        txtidusuario.Text = ""
    End Sub

    Private Sub mostrar()
        Try
            Dim func As New fusuario
            dt = func.mostrar
            datalistado.Columns.Item("Eliminar").Visible = False

            If dt.Rows.Count <> 0 Then
                datalistado.DataSource = dt
                txtbuscar.Enabled = True
                datalistado.ColumnHeadersVisible = True
                inexistente.Visible = False
            Else
                datalistado.DataSource = Nothing
                txtbuscar.Enabled = False
                datalistado.ColumnHeadersVisible = False
                inexistente.Visible = True
            End If
        Catch ex As Exception
            MsgBox(ex.Message)

        End Try
        btncancelar.Visible = True
        btneditar.Visible = False

        buscar()



    End Sub

    Private Sub buscar()
        Try
            Dim ds As New DataSet
            ds.Tables.Add(dt.Copy)
            Dim dv As New DataView(ds.Tables(0))

            dv.RowFilter = cbocampo.Text & " like '" & txtbuscar.Text & "%'"

            If dv.Count <> 0 Then
                inexistente.Visible = False
                datalistado.DataSource = dv
                ocultar_columnas()

            Else
                inexistente.Visible = True
                datalistado.DataSource = Nothing
            End If

        Catch ex As Exception
            MsgBox(ex.Message)

        End Try
    End Sub

    Private Sub ocultar_columnas()
        datalistado.Columns(1).Visible = False
        datalistado.Columns(8).Visible = False
        datalistado.Columns(9).Visible = False
    End Sub

    Private Sub txtapellidos_Validating(sender As Object, e As System.ComponentModel.CancelEventArgs) Handles txtcurp.Validating
        If DirectCast(sender, TextBox).Text.Length > 0 Then
            Me.erroricono.SetError(sender, "")
        Else
            Me.erroricono.SetError(sender, "Ingrese el CURP del usuario, este dato es obligatorio")
        End If
    End Sub

    Private Sub txtdireccion_Validating(sender As Object, e As System.ComponentModel.CancelEventArgs) Handles txtapellidos.Validating
        If DirectCast(sender, TextBox).Text.Length > 0 Then
            Me.erroricono.SetError(sender, "")
        Else
            Me.erroricono.SetError(sender, "Ingrese los apellidos del usuario, este dato es obligatorio")
        End If
    End Sub

    Private Sub txttelefono_Validating(sender As Object, e As System.ComponentModel.CancelEventArgs) Handles txtnombre.Validating
        If DirectCast(sender, TextBox).Text.Length > 0 Then
            Me.erroricono.SetError(sender, "")
        Else
            Me.erroricono.SetError(sender, "Ingrese el nombre del usuario, este dato es obligatorio")
        End If
    End Sub

    Private Sub txtlogin_Validating(sender As Object, e As System.ComponentModel.CancelEventArgs) Handles txtlogin.Validating
        If DirectCast(sender, TextBox).Text.Length > 0 Then
            Me.erroricono.SetError(sender, "")
        Else
            Me.erroricono.SetError(sender, "Ingrese el login del usuario, este dato es obligatorio")
        End If
    End Sub

    Private Sub txtpassword_Validating(sender As Object, e As System.ComponentModel.CancelEventArgs) Handles txtpassword.Validating
        If DirectCast(sender, TextBox).Text.Length > 0 Then
            Me.erroricono.SetError(sender, "")
        Else
            Me.erroricono.SetError(sender, "Ingrese password del usuario, este dato es obligatorio")
        End If
    End Sub

    Private Sub txtacceso_Validating(sender As Object, e As System.ComponentModel.CancelEventArgs) Handles txtacceso.Validating
        If DirectCast(sender, TextBox).Text.Length > 0 Then
            Me.erroricono.SetError(sender, "")
        Else
            Me.erroricono.SetError(sender, "Ingrese el acceso del usuario, este dato es obligatorio")
        End If
    End Sub

    Private Sub txtnombre_Validating(sender As Object, e As System.ComponentModel.CancelEventArgs) Handles txttelefono.Validating
        If DirectCast(sender, TextBox).Text.Length > 0 Then
            Me.erroricono.SetError(sender, "")
        Else
            Me.erroricono.SetError(sender, "Ingrese el telefono del usuario, este dato es obligatorio")
        End If
    End Sub

    Private Sub btnnuevo_Click(sender As Object, e As EventArgs) Handles btncancelar.Click
        limpiar()
        mostrar()
    End Sub

    Private Sub btnguardar_Click(sender As Object, e As EventArgs) Handles btnguardar.Click
        If Me.ValidateChildren = True And txtnombre.Text <> "" And txtapellidos.Text <> "" And txtcurp.Text <> "" And txttelefono.Text <> "" And txtlogin.Text <> "" And txtpassword.Text <> "" And txtacceso.Text <> "" Then
            Try
                Dim dts As New vusuario
                Dim func As New fusuario

                dts.gnombre = txtnombre.Text
                dts.gapellidos = txtapellidos.Text
                dts.gcurp = txtcurp.Text
                dts.gdireccion = txtdireccion.Text
                dts.gtelefono = txttelefono.Text
                dts.glogin = txtlogin.Text
                dts.gpassword = txtpassword.Text
                dts.gacceso = txtacceso.Text

                If func.insertar(dts) Then
                    MessageBox.Show("Usuario registrado con exito", "Guardando registros", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    mostrar()
                    limpiar()
                Else
                    MessageBox.Show("No se realizó el registro del usuario intente de nuevo", "Guardando registros", MessageBoxButtons.OK, MessageBoxIcon.Error)
                    mostrar()
                    limpiar()
                End If

            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Falta ingresar algunos datos", "Guardando registros", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
    End Sub

    Private Sub datalistado_CellContentClick(sender As Object, e As DataGridViewCellEventArgs) Handles datalistado.CellContentClick
        If e.ColumnIndex = Me.datalistado.Columns.Item("Eliminar").Index Then
            Dim chkcell As DataGridViewCheckBoxCell = Me.datalistado.Rows(e.RowIndex).Cells("Eliminar")
            chkcell.Value = Not chkcell.Value
        End If
    End Sub

    Private Sub datalistado_CellClick(sender As Object, e As DataGridViewCellEventArgs) Handles datalistado.CellClick
        txtidusuario.Text = datalistado.SelectedCells.Item(1).Value
        txtnombre.Text = datalistado.SelectedCells.Item(2).Value
        txtapellidos.Text = datalistado.SelectedCells.Item(3).Value
        txtcurp.Text = datalistado.SelectedCells.Item(4).Value
        txtdireccion.Text = datalistado.SelectedCells.Item(5).Value
        txttelefono.Text = datalistado.SelectedCells.Item(6).Value
        txtlogin.Text = datalistado.SelectedCells.Item(7).Value
        txtpassword.Text = datalistado.SelectedCells.Item(8).Value
        txtacceso.Text = datalistado.SelectedCells.Item(9).Value

        btneditar.Visible = True
        btnguardar.Visible = False
    End Sub

    Private Sub btneditar_Click(sender As Object, e As EventArgs) Handles btneditar.Click
        Dim result As DialogResult

        result = MessageBox.Show("¿Deseas editar los datos del usuario?", "Modificando registros", MessageBoxButtons.OKCancel, MessageBoxIcon.Question)

        If result = DialogResult.OK Then


            If Me.ValidateChildren = True And txtidusuario.Text And txtnombre.Text <> "" And txtapellidos.Text <> "" And txtcurp.Text <> "" And txttelefono.Text <> "" And txtlogin.Text <> "" And txtpassword.Text <> "" And txtacceso.Text <> "" Then
                Try
                    Dim dts As New vusuario
                    Dim func As New fusuario

                    dts.gidusuario = txtidusuario.Text
                    dts.gnombre = txtnombre.Text
                    dts.gapellidos = txtapellidos.Text
                    dts.gcurp = txtcurp.Text
                    dts.gdireccion = txtcurp.Text
                    dts.gtelefono = txtdireccion.Text
                    dts.glogin = txtlogin.Text
                    dts.gpassword = txtpassword.Text
                    dts.gacceso = txtacceso.Text

                    If func.editar(dts) Then
                        MessageBox.Show("Usuario modificado con exito", "Modificando registros", MessageBoxButtons.OK, MessageBoxIcon.Information)
                        mostrar()
                        limpiar()
                    Else
                        MessageBox.Show("No se realizó la modificación del usuario intente de nuevo", "Modificando registros", MessageBoxButtons.OK, MessageBoxIcon.Error)
                        mostrar()
                        limpiar()
                    End If

                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            Else
                MessageBox.Show("Falta ingresar algunos datos", "Modificando registros", MessageBoxButtons.OK, MessageBoxIcon.Information)
            End If
        End If
    End Sub

    Private Sub cbeliminar_CheckedChanged(sender As Object, e As EventArgs) Handles cbeliminar.CheckedChanged
        If cbeliminar.CheckState = CheckState.Checked Then
            datalistado.Columns.Item("Eliminar").Visible = True
        Else
            datalistado.Columns.Item("Eliminar").Visible = False
        End If
    End Sub

    Private Sub btneliminar_Click(sender As Object, e As EventArgs) Handles btneliminar.Click
        Dim result As DialogResult

        result = MessageBox.Show("¿Deseas eliminar el(los) usuarios(s) seleccionado(s)?", "Eliminando registros", MessageBoxButtons.OKCancel, MessageBoxIcon.Question)

        If result = DialogResult.OK Then
            Try
                For Each row As DataGridViewRow In datalistado.Rows
                    Dim marcado As Boolean = Convert.ToBoolean(row.Cells("Eliminar").Value)

                    If marcado Then
                        Dim onekey As Integer = Convert.ToInt32(row.Cells("idusuario").Value)
                        Dim vbd As New vusuario
                        Dim func As New fusuario
                        vbd.gidusuario = onekey

                        If func.eliminar(vbd) Then
                        Else
                            MessageBox.Show("Usuario no eliminado intente de nuevo", "Eliminando registros", MessageBoxButtons.OK, MessageBoxIcon.Information)
                        End If
                    End If
                Next
                Call mostrar()
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Eliminación de registros cancelada", "Eliminando registros", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Call mostrar()
        End If
        Call limpiar()
    End Sub

    Private Sub btnnuevo_Click_1(sender As Object, e As EventArgs) Handles btnnuevo.Click
        limpiar()
        mostrar()
    End Sub

    Private Sub txtbuscar_TextChanged(sender As Object, e As EventArgs) Handles txtbuscar.TextChanged
        buscar()
    End Sub
End Class