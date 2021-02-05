Imports System.Data.SqlClient

Public Class dashboardmember
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=LAPTOP-IF574GLF\ALBARSQL;Initial Catalog=dbUasPweb;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim idName As String = Request.QueryString("id_buku")

        End If
    End Sub



End Class