<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="AddEvents.aspx.cs" Inherits="AddEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                        <a href="#">Events
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

                    <h2 class="panel-title">Add Events</h2>
                </header>
                <div class="panel-body">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">Heading</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txthead" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />
                        </div>
                    </div>
                       <div class="form-group">
                        <label class="col-sm-4 control-label">Hospital Name</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txthosname" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-4 control-label">Description </label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtdis" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 control-label">Date Time</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtdate" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-4 control-label">Axis</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtaxis" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-4 control-label">Duration</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtduration" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-4 control-label">Status: </label>
                        <div class="col-sm-8">
                            <asp:CheckBox Text="" ClientIDMode="Static" ID="chkstatus" runat="server" />
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

