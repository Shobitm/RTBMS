<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="AddHospital.aspx.cs" Inherits="Admin_AddHospital" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <header class="page-header">
        <h2>Add Hospital</h2>

        <div class="right-wrapper pull-right">
            <ol class="breadcrumbs">
                <li>
                    <a href="#">
                        <i class="fa fa-copy"></i>
                    </a>
                </li>
                <li>
                    <span>
                        <a href="#">Hospital
                        </a>
                    </span>
                </li>
            </ol>
            <a class="sidebar-right-toggle"><i class="fa fa-chevron-left"></i></a>
        </div>

    </header>

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

                    <h2 class="panel-title">Add Hospital</h2>
                </header>
                <div class="panel-body">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">Hospital Name</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txthosname" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-4 control-label">Hospital Zip Code </label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtzipcode" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 control-label">City </label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtcity" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-4 control-label">Contact No.</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtcontact" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-4 control-label">E-mail</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtemail" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />
                        </div>
                    </div>


                    <div class="form-group">
           <%--             <label class="col-sm-4 control-label">Status: </label>
                        <div class="col-sm-8">
                            <asp:CheckBox Text="" ClientIDMode="Static" ID="chkstatus" runat="server" />--%>
                        </div>

                    </div>

                    <hr />
                    <div class="form-group">
                        <label class="col-sm-4 control-label">User Name: </label>
                       <div class="col-sm-4">
                            <asp:TextBox ID="txtuser" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />
                        </div>

                    </div>


                             <div class="form-group">
                        <label class="col-sm-4 control-label">password: </label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="txtpass" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />
                        </div>

                    </div>

                             <div class="form-group">
                        <label class="col-sm-4 control-label">Re-Type Password: </label>
                     <div class="col-sm-4">
                            <asp:TextBox ID="txtrepass" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />
                        </div>

                    </div>

                </div>
                <footer class="panel-footer">
                    <asp:Button CssClass="btn btn-primary" ID="btnsubmit" Text="Submit" runat="server" OnClick="btnsubmit_Click" />

                    <button type="reset" class="btn btn-default">Reset</button>
                </footer>
            </section>

        </div>
</asp:Content>

