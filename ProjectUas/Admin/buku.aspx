<%@ Page Title="buku" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="buku.aspx.vb" Inherits="ProjectUas.buku" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Buku
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
                            <div class="d-flex">
                                <div class="col-md-3">
                                    <div class="input-group no-border">
                                        <input type="text" value="" class="form-control" placeholder="Cari Buku...">
                                        <button type="submit" class="btn btn-white btn-round btn-just-icon">
                                            <i class="material-icons">search</i>
                                            <div class="ripple-container"></div>
                                        </button>
                                    </div>
                                </div>
                                <div class="ml-auto col-md-2">
                                    <div class="align-content-end">
                                        
                                            <asp:LinkButton runat="server" class="btn btn-primary btn-round" PostBackUrl="~/Admin/bukutambah.aspx">

                                                <i class="material-icons">add</i> Tambah
                                            </asp:LinkButton>
                                     
                                    </div>
                                </div>
                            </div>

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
                                            <td>
                                                <img src="https://localhost:44308/Template/TAdmin/assets/img/faces/marc.jpg" height="180" width="140" />

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
                                                <button class="btn btn-warning  btn-fab btn-fab-mini btn-round">
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
                                            <td>
                                                <img src="../Template/TAdmin/assets/img/faces/avatar.jpg" height="180" width="140" />
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
                                                <button class="btn btn-warning  btn-fab btn-fab-mini btn-round">
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
