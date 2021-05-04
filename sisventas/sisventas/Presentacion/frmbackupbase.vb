Public Class frmbackupbase
    Private Sub btnbackup_Click(sender As Object, e As EventArgs) Handles btnbackup.Click
        Try
            Dim func As New fbackup

            If func.backupbase Then
                MessageBox.Show("Backup generado con exito", "Backup Base de Datos", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Else
                MessageBox.Show("Backup no generado intente de nuevo", "Backup Base de Datos", MessageBoxButtons.OK, MessageBoxIcon.Error)
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class