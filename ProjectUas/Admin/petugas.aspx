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
                            <h4 class="card-title ">Tabel Petugas</h4>
                            <p class="card-category">Kelola Petugas secara lebih detil disini</p>
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
                                        <asp:LinkButton runat="server" class="btn btn-primary btn-round" PostBackUrl="~/Admin/petugastambah.aspx"> <i  class="material-icons">add</i> Tambah </asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                               
                                             
                            <asp:Repeater ID="RepeaterPetugas" runat="server" OnItemCommand="Petugas_Command">
                                <HeaderTemplate>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead class=" text-primary">
                                                <th>No
                                                </th>
                                                <th>Nama
                                                </th>
                                                <th>Gambar
                                                </th>
                                                <th>Nik
                                                </th>
                                                <th>Alamat
                                                </th>
                                                <th>Ttl
                                                </th>
                                                <th>Jenis Kelamin
                                                </th>
                                                <th>Email
                                                </th>
                                                <th>Telp
                                                </th>
                                                <th>Status
                                                </th>
                                                <th>Action
                                                </th>
                                  
                                            </thead>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tbody>

                                        <tr>
                                            
                                            <td>
                                                <%# Container.ItemIndex + 1 %>
                                            </td>
                                            <td>
                                                <%# Eval("nama") %>
                                            </td>
                                            <td>
                                                <img src="../Assets/Img/<%# Eval("gambar") %>" height="180" width="140"  />
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
                                                 <asp:LinkButton runat="server" ID="Modal" class="btn btn-success" data-toggle="modal" data-target="#exampleModal">
                                                <%# Eval("status") %>
                                            </asp:LinkButton>
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="edit" runat="server" CommandArgument='<%# Eval("id") %>' class="btn btn-warning btn-fab btn-fab-mini btn-round" OnClick="Edit_Click">
                                                    <i class="material-icons">edit</i>
                                               </asp:LinkButton>
                                                 <asp:LinkButton ID="delete" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="delete" onclientclick="return confirm('Are you sure you want to delete?')" class="btn btn-danger btn-fab btn-fab-mini btn-round">
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
    
</asp:Content>
