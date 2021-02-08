Imports System.Data.SqlClient

Public Class bukutambah
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection("Data Source=LAPTOP-IF574GLF\ALBARSQL;Initial Catalog=dbUasPweb;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub tambahbuku_Click(sender As Object, e As EventArgs) Handles tambahbuku.Click

        If (String.IsNullOrEmpty(kategori.Text)) Then
            MsgBox("Fields cannot be empty !", MsgBoxStyle.Critical)

        Else
            Dim cmd As New SqlCommand
            cmd.CommandText = "INSERT INTO buku (judul_buku,kategori,stok,tgl,nama_pengarang,sinopsis,gambar,filebuku) values 
                            ('" & judul_buku.Text & "','" & kategori.Text & "','" & stok.Text & "','" & tgl.Text & "','" & nama_pengarang.Text & "','" & sinopsis.InnerText & "','" & gambar.Text & "','" & filebuku.Text & "')"
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
            conn.Close()
            MsgBox("Inserting data Successfuly !", MsgBoxStyle.Information)
            Response.Redirect("buku.aspx")
        End If
    End Sub
End Class