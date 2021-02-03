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
                              
                            <asp:Repeater ID="RepeaterBuku" runat="server" OnItemCommand="Buku_Command">
                                <HeaderTemplate>

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
                                      <%--  <th>Sinopsis</th>--%>
                                        <th>Action
                                        </th>
                                    </thead>

                                    </HeaderTemplate>
                                <ItemTemplate>


                                    <tbody>
                                        <tr>
                                            <td> <%# Container.ItemIndex + 1 %>
                                            </td>
                                            <td><%# Eval("judul_buku") %>
                                            </td>
                                            <td>
                                                <img src="../Assets/Img/<%# Eval("gambar") %>" height="180" width="140"  />
                                            </td>
                                            <td><%# Eval("kategori") %>
                                            </td>
                                            <td><%# Eval("stok") %>
                                            </td>
                                            <td><%# Eval("tgl") %>
                                            </td>
                                            <td><%# Eval("nama_pengarang") %>
                                            </td
                                             <td>
                                            </td>
                                         <%--   <td>
                                            </td>--%>
                                            <td>
                                                 <asp:LinkButton ID="open" runat="server" CommandArgument='<%# Eval("filebuku") %>' OnClick="open_Click" class="btn btn-success btn-fab btn-fab-mini btn-round">
                                                    <i class="material-icons">search</i>
                                                </asp:LinkButton>
                                                <asp:LinkButton ID="edit" runat="server" CommandArgument='<%# Eval("id_buku") %>' OnClick="Edit_Click" class="btn btn-warning  btn-fab btn-fab-mini btn-round">
                                                    <i class="material-icons">edit</i>
                                                </asp:LinkButton>
                                                <asp:LinkButton ID="delete" runat="server" CommandArgument='<%# Eval("id_buku") %>' onclientclick="return confirm('Are you sure you want to delete?')" CommandName="delete"  class="btn btn-danger btn-fab btn-fab-mini btn-round">
                                                    <i class="material-icons">delete</i>
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
        </div>
    </div>

</asp:Content>
