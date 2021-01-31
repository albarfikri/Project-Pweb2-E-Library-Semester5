Imports System.Data.SqlClient

Public Class registrasi
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection("Data Source=LAPTOP-IF574GLF\ALBARSQL;Initial Catalog=dbUasPweb;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ButtonUpdate_Click(sender As Object, e As EventArgs) Handles ButtonUpdate.Click
        Dim cmd As New SqlCommand
        cmd.CommandText = "INSERT INTO anggota (nama,nik,alamat,ttl,jenis_kelamin,email,no_hp,username,password,kategori) values 
                            ('" & nama.Text & "','" & nik.Text & "','" & alamat.Text & "','" & ttl.Text & "','" & jenis_kelamin.Text & "','" & email.Text & "','" & no_hp.Text & "','" & username.Text & "','" & password.Text & "','member')"
        cmd.Connection = conn
        conn.Open()
        cmd.ExecuteNonQuery()
        conn.Close()
        MsgBox("Success to register !", MsgBoxStyle.Information)
        Response.Redirect("login.aspx")

    End Sub
End Class