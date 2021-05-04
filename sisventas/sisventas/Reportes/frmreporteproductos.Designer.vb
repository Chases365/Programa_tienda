<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmreporteproductos
    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms necesita el siguiente procedimiento
    'Se puede modificar usando el Diseñador de Windows Forms.  
    'No lo modifique con el editor de código.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim ReportDataSource1 As Microsoft.Reporting.WinForms.ReportDataSource = New Microsoft.Reporting.WinForms.ReportDataSource()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmreporteproductos))
        Me.mostrar_productoBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.bdventasDataSet = New sisventas.bdventasDataSet()
        Me.ReportViewer1 = New Microsoft.Reporting.WinForms.ReportViewer()
        Me.mostrar_productoTableAdapter = New sisventas.bdventasDataSetTableAdapters.mostrar_productoTableAdapter()
        CType(Me.mostrar_productoBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.bdventasDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'mostrar_productoBindingSource
        '
        Me.mostrar_productoBindingSource.DataMember = "mostrar_producto"
        Me.mostrar_productoBindingSource.DataSource = Me.bdventasDataSet
        '
        'bdventasDataSet
        '
        Me.bdventasDataSet.DataSetName = "bdventasDataSet"
        Me.bdventasDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'ReportViewer1
        '
        Me.ReportViewer1.Dock = System.Windows.Forms.DockStyle.Fill
        ReportDataSource1.Name = "DataSet1"
        ReportDataSource1.Value = Me.mostrar_productoBindingSource
        Me.ReportViewer1.LocalReport.DataSources.Add(ReportDataSource1)
        Me.ReportViewer1.LocalReport.ReportEmbeddedResource = "sisventas.rptproductos.rdlc"
        Me.ReportViewer1.Location = New System.Drawing.Point(0, 0)
        Me.ReportViewer1.Name = "ReportViewer1"
        Me.ReportViewer1.ServerReport.BearerToken = Nothing
        Me.ReportViewer1.Size = New System.Drawing.Size(923, 481)
        Me.ReportViewer1.TabIndex = 0
        '
        'mostrar_productoTableAdapter
        '
        Me.mostrar_productoTableAdapter.ClearBeforeFill = True
        '
        'frmreporteproductos
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(923, 481)
        Me.Controls.Add(Me.ReportViewer1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "frmreporteproductos"
        Me.Text = "Reporte Sistema de Ventas"
        CType(Me.mostrar_productoBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.bdventasDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents ReportViewer1 As Microsoft.Reporting.WinForms.ReportViewer
    Friend WithEvents mostrar_productoBindingSource As BindingSource
    Friend WithEvents bdventasDataSet As bdventasDataSet
    Friend WithEvents mostrar_productoTableAdapter As bdventasDataSetTableAdapters.mostrar_productoTableAdapter
End Class
