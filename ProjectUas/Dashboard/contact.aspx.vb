Imports System.Data.SqlClient

Public Class contact
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection("Data Source=LAPTOP-IF574GLF\ALBARSQL;Initial Catalog=dbUasPweb;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


    End Sub

    Protected Sub komentambah_Click(sender As Object, e As EventArgs) Handles komentambah.Click
        Dim tgl As String = DateTime.Now()

        Dim cmd As New SqlCommand
        cmd.CommandText = "INSERT INTO dafcom (email, subject, komen, nama, tgl) values 
                            ('" & email.Text & "','" & subject.Text & "','" & komen.InnerHtml & "','" & nama.Text & "','" & tgl & "')"
        cmd.Connection = conn
        conn.Open()
        cmd.ExecuteNonQuery()
        conn.Close()
        MsgBox("Inserting data Successfuly ! ", MsgBoxStyle.Information)
        Response.Redirect("contact.aspx")
    End Sub


End Class