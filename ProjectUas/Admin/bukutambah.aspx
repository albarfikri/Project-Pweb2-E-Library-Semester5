﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="bukutambah.aspx.vb" Inherits="ProjectUas.bukutambah" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Tambah Buku
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header card-header-primary">
                            <h4 class="card-title">Tambah Buku</h4>
                            <p class="card-category">Complete your Book</p>
                        </div>
                        <div class="card-body">

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Judul Buku</label>
                                        <asp:TextBox runat="server" ID="judul_buku" type="text" name="judul_buku" class="form-control"></asp:TextBox>
                                        <%--    <input id="Text1" type="text" />--%>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Stok</label>
                                        <asp:TextBox runat="server" ID="stok" type="number" class="form-control" name="stok"></asp:TextBox>
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
                                    <label class="bmd-label-floating">Tanggal terbit buku</label>
                                    <div class="form-group">
                                        <asp:TextBox runat="server" ID="tgl" type="date" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label class="bmd-label-floating">Kategori</label>
                                    <div class="form-group">
                                        
                                        <asp:DropDownList runat="server" class="form-control" type="text" name="kategori" ID="kategori" placeholder="Kategori">
                                            <asp:ListItem Value="Novel">Novel</asp:ListItem>
                                            <asp:ListItem Value="Komik">Komik</asp:ListItem>
                                            <asp:ListItem Value="Pendidikan">Pendidikan</asp:ListItem>
                                            <asp:ListItem Value="Kesehatan">Kesehatan</asp:ListItem>
                                            <asp:ListItem Value="Teknologi">Teknologi</asp:ListItem>
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
                                        <label class="bmd-label-floating">Nama Pengarang</label>
                                        <asp:TextBox runat="server" ID="nama_pengarang" type="text" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div>
                                         <label class="bmd-label-floating">Pictures</label>
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
                                        <label class="bmd-label-floating">Sinopsis</label>
                                        <textarea ID="sinopsis" runat="server" class="form-control"  rows="5"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div>
                                         <label class="bmd-label-floating">File Buku</label>
                                        <span class="btn btn-raised btn-round btn-rose btn-file">
                                            <asp:TextBox runat="server" ID="filebuku" type="file" name="..."></asp:TextBox>
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
                            <asp:LinkButton ID="tambahbuku" type="submit" runat="server" class="btn btn-primary pull-right">Tambah </asp:LinkButton>
                            <div class="clearfix"></div>

                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-profile">
                        <div class="card-avatar">
                            <a href="javascript:;">
                                <img class="img" src="Template/TAdmin/assets/img/faces/marc.jpg" />
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
