Public Class frmlogin
    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        lblhora.Text = TimeOfDay
    End Sub

    Private Sub frmlogin_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        lblhora.Text = TimeOfDay
    End Sub

    Private Sub btnsalir_Click(sender As Object, e As EventArgs) Handles btnsalir.Click
        End
    End Sub

    Private Sub btningresar_Click(sender As Object, e As EventArgs) Handles btningresar.Click
        Try
            Dim dts As New vusuario
            Dim func As New fusuario

            dts.glogin = txtlogin.Text
            dts.gpassword = txtpassword.Text

            If func.validar_usuario(dts) = True Then
                frminicio.Show()
                Me.Hide()
            Else
                MsgBox("Datos incorrectos ingrese nuevamente sus datos", MsgBoxStyle.Information, "Acceso Denegado")
                txtpassword.Clear()
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub GroupBox1_Enter(sender As Object, e As EventArgs) Handles GroupBox1.Enter

    End Sub
End Class