<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="HospitalPannel.aspx.cs" Inherits="Admin_HospitalPannel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
        <div class="col-md-1">
        </div>
        <div class="col-md-10">

            <section class="panel">
                <header class="panel-heading">
                    <div class="panel-actions">
                        <a href="#" class="fa fa-caret-down"></a>
                        <a href="#" class="fa fa-times"></a>
                    </div>

                    <h2 class="panel-title">Units</h2>
                </header>
                <div class="panel-body">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">Units: </label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="unita" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-4 control-label">Blood Group: </label>
                        <div class="col-sm-8">
                            <asp:DropDownList ID="Drpblood" runat="server">
                                <asp:ListItem Text="Blood Group" Value="0" />
                                <asp:ListItem Text="A+" Value="A+" />
                                <asp:ListItem Text="B+" Value="B+" />
                                <asp:ListItem Text="O+" Value="O+" />
                                <asp:ListItem Text="A-" Value="A-" />
                                <asp:ListItem Text="B-" Value="B-" />
                                <asp:ListItem Text="O-" Value="O-" />
                                <asp:ListItem Text="AB+" Value="AB+" />
                                <asp:ListItem Text="AB-" Value="AB-" />
                            </asp:DropDownList>

                        </div>
                    </div>



                </div>
                <footer class="panel-footer">
                    <asp:Button CssClass="btn btn-primary" ID="btnsubmit" Text="Submit" runat="server" OnClick="btnsubmit_Click" />

                    <button type="reset" class="btn btn-default">Reset</button>
                </footer>
            </section>

        </div>
    </div>


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
                                    <a href="/Admin/HospitalPannel.aspx?catids=<%=item.Id %>">
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

