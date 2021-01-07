Public Class dashboard1
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim activepage = Request.RawUrl
        If (activepage.Contains("Dashboard/index.aspx")) Then
            index.Attributes.Add("class", "nav-link active")
        ElseIf (activepage.Contains("Dashboard/gallery.aspx")) Then
            gallery.Attributes.Add("class", "nav-link active")
        ElseIf (activepage.Contains("Dashboard/contact.aspx")) Then
            contact.Attributes.Add("class", "nav-link active")
        ElseIf (activepage.Contains("Dashboard/login.aspx")) Then
            login.Attributes.Add("class", "nav-link active")
        Else

        End If
    End Sub

End Class