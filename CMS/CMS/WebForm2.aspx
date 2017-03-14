<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="CMS.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #TextArea1 {
            height: 339px;
            width: 1120px;
        }
        
    </style>
    
       <script type="text/javascript">

        function LoadTextBoxData()
        {
            $(document).ready(function () {

                $('#publishButton').click(function () {

                    $('#datalabel').val = $('#TextArea1').val;
                    alert('hello')

                })
            })
        }

    </script>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <textarea id="TextArea1" name="S1"  ></textarea><br />
    <script>
                CKEDITOR.replace('TextArea1');
            </script>
    <br />
     
    <asp:Button ID="publishButton" runat="server" Text="Publish" Width="139px" OnClick="javascript:LoadTextBoxData()" />
    <asp:SqlDataSource ID="mydatbaseSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Id], [AurtherID], [DateCreated], [Article]) VALUES (@Id, @AurtherID, @DateCreated, @Article)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [AurtherID] = @AurtherID, [DateCreated] = @DateCreated, [Article] = @Article WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="AurtherID" Type="String" />
            <asp:Parameter DbType="Date" Name="DateCreated" />
            <asp:Parameter Name="Article" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AurtherID" Type="String" />
            <asp:Parameter DbType="Date" Name="DateCreated" />
            <asp:Parameter Name="Article" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    <asp:Label ID="datalabel" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
</asp:Content>
