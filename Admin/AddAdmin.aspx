﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="AddAdmin.aspx.cs" Inherits="Admin_AddAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <header class="page-header">
    <h2>Add Admin</h2>

    <div class="right-wrapper pull-right">
        <ol class="breadcrumbs">
            <li>
                <a href="#">
                    <i class="fa fa-copy"></i>
                </a>
            </li>
            <li>
                <span>
                    <a href="../Country/index">
                        ADMIN
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

                    <h2 class="panel-title">Add Admin</h2>
                </header>
                <div class="panel-body">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">ADMIN USERNAME: </label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtadminname" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />  
                        </div>
                    </div>

          
                              <div class="form-group">
                        <label class="col-sm-4 control-label">ADMIN PASSWORD: </label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="password" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />  
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 control-label">RE-TYPE PASSWORD: </label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="TextBox2" ClientIDMode="Static" required="true" CssClass="form-control" runat="server" />  
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
                    <asp:Button CssClass="btn btn-primary" id="btnsubmit" Text="Submit" runat="server" OnClick="btnsubmit_Click" />
                    
                    <button type="reset" class="btn btn-default">Reset</button>
                </footer>
            </section>

        </div>
    </div>

</asp:Content>

