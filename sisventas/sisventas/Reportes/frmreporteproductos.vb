Public Class frmreporteproductos
    Private Sub frmreporteproductos_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'TODO: esta línea de código carga datos en la tabla 'bdventasDataSet.mostrar_producto' Puede moverla o quitarla según sea necesario.
        Me.mostrar_productoTableAdapter.Fill(bdventasDataSet.mostrar_producto)

        Me.ReportViewer1.RefreshReport()
    End Sub
End Class