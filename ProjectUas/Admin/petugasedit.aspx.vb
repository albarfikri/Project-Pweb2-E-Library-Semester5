Imports System.Data.SqlClient

Public Class petugasedit
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=LAPTOP-IF574GLF\ALBARSQL;Initial Catalog=dbUasPweb;Integrated Security=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim idName As String = Request.QueryString("id")
            BindRepeater()
        End If
    End Sub

    Private Sub BindRepeater()
        Dim IdName As String = Request.QueryString("id")
        Dim cmd As New SqlCommand("Select * from anggota where id='" & IdName & "'", con)
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If
        Dim ds As New DataSet()
        Dim adp As New SqlDataAdapter(cmd)
        adp.Fill(ds)
        RepeaterEditPetugas.DataSource = ds
        RepeaterEditPetugas.DataBind()
        con.Close()
    End Sub


    Protected Sub Edit_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles RepeaterEditPetugas.ItemCommand
        If e.CommandName = "update" Then
            Dim nama As String = DirectCast(e.Item.FindControl("nama"), TextBox).Text
            Dim nik As String = DirectCast(e.Item.FindControl("nik"), TextBox).Text
            Dim alamat As String = DirectCast(e.Item.FindControl("alamat"), TextBox).Text
            Dim ttl As String = DirectCast(e.Item.FindControl("ttl"), TextBox).Text
            Dim jenis_kelamin As String = DirectCast(e.Item.FindControl("jenis_kelamin"), DropDownList).Text
            Dim email As String = DirectCast(e.Item.FindControl("email"), TextBox).Text
            Dim no_hp As String = DirectCast(e.Item.FindControl("no_hp"), TextBox).Text
            Dim username As String = DirectCast(e.Item.FindControl("username"), TextBox).Text
            Dim password As String = DirectCast(e.Item.FindControl("password"), TextBox).Text
            Dim gambar As String = DirectCast(e.Item.FindControl("gambar"), TextBox).Text



            Dim adp As New SqlDataAdapter("Update anggota set nama= @nama, nik=@nik, alamat=@alamat, ttl=@ttl, jenis_kelamin=@jenis_kelamin, email=@email, no_hp=@no_hp, username=@username, password=@password, gambar=@gambar where id = @id", con)
            adp.SelectCommand.Parameters.AddWithValue("@nama", nama)
            adp.SelectCommand.Parameters.AddWithValue("@nik", nik)
            adp.SelectCommand.Parameters.AddWithValue("@alamat", alamat)
            adp.SelectCommand.Parameters.AddWithValue("@ttl", ttl)
            adp.SelectCommand.Parameters.AddWithValue("@jenis_kelamin", jenis_kelamin)
            adp.SelectCommand.Parameters.AddWithValue("@email", email)
            adp.SelectCommand.Parameters.AddWithValue("@no_hp", no_hp)
            adp.SelectCommand.Parameters.AddWithValue("@username", username)
            adp.SelectCommand.Parameters.AddWithValue("@password", password)
            adp.SelectCommand.Parameters.AddWithValue("@gambar", gambar)
            adp.SelectCommand.Parameters.AddWithValue("@id", e.CommandArgument)
            Dim ds As New DataSet()
            adp.Fill(ds)
            BindRepeater()
            MsgBox("Data has been updated successfully !", MsgBoxStyle.Information)
            Response.Redirect("~/Admin/petugas.aspx")
        End If
    End Sub

End Class