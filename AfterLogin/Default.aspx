<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="AfterLogin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<style>
    .alert{padding:15px;margin-bottom:20px;border:1px solid transparent;border-radius:4px}.alert h4{margin-top:0;color:inherit}.alert .alert-link{font-weight:700}.alert>p,.alert>ul{margin-bottom:0}.alert>p+p{margin-top:5px}.alert-dismissable,.alert-dismissible{padding-right:35px}.alert-dismissable .close,.alert-dismissible .close{position:relative;top:-2px;right:-21px;color:inherit}.alert-success{color:#3c763d;background-color:#dff0d8;border-color:#d6e9c6}.alert-success hr{border-top-color:#c9e2b3}.alert-success .alert-link{color:#2b542c}.alert-info{color:#31708f;background-color:#d9edf7;border-color:#bce8f1}.alert-info hr{border-top-color:#a6e1ec}.alert-info .alert-link{color:#245269}.alert-warning{color:#8a6d3b;background-color:#fcf8e3;border-color:#faebcc}.alert-warning hr{border-top-color:#f7e1b5}.alert-warning .alert-link{color:#66512c}.alert-danger{color:#a94442;background-color:#f2dede;border-color:#ebccd1}.alert-danger hr{border-top-color:#e4b9c0}.alert-danger .alert-link{color:#843534}
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="login_form">
        <h3 style="text-align:center;">Your Appointments</h3>
        <div class="alert alert-success">
            <strong>Success!</strong> Indicates a successful or positive action.
        </div>

        <div class="alert alert-info">
            <strong>Info!</strong> Indicates a neutral informative change or action.
        </div>

        <div class="alert alert-warning">
            <strong>Warning!</strong> Indicates a warning that might need attention.
        </div>

        <div class="alert alert-danger">
            <strong>Danger!</strong> Indicates a dangerous or potentially negative action.
        </div>
    </div>
    <div class="clearfix margin_top2"></div>
</asp:Content>


