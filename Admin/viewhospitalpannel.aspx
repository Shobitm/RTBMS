<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="viewhospitalpannel.aspx.cs" Inherits="Admin_viewhospitalpannel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <header class="page-header">
        <h2>ADMIN</h2>
        <div class="right-wrapper pull-right">
            <ol class="breadcrumbs">
                <li>
                    <a href="index.html">
                        <i class="fa fa-home"></i>
                    </a>
                </li>
                <li><span>Pages</span></li>
                <li><span>Hospital Pannel</span></li>
            </ol>

            <a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
        </div>
    </header>

    0

    <%
        if (Request.QueryString["msg"] != null)
        {
            string msg = Request.QueryString["msg"];

            if (msg == "Svd")
            {
    %>

    <div class="alert alert-success">
        Data is added succesfully
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
    </div>

    <%}
            else if (msg == "upd")
            {
    %>
    <div class="alert alert-success">
        Data is Updated succesfully
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
    </div>
    <%}
            else if (msg == "Dlt")
            {
    %>
    <div class="alert alert-success">
        Data is Deleted succesfully
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
    </div>
    <%} %>


    <%} %>

  

    <div class="row">
        <div class="col-md-12">

            <section class="panel">
                <header class="panel-heading">
                    <div class="panel-actions">
                        <a href="#" class="fa fa-caret-down"></a>
                        <a href="#" class="fa fa-times"></a>
                    </div>


                </header>
                <div class="panel-body">
                    <table class="table table-bordered table-striped mb-none" id="datatable-default">
                        <thead>
                            <tr>
                                <th>Blood Group</th>
                                <th>Units</th>

                                <th class="hidden-phone">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                BloodBankEntities db = new BloodBankEntities();

                                List<Tb_pannel> lst = db.Tb_pannel.ToList();

                                foreach (var item in lst)
                                {    %>


                            <tr>
                                <td><%=item.BloodGroup %></td>
                                <td><%=item.types %></td>


                                <td class="center hidden-phone">
                                    <a href="/Admin/addhospitalpannel.aspx?catid=<%=item.Id %>">
                                        <i class="fa fa-pencil"></i>
                                    </a>

                                </td>
                            </tr>
                            <%} %>
                        </tbody>
                    </table>
                </div>
            </section>
        </div>
    </div>
</asp:Content>

