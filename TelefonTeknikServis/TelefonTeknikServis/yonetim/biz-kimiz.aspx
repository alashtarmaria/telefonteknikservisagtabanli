<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="biz-kimiz.aspx.cs" Inherits="TelefonTeknikServis.yonetim.biz_kimiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table width="893" height="371" border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td height="177" colspan="2"> Y&ouml;netim Paneline Ho&#351;geldiniz<br />


         Biz Kimiz Düzenle
    </td>
  </tr>
  <tr>
    <td width="144"><p> <a href="anasayfa-yonetim.aspx"> Anasayfa Düzenle</a> </p>
    <p><a href="teknik-ozellikler.aspx"> Teknik &Ouml;zellikler D&uuml;zenle</a></p>
    <p><a href="biz-kimiz.aspx"> Biz Kimiz D&uuml;zenle</a></p>
    <p><a href="aciklamalar.aspx"> A&ccedil;&#305;klamalar D&uuml;zenle</a></p>
    <p><a href="iletisim.aspx"> &#304;leti&#351;im   </a></p></td>
    <td width="642">
	


  <label for="lname">İçeriği Düzenle</label><br>
        &nbsp;<br /> 
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="Görüntülenecek hiç veri kaydı yok.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="biz_kimiz" HeaderText="biz_kimiz" SortExpression="biz_kimiz" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:telefon_teknik_servisConnectionString1 %>" DeleteCommand="DELETE FROM [sayfalar] WHERE [id] = @id" InsertCommand="INSERT INTO [sayfalar] ([biz_kimiz]) VALUES (@biz_kimiz)" ProviderName="<%$ ConnectionStrings:telefon_teknik_servisConnectionString1.ProviderName %>" SelectCommand="SELECT [biz_kimiz], [id] FROM [sayfalar]" UpdateCommand="UPDATE [sayfalar] SET [biz_kimiz] = @biz_kimiz WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="biz_kimiz" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="biz_kimiz" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
  
        <br />
        <br />
        
  </tr>
</table>
        </div>
    </form>
</body>
</html>
