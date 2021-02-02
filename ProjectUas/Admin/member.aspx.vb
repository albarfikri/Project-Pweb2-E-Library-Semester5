Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient


Public Class Petugas
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=LAPTOP-IF574GLF\ALBARSQL;Initial Catalog=dbUasPweb;Integrated Security=True")
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Me.BindRepeater()
        End If
    End Sub


    Private Sub BindRepeater()
        Dim cmd As New SqlCommand("Select * from anggota where kategori='member'", con)
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If
        Dim ds As New DataSet()
        Dim adp As New SqlDataAdapter(cmd)
        adp.Fill(ds)
        RepeaterMember.DataSource = ds
        RepeaterMember.DataBind()
        con.Close()
    End Sub

    Protected Sub Member_Command(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles RepeaterMember.ItemCommand
        If e.CommandName = "delete" Then
            If con.State = ConnectionState.Closed Then
                con.Open()
            End If
            Dim cmd As New SqlCommand("delete from anggota where id = @id", con)
            cmd.Parameters.AddWithValue("@id", e.CommandArgument)
            cmd.ExecuteNonQuery()
            cmd.Dispose()
            BindRepeater()
            MsgBox("Data is removed successfully.", MsgBoxStyle.Information)
        End If
    End Sub
End Class

