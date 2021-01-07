<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="petugas.aspx.vb" Inherits="ProjectUas.petugas1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Petugas
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
      <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header card-header-primary">
                            <h4 class="card-title ">Tabel Buku</h4>
                            <p class="card-category">Tersedia berbagai jenis buku disini</p>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead class=" text-primary">
                                        <th>No
                                        </th>
                                        <th>Judul Buku
                                        </th>
                                        <th>Gambar
                                        </th>
                                        <th>Jenis
                                        </th>
                                        <th>Stok
                                        </th>
                                        <th>Tahun Terbit
                                        </th>
                                        <th>Nama Pengarang
                                        </th>
                                        <th>Action
                                        </th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1
                                            </td>
                                            <td>Harry Potter
                                            </td>
                                            <td>Mason Porter
                                            </td>
                                            <td>Fiksi
                                            </td>
                                            <td>12
                                            </td>
                                            <td>2007
                                            </td>
                                            <td>Richard Antonio 
                                            </td>
                                            <td>
                                                <button class="btn btn-primary btn-fab btn-fab-mini btn-round">
                                                    <i class="material-icons">edit</i>
                                                </button>
                                                <button class="btn btn-danger btn-fab btn-fab-mini btn-round">
                                                    <i class="material-icons">delete</i>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>1
                                            </td>
                                            <td>Antara ada dan tiada
                                            </td>
                                            <td>Lala
                                            </td>
                                            <td>Novel
                                            </td>
                                            <td>12
                                            </td>
                                            <td>2007
                                            </td>
                                            <td>Terra Larras
                                            </td>
                                                <td>
                                                <button class="btn btn-primary btn-fab btn-fab-mini btn-round">
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
