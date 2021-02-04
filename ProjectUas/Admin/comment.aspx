<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="comment.aspx.vb" Inherits="ProjectUas.comment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

     <div class="content">
        <div class="container-fluid">
           
            <div class="row">
               
                
                            <asp:Repeater ID="RepeaterKomen" runat="server" OnItemCommand="Komen">
                               <ItemTemplate>

                <div class="col-md-4">
                    <div class="card card-chart">
                        <div class="card-header card-header-warning">
                            <div class="ct-chart" id="websiteViewsChart"></div>
                        </div>
                        <div class="card-body">
                            <h4 class="card-title"> <%# Eval("nama") %></h4><small><%# Eval("email") %> </small>
                            <p class="card-category">"<%# Eval("komen") %>"</p>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">access_time</i> sent - <%# Eval("tgl") %> 
                            </div>
                              <asp:LinkButton ID="delete" runat="server" CommandArgument='<%# Eval("id_komen") %>' onclientclick="return confirm('Are you sure you want to delete?')" CommandName="delete"  class="btn btn-danger btn-fab btn-fab-mini btn-round">
                                                    <i class="material-icons">delete</i>
                                                </asp:LinkButton>
                        </div>
                    </div>
                </div>


              </ItemTemplate>
   </asp:Repeater>

            </div>
           
        </div>
    </div>


</asp:Content>
