<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teknikozellikler.aspx.cs" Inherits="TelefonTeknikServis.teknikozellikler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <meta charset="utf-8">
    <title>Telefon Teknik Servis</title>
    <meta name="keywords" content="HTML5 Template" />
    <meta name="description" content="Venue - Responsive HTML5 Template">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="shortcut icon" type="image/png" href="img/favicon.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Web Fonts  -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,500,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,700,800,900" rel="stylesheet" type="text/css">

    <!-- Libs CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/v-nav-menu.css" rel="stylesheet" />
    <link href="css/v-animation.css" rel="stylesheet" />
    <link href="css/v-bg-stylish.css" rel="stylesheet" />
    <link href="css/v-shortcodes.css" rel="stylesheet" />
    <link href="css/theme-responsive.css" rel="stylesheet" />
    <link href="plugins/owl-carousel/owl.theme.css" rel="stylesheet" />
    <link href="plugins/owl-carousel/owl.carousel.css" rel="stylesheet" />

    <!-- Current Page CSS -->
    <link href="plugins/rs-plugin/css/settings.css" rel="stylesheet" />
    <link href="plugins/rs-plugin/css/custom-captions.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
</head>
<body class="no-page-top">

    <form id="form1" runat="server">

    <!--Header-->
    <!--Set your own background color to the header-->
    <header class="semi-transparent-header" data-bg-color="rgba(9, 103, 139, 0.36)" data-font-color="#fff">
        <div class="container">

            <!--Site Logo-->
            <div class="logo" data-sticky-logo="img/logo-white.png" data-normal-logo="img/logo.png">
                <a href="index.html">
                    <img alt="Venue" src="img/logo.png" data-logo-height="35">
                </a>
            </div>
            <!--End Site Logo-->

            <div class="navbar-collapse nav-main-collapse collapse">

           
                <!--End Header Search-->

                <!--Main Menu-->
                <nav class="nav-main mega-menu one-page-menu">
                    <ul class="nav nav-pills nav-main" id="mainMenu">
                        <li>
                            <a href="default.aspx"><i class="fa fa-home"></i>Anasayfa</a>
                        </li>
                        <li>
                            <a href="teknikozellikler.aspx"><i class="fa fa-fire"></i>Teknik Özellikler</a>
                        </li>
                        <li>
                            <a  href="bizkimiz.aspx"><i class="fa fa-location-arrow"></i>Biz Kimiz</a>
                        </li>
                        <li>
                            <a  href="aciklamalar.aspx"><i class="fa fa-flash"></i>Açıklamalar</a>
                        </li>

                          <li>
                            <a  href="iletisim.aspx"><i class="fa fa-flash"></i>İletişim</a>
                        </li>
                       
                      
                     
                    </ul>
                </nav>
                <!--End Main Menu-->
            </div>
           
        </div>
    </header>
    <!--End Header-->

    <div id="container">

        <!--Set your own slider options. Look at the v_RevolutionSlider() function in 'theme-core.js' file to see options-->
      

        <div class="v-page-wrap no-bottom-spacing">

            <div class="container">
                <div class="v-spacer col-sm-12 v-height-small"></div>
            </div>

            <!--Features-->
            <div class="container" id="features">

                <div class="row center">
                    <br /> <br /> <br /> <br />

                    <div class="col-sm-12">
                        <p class="v-smash-text-large-2x">
                            Teknik Özellikler Yazısı</p>
                        <p class="v-smash-text-large-2x">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="Görüntülenecek hiç veri kaydı yok." Width="945px">
                                <Columns>
                                    <asp:BoundField DataField="teknik_ozellikler" HeaderText="teknik_ozellikler" SortExpression="teknik_ozellikler" />
                                   
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:telefon_teknik_servisConnectionString1 %>" DeleteCommand="DELETE FROM [sayfalar] WHERE [id] = @id" InsertCommand="INSERT INTO [sayfalar] ([teknik_ozellikler]) VALUES (@teknik_ozellikler)" ProviderName="<%$ ConnectionStrings:telefon_teknik_servisConnectionString1.ProviderName %>" SelectCommand="SELECT [teknik_ozellikler], [id] FROM [sayfalar]" UpdateCommand="UPDATE [sayfalar] SET [teknik_ozellikler] = @teknik_ozellikler WHERE [id] = @id">
                                <DeleteParameters>
                                    
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="teknik_ozellikler" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="teknik_ozellikler" Type="String" />
                                   
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </p>
                      
                     
                    </div>
                    <div class="v-spacer col-sm-12 v-height-standard"></div>
                </div>

             
            </div>
           
        </div>

        
    </div>
    </form>
</body>
</html>
