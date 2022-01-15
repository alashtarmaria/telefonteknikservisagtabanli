<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="TelefonTeknikServis.iletisim" %>

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
                            İletişim Yazısı</p>
                        <p class="v-smash-text-large-2x">
                            &nbsp;</p>
                      
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="Görüntülenecek hiç veri kaydı yok." Width="1042px">
                            <Columns>
                                <asp:BoundField DataField="iletisim" HeaderText="iletisim" SortExpression="iletisim" />
                               
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:telefon_teknik_servisConnectionString1 %>" DeleteCommand="DELETE FROM [sayfalar] WHERE [id] = @id" InsertCommand="INSERT INTO [sayfalar] ([iletisim]) VALUES (@iletisim)" ProviderName="<%$ ConnectionStrings:telefon_teknik_servisConnectionString1.ProviderName %>" SelectCommand="SELECT [iletisim], [id] FROM [sayfalar]" UpdateCommand="UPDATE [sayfalar] SET [iletisim] = @iletisim WHERE [id] = @id">
                            <DeleteParameters>
                               
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="iletisim" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="iletisim" Type="String" />
                               
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div class="v-spacer col-sm-12 v-height-standard"></div>
                </div>

             
            </div>
           
        </div>

        
    </div>

    <!--// BACK TO TOP //-->
  

    <!-- Libs -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.flexslider-min.js"></script>
    <script src="js/jquery.easing.js"></script>
    <script src="js/jquery.fitvids.js"></script>
    <script src="js/jquery.carouFredSel.min.js"></script>
    <script src="js/theme-plugins.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/imagesloaded.js"></script>

    <script src="js/view.min.js?auto"></script>

    <script src="plugins/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
    <script src="plugins/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

    <script src="js/theme-core.js"></script>
    </form>
</body>
</html>
