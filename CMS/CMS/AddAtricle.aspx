﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddAtricle.aspx.cs" Inherits="CMS.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
        width: 61%;
            height: 1304px;
        }
    #Text1 {
        height: 94px;
        width: 270px;
    }
    #TextArea1 {
        height: 243px;
        width: 1078px;
        margin-top: 0px;
        margin-right: 5px;
    }
        .auto-style8 {
            width: 108%;
        height: 525px;
    }
        .auto-style9 {
        width: 676px;
    }
    .auto-style10 {
        width: 124px;
    }
    .auto-style11 {
        width: 178px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class="auto-style8">
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style9">
                <textarea id="TextArea1" name="S1"></textarea></td>
            <script>
                CKEDITOR.replace('TextArea1');
            </script>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="publishButton" runat="server" Text="Publish" />
            </td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
    </table>
</form>
</asp:Content>
