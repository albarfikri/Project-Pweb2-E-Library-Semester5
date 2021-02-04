Imports System.Data.SqlClient

Public Class comment
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=LAPTOP-IF574GLF\ALBARSQL;Initial Catalog=dbUasPweb;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Me.BindRepeater()
        End If
    End Sub

    Private Sub BindRepeater()
        Dim cmd As New SqlCommand("Select * from dafcom", con)
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If
        Dim ds As New DataSet()
        Dim adp As New SqlDataAdapter(cmd)
        adp.Fill(ds)
        RepeaterKomen.DataSource = ds
        RepeaterKomen.DataBind()
        con.Close()
    End Sub

    Protected Sub Komen(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles RepeaterKomen.ItemCommand
        If e.CommandName = "delete" Then
            If con.State = ConnectionState.Closed Then
                con.Open()
            End If
            Dim cmd As New SqlCommand("delete from dafcom where id_komen = @id_komen", con)
            cmd.Parameters.AddWithValue("@id_komen", e.CommandArgument)
            cmd.ExecuteNonQuery()
            cmd.Dispose()
            BindRepeater()
            MsgBox("Data is removed successfully.", MsgBoxStyle.Information)
        End If
    End Sub
End Class