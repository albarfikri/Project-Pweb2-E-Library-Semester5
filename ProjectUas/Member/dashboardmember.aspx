<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Member.Master" CodeBehind="dashboardmember.aspx.vb" Inherits="ProjectUas.dashboardmember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Member Dashboard
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                        <div class="card-header card-header-warning card-header-icon">
                            <div class="card-icon">
                                <i class="material-icons">book</i>
                            </div>
                            <p class="card-category">Jumlah Buku</p>
                            <h3 class="card-title">512
                    <small>Unit</small>
                            </h3>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">warning</i>
                                <a href="javascript:;">Will be updated automatically...</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                        <div class="card-header card-header-success card-header-icon">
                            <div class="card-icon">
                                <i class="material-icons">people</i>
                            </div>
                            <p class="card-category">Jumlah Petugas</p>
                            <h3 class="card-title">124
                    <small>Orang</small>
                            </h3>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">date_range</i> Last 24 Hours
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                        <div class="card-header card-header-danger card-header-icon">
                            <div class="card-icon">
                                <i class="material-icons">article</i>
                            </div>
                            <p class="card-category">Jenis Buku</p>
                            <h3 class="card-title">75
                                <small>Unit</small>
                            </h3>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">local_offer</i> Tracked from daily costumer usage
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                        <div class="card-header card-header-info card-header-icon">
                            <div class="card-icon">
                                <i class="material-icons">person</i>
                            </div>
                            <p class="card-category">Member</p>
                            <h3 class="card-title">500
                                <small>Orang</small>
                            </h3>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">update</i> Just Updated
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-warning">
                        <h4 class="card-title">Data Diri </h4>
                        <p class="card-category">Edit Data Diri</p>
                    </div>
                    <div class="card-body table-responsive">
                        <table class="table table-hover">
                            <asp:Repeater ID="RepeaterEditMember" runat="server">
                                <HeaderTemplate>
                                    <thead class="text-warning">
                                        <th>Nama</th>
                                        <th>Nik</th>
                                        <th>Alamat</th>
                                        <th>TTL</th>
                                        <th>Jenis Kelamin</th>
                                        <th>Email</th>
                                        <th>No Hp</th>
                                        <th>Username</th>
                                        <th>Password</th>

                                        <th>Gambar</th>
                                    </thead>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <%# Eval("nama") %>
                                            </td>

                                            <td>
                                                <%# Eval("nik") %>
                                            </td>

                                            <td>
                                                <%# Eval("alamat") %>
                                            </td>
                                            <td>
                                                <%# Eval("ttl") %>
                                            </td>
                                            <td>
                                                <%# Eval("jenis_kelamin") %>
                                            </td>
                                            <td>
                                                <%# Eval("email") %>
                                            </td>
                                            <td>
                                                <%# Eval("no_hp") %>                                            
                                            </td>
                                            <td>
                                                <%# Eval("username") %>
                                            </td>
                                            <td>
                                                <%# Eval("password") %>
                                            </td>
                                            <td>
                                                <img src="https://localhost:44308/Assets/Img/<%# Eval("gambar") %>" height="180" width="140" />
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="edit" runat="server" CommandArgument='<%# Eval("id") %>' OnClick="Editmember_Click" class="btn btn-warning  btn-fab btn-fab-mini btn-round">
                                                    <i class="material-icons">edit</i>
                                                </asp:LinkButton>

                                            </td>
                                        </tr>
                                    </tbody>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
