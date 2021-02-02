Imports System.Data.SqlClient

Public Class gallery
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=LAPTOP-IF574GLF\ALBARSQL;Initial Catalog=dbUasPweb;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Me.BindRepeater()
        End If
    End Sub
    Private Sub BindRepeater()
        Dim cmd As New SqlCommand("Select * from buku", con)
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If
        Dim ds As New DataSet()
        Dim adp As New SqlDataAdapter(cmd)
        adp.Fill(ds)
        Beranda.DataSource = ds
        Beranda.DataBind()
        con.Close()
    End Sub
End Class