﻿Imports System.Data.SqlClient

Public Class petugastambah
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection("Data Source=LAPTOP-IF574GLF\ALBARSQL;Initial Catalog=dbUasPweb;Integrated Security=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub tambahpetugas_Click(sender As Object, e As EventArgs) Handles tambahpetugas.Click

        If (String.IsNullOrEmpty(nik.Text)) Then
            MsgBox("Fields cannot be empty !", MsgBoxStyle.Critical)

        Else
            Dim cmd As New SqlCommand
            cmd.CommandText = "INSERT INTO anggota (nama,nik,alamat,ttl,jenis_kelamin,email,no_hp,username,password,kategori,gambar) values 
                            ('" & nama.Text & "','" & nik.Text & "','" & alamat.Text & "','" & ttl.Text & "','" & jenis_kelamin.Text & "','" & email.Text & "','" & no_hp.Text & "','" & username.Text & "','" & password.Text & "','admin','" & gambar.Text & "')"
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
            conn.Close()
            MsgBox("Inserting data Successfuly !", MsgBoxStyle.Information)
            Response.Redirect("petugas.aspx")
        End If
    End Sub
End Class