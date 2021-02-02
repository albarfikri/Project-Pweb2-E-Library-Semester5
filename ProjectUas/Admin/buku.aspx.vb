Imports System.Data.SqlClient

Public Class buku
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=LAPTOP-IF574GLF\ALBARSQL;Initial Catalog=dbUasPweb;Integrated Security=True")
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
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
        RepeaterBuku.DataSource = ds
        RepeaterBuku.DataBind()
        con.Close()
    End Sub

    Protected Sub Buku_Command(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles RepeaterBuku.ItemCommand
        If e.CommandName = "delete" Then
            If con.State = ConnectionState.Closed Then
                con.Open()
            End If
            Dim cmd As New SqlCommand("delete from buku where id_buku = @id_buku", con)
            cmd.Parameters.AddWithValue("@id_buku", e.CommandArgument)
            cmd.ExecuteNonQuery()
            cmd.Dispose()
            BindRepeater()
            MsgBox("Data is removed successfully.", MsgBoxStyle.Information)
        End If
    End Sub

    Protected Sub Edit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Dim btn As LinkButton = CType(sender, LinkButton)
        Dim id As String = btn.CommandArgument
        Response.Redirect(String.Format("~/Admin/bukuedit.aspx?id={0}", id))
    End Sub


End Class