<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="anasayfa-yonetim.aspx.cs" Inherits="TelefonTeknikServis.yonetim.anasayfa_yonetim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          
            <br />
<table width="893" height="371" border="1" cellpadding="2" cellspacing="2">
  <tr>
    <td height="177" colspan="2"> Y&ouml;netim Paneline Ho&#351;geldiniz<br />

        Anasayfa Düzenle

    </td>
  </tr>
  <tr>
    <td width="144"><p> <a href="anasayfa-yonetim.aspx"> Anasayfa Düzenle</a> </p>
    <p><a href="teknik-ozellikler.aspx"> Teknik &Ouml;zellikler D&uuml;zenle</a></p>
    <p><a href="biz-kimiz.aspx"> Biz Kimiz D&uuml;zenle</a></p>
    <p><a href="aciklamalar.aspx"> A&ccedil;&#305;klamalar D&uuml;zenle</a></p>
    <p><a href="iletisim.aspx"> &#304;leti&#351;im   </a></p></td>
    <td width="642">
	


  <label for="lname">İçeriği Düzenle</label> <br /> <br />
        <asp:Button ID="Button1" runat="server" Text="Düzenle" />
  
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="Görüntülenecek hiç veri kaydı yok." GridLines="None">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="anasayfa" HeaderText="anasayfa" SortExpression="anasayfa" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:telefon_teknik_servisConnectionString1 %>" DeleteCommand="DELETE FROM [sayfalar] WHERE [id] = @id" InsertCommand="INSERT INTO [sayfalar] ([anasayfa]) VALUES (@anasayfa)" ProviderName="<%$ ConnectionStrings:telefon_teknik_servisConnectionString1.ProviderName %>" SelectCommand="SELECT [anasayfa], [id] FROM [sayfalar]" UpdateCommand="UPDATE [sayfalar] SET [anasayfa] = @anasayfa WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="anasayfa" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="anasayfa" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
      
  </tr>
</table>


        </div>
    </form>
</body>
</html>
