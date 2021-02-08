Imports System.Data.SqlClient

Public Class dashboardmember
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=LAPTOP-IF574GLF\ALBARSQL;Initial Catalog=dbUasPweb;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Me.BindRepeater()
        End If
    End Sub

    Private Sub BindRepeater()
        Static id As String = ""
        Dim idName As String = Request.Cookies("cookie").Value
        Dim cmd As New SqlCommand("Select * from anggota where kategori='member' and id='" & idName & "'", con)
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If
        Dim ds As New DataSet()
        Dim adp As New SqlDataAdapter(cmd)
        adp.Fill(ds)
        RepeaterEditMember.DataSource = ds
        RepeaterEditMember.DataBind()
        con.Close()
    End Sub

    Protected Sub Editmember_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Dim btn As LinkButton = CType(sender, LinkButton)
        Dim id As String = btn.CommandArgument
        Response.Redirect(String.Format("~/Member/memberedit.aspx?id={0}", id))
    End Sub

End Class