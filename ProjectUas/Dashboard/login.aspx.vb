Imports System.Data.SqlClient

Public Class login
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection("Data Source=LAPTOP-IF574GLF\ALBARSQL;Initial Catalog=dbUasPweb;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ButtonLogin_Click(sender As Object, e As EventArgs) Handles ButtonLogin.Click

        Dim cmd As String
            cmd = "select * from anggota where username = '" & username.Text & "'and password='" & password.Text & "'"
            Dim da As New SqlDataAdapter(cmd, conn)
            Dim ds As New DataSet
            da.Fill(ds)

        If ds.Tables(0).Rows.Count > 0 Then

            MsgBox("Authentication Successfully.", MsgBoxStyle.Information)
            Response.Redirect("~/Admin/dashboard.aspx")
        Else
            MsgBox("Username and Password do not match !", MsgBoxStyle.Exclamation)
            Response.Redirect("login.aspx")
        End If
    End Sub

End Class