Public Class library
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim activepage = Request.RawUrl
        If (activepage.Contains("Admin/buku.aspx")) Then
            buku.Attributes.Add("class", "nav-item active")
        ElseIf (activepage.Contains("Admin/petugas.aspx")) Then
            staff.Attributes.Add("class", "nav-item active")
        ElseIf (activepage.Contains("Admin/member.aspx")) Then
            member.Attributes.Add("class", "nav-item active")
        ElseIf (activepage.Contains("Admin/dashboard.aspx")) Then
            dashboard.Attributes.Add("class", "nav-item active")
        ElseIf (activepage.Contains("Admin/maps.aspx")) Then
            maps.Attributes.Add("class", "nav-item active")
        Else

        End If
    End Sub
End Class