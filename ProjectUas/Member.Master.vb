Public Class Member
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim activepage = Request.RawUrl
        If (activepage.Contains("Member/dashboardmember.aspx")) Then
            dashboardmember.Attributes.Add("class", "nav-item active")
        ElseIf (activepage.Contains("Member/memberbuku.aspx")) Then
            memberbuku.Attributes.Add("class", "nav-item active")
        Else

        End If
    End Sub

End Class