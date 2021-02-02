Imports System.Data.SqlClient

Public Class bukuedit
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=LAPTOP-IF574GLF\ALBARSQL;Initial Catalog=dbUasPweb;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim idName As String = Request.QueryString("id_buku")
            BindRepeater()
        End If
    End Sub

    Private Sub BindRepeater()
        Dim IdName As String = Request.QueryString("id")
        Dim cmd As New SqlCommand("Select * from buku where id_buku='" & IdName & "'", con)
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If
        Dim ds As New DataSet()
        Dim adp As New SqlDataAdapter(cmd)
        adp.Fill(ds)
        RepeaterEditBuku.DataSource = ds
        RepeaterEditBuku.DataBind()
        con.Close()
    End Sub

    Protected Sub Edit_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles RepeaterEditBuku.ItemCommand
        If e.CommandName = "update" Then
            Dim judul_buku As String = DirectCast(e.Item.FindControl("judul_buku"), TextBox).Text
            Dim kategori As String = DirectCast(e.Item.FindControl("kategori"), DropDownList).Text
            Dim stok As String = DirectCast(e.Item.FindControl("stok"), TextBox).Text
            Dim tgl As String = DirectCast(e.Item.FindControl("tgl"), TextBox).Text
            Dim nama_pengarang As String = DirectCast(e.Item.FindControl("nama_pengarang"), TextBox).Text
            Dim sinopsis As String = DirectCast(e.Item.FindControl("sinopsis"), HtmlTextArea).InnerText
            Dim gambar As String = DirectCast(e.Item.FindControl("gambar"), TextBox).Text


            Dim adp As New SqlDataAdapter("Update buku set judul_buku= @judul_buku, kategori=@kategori, stok=@stok, tgl=@tgl, nama_pengarang=@nama_pengarang, sinopsis=@sinopsis, gambar=@gambar where id_buku = @id_buku", con)
            adp.SelectCommand.Parameters.AddWithValue("@judul_buku", judul_buku)
            adp.SelectCommand.Parameters.AddWithValue("@kategori", kategori)
            adp.SelectCommand.Parameters.AddWithValue("@stok", stok)
            adp.SelectCommand.Parameters.AddWithValue("@tgl", tgl)
            adp.SelectCommand.Parameters.AddWithValue("@nama_pengarang", nama_pengarang)
            adp.SelectCommand.Parameters.AddWithValue("@sinopsis", sinopsis)
            adp.SelectCommand.Parameters.AddWithValue("@gambar", gambar)
            adp.SelectCommand.Parameters.AddWithValue("@id_buku", e.CommandArgument)
            Dim ds As New DataSet()
            adp.Fill(ds)
            BindRepeater()
            MsgBox("Data has been updated successfully !", MsgBoxStyle.Information)
            Response.Redirect("~/Admin/buku.aspx")
        End If
    End Sub

End Class