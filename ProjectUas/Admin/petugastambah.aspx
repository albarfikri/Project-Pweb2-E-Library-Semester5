<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="petugastambah.aspx.vb" Inherits="ProjectUas.petugastambah" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Tambah Petugas
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header card-header-primary">
                            <h4 class="card-title">Tambah Petugas</h4>
                            <p class="card-category">Complete your staff</p>
                        </div>
                        <div class="card-body">

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Nama</label>
                                        <asp:TextBox runat="server" ID="nama" type="text" name="nama" class="form-control"></asp:TextBox>
                                        <%--    <input id="Text1" type="text" />--%>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Nik</label>
                                        <asp:TextBox runat="server" ID="nik" type="number" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label class="bmd-label-floating">Tanggal Lahir</label>
                                    <div class="form-group">
                                        <asp:TextBox runat="server" ID="ttl" type="date" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label class="bmd-label-floating">Jenis Kelamin</label>
                                    <div class="form-group">
                                        
                                        <asp:DropDownList runat="server" class="form-control" type="text" name="jenis_kelamin" ID="jenis_kelamin" placeholder="Jenis kelamin">
                                            <asp:ListItem Value="Pria">Pria</asp:ListItem>
                                            <asp:ListItem Value="Wanita">Wanita</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Alamat</label>
                                        <asp:TextBox runat="server" ID="alamat" type="text" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div>
                                        <span class="btn btn-raised btn-round btn-rose btn-file">
                                            <asp:TextBox runat="server" ID="gambar" type="file" name="..."></asp:TextBox>
                                        </span>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Email</label>
                                        <asp:TextBox runat="server" ID="email" type="email" class="form-control"></asp:TextBox>
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">No Hp</label>
                                        <asp:TextBox runat="server" ID="no_hp" type="number" class="form-control"></asp:TextBox>
                                    </div>

                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">username</label>
                                        <asp:TextBox runat="server" ID="username" type="text" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">password</label>
                                        <asp:TextBox runat="server" ID="password" type="password" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                    </div>
                                </div>
                            </div>
                            <asp:LinkButton ID="tambahpetugas" type="submit" runat="server" class="btn btn-primary pull-right">Tambah </asp:LinkButton>
                            <div class="clearfix"></div>

                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-profile">
                        <div class="card-avatar">
                            <a href="javascript:;">
                                <img class="img" src="../assets/img/faces/marc.jpg" />
                            </a>
                        </div>
                        <div class="card-body">
                            <h6 class="card-category text-gray">CEO / Co-Founder</h6>
                            <h4 class="card-title">Alec Thompson</h4>
                            <p class="card-description">
                                Don't be scared of the truth because we need to restart the human foundation in truth And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                            </p>
                            <a href="javascript:;" class="btn btn-primary btn-round">Follow</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
