<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testpage.aspx.cs" Inherits="DataBaseContivityCheck.testpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="ckeditor/ckeditor.js"></script>
    <script src="scripts/jquery-3.1.1.js"></script>
    <script src="scripts/jquery-3.1.1.intellisense.js"></script>


    <script>

        function show()
        { 
            
              var   result = $('#TextArea1').val();
                $('#hiddenField').val = "sdfs";
                 
         alert(result)
               
           
         
           document.getElementById('<%=hiddenField.ClientID %>').value = result;
           

        }

    </script>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 648px;
        }
        .auto-style2 {
            width: 162px;
        }
        #TextArea1 {
            height: 336px;
            width: 893px;
        }
        .auto-style3 {
            width: 162px;
            }
        .auto-style4 {
            height: 434px;
        }
        .auto-style5 {
            height: 79px;
        }
    </style>
</head>
<body style="width: 1312px; height: 623px;">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" rowspan="3"></td>
                <td class="auto-style5">
                    The is the Article Page</td>
               
            </tr>
            <tr>
                <td class="auto-style4">
                    <textarea id="TextArea1" name="S1" cols="20">Write your Text Here</textarea></td>
                 <script>
                CKEDITOR.replace('TextArea1');
                </script>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Publish" OnClientClick="show()" OnClick="Button1_Click1" />
                    <asp:HiddenField ID="hiddenField" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
