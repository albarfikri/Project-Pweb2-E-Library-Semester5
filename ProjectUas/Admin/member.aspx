<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="member.aspx.vb" Inherits="ProjectUas.Petugas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Anggota
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header card-header-primary">
                            <h4 class="card-title ">Tabel Member</h4>
                            <p class="card-category">Kelola Member secara lebih detil disini</p>
                        </div>
                        <div class="card-body">
                            <div class="d-flex">
                                <div class="col-md-3">
                                    <div class="input-group no-border">
                                        <input type="text" value="" class="form-control" placeholder="Cari Member...">
                                        <button type="submit" class="btn btn-white btn-round btn-just-icon">
                                            <i class="material-icons">search</i>
                                            <div class="ripple-container"></div>
                                        </button>
                                    </div>
                                </div>
                                <div class="ml-auto col-md-2">
                                    <div class="align-content-end">
                                        <button class="btn btn-primary btn-round">
                                            <i class="material-icons">add</i> Tambah
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead class=" text-primary">
                                        <th>No
                                        </th>
                                        <th>Nama Petugas
                                        </th>
                                        <th>Gambar
                                        </th>
                                        <th>Alamat
                                        </th>
                                        <th>No. Hp
                                        </th>
                                        <th>Action
                                        </th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1
                                            </td>
                                            <td>M.Albar Fikri
                                            </td>
                                            <td>
                                                <img src="../Template/TAdmin/assets/img/faces/card-profile1-square.jpg" height="180" width="140"/>
                                            </td>
                                            <td>Jl. Bunga Asoka
                                            </td>
                                            <td>0813376303562
                                            </td>
                                            <td>
                                                <button class="btn btn-warning btn-fab btn-fab-mini btn-round">
                                                    <i class="material-icons">edit</i>
                                                </button>
                                                <button class="btn btn-danger btn-fab btn-fab-mini btn-round">
                                                    <i class="material-icons">delete</i>
                                                </button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
