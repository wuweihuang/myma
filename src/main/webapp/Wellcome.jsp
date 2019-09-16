<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/27
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%String path=request.getContextPath()+"/"; %>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <title>Berghoef – Contemporary HTML5 One-Page Restaurant Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="author" content="weibergmedia">
    <meta name="Description" content="Contemporary HTML5 One-Page Parallax Restaurant Template">
    <link href="<%=path%>css/reset.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="http://cdn.bootstrapmb.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    <link href="<%=path%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=path%>css/contact.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="<%=path%>css/styles.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="<%=path%>css/jquery.fancybox.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="<%=path%>css/responsive.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="<%=path%>css/flexslider.css" rel="stylesheet" type="text/css" media="screen">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,600,700,400italic" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Vollkorn:400,600" rel="stylesheet" />
    <script src="<%=path%>js/modernizr.js" type="text/javascript"></script>
</head>
<body>
<!-- start preloader -->
<div id="preloader">
    <div id="status">
        <div class="parent">
            <div class="child">
                <p>loading</p>
            </div>
        </div>
    </div>
</div>
<!-- end preloader -->

<!-- start header -->
<header id="header" class="clearfix"><span class="watercolor watercolor69"></span>
    <h1 id="logo"><a href="index.html">导航</a></h1>
    <div id="menu-button">
        <div class="centralizer">
            <div class="cursor">
                <div id="nav-button"> <span class="nav-bar"></span> <span class="nav-bar"></span> <span class="nav-bar"></span> </div>
            </div>
        </div>
    </div>
    <!-- start main nav -->
    <nav id="main-nav">
        <ul class="clearfix">
            <li> <a href="#section2" class="scroller">关于</a></li>
            <li> <a href="#section3" class="scroller">菜单</a> </li>
            <li> <a href="https://www.opentable.com/ponti-seafood-grill" target="_blank">Reservations</a></li>
            <li> <a href="#section5" class="scroller">文档中心</a></li>
            <li> <a href="#section6" class="scroller">个人信息</a></li>
            <li> <a href="#section7" class="scroller">联系</a></li>
        </ul>
    </nav>
    <!-- end main nav -->

</header>
<!-- end header -->

<!-- start content -->
<div id="content">
    <div class="full-width intro">
        <div class="full-height">
            <div class="fixed">
                <figure class="background-image1 parallax"></figure>
            </div>
            <div class="full-height-wrapper white-text">
                <div class="parent">
                    <div class="child">
                        <section>
                            <div class="container">
                                <div class="animatedblock delay2 animatedUp">
                                    <div class="col-lg-8 col-lg-offset-3 col-md-8 col-md-offset-2 extra-padding-top">
                                        <div class="banner-textblock">
                                            <h1 class="header">欢迎来到文档中心</h1>
                                            <a href="#section2" class="scroller button">Discover</a> </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
                <div class="overlay"></div>
                <div id="bonappetit" class="custom-caption"></div>
            </div>
        </div>
    </div>
    <div id="social-header" class="centered">
        <ul class="social-list clearfix">
            <li> <a href="#"><i class="fa fa-instagram"></i></a> </li>
            <li> <a href="#"><i class="fa fa-facebook-f"></i></a> </li>
            <li> <a href="#"><i class="fa fa-tripadvisor"></i></a> </li>
        </ul>
    </div>
    <section class="first">
        <div class="container clearfix">
            <div id="section2" class="ancor"></div>
            <div class="col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="col-md-6 col-sm-6 extra-padding-right extra-padding-top">
                        <h2>Tasty <span class="watercolor watercolor28">American</span> meals prepared in a historic place.</h2>
                        <p>This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely disappointed. </p>
                        <p>These words are here to provide the reader with a basic impression of how actual text will appear in its final presentation.</p>
                        <a href="https://www.google.de/maps/place/New+York+City,+New+York,+USA/data=!4m2!3m1!1s0x89c24fa5d33f083b:0xc80b8f06e177fe62?sa=X&ved=0ahUKEwj13NGu7erZAhUN66QKHfmECXsQ8gEIzQEwDg" title="" class="button" target="_blank"><i class="fa fa-map-signs"></i> Get directions</a> </div>
                    <div class="clearfix col-md-6 col-sm-6 containing-image-wrapper">
                        <div class="full-height-wrapper">
                            <figure class="images background-image2"></figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container clearfix">
            <div class="col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
                <div class="row">
                    a<p/>
                    a<p/>
                    a<p/>
                    a<p/>
                    a<p/>
                    a<p/>
                    a<p/>
                </div>
            </div>
        </div>
    </section>
    <section class="grey"><span class="watercolor watercolor63"></span>
        <div class="container clearfix">
            <div class="col-md-10 col-md-offset-1">
                <div class="row">
                    <div class="col-md-6 centered">
                        <div class="tripadvisor"></div>
                    </div>
                    <div class="col-md-6 extra-padding-top centered-xs">
                        <h5><span class="padding"><i class="fa fa-star"></i></span> <span class="padding"><i class="fa fa-star"></i></span> <span class="padding"><i class="fa fa-star"></i></span> <span class="padding"><i class="fa fa-star"></i></span> <span class="padding"><i class="fa fa-star-half-full"></i></span></h5>
                        <p>178 reviews averaging 4.5 Stars<br />
                            #3 of 745 restaurants in Brooklyn, N.Y.</p>
                        <a href="https://tripadvisor.com" title="" class="button" target="_blank"><i class="fa fa-tripadvisor"></i> All Reviews</a> </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container clearfix">
            <div id="section3" class="ancor"></div>
            <div class="col-md-10 col-md-offset-1">
                <div class="centered">
                    <h2>Are you ready to be <span class="watercolor watercolor44">amazed</span>? </h2>
                </div>
                <div class="images"> <img src="images/food-13.jpg" alt="" /></div>
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#first" id="first-tab" role="tab" data-toggle="tab" aria-controls="first" aria-expanded="true">Entreés</a></li>
                    <li role="presentation"><a href="#second" role="tab" id="second-tab" data-toggle="tab" aria-controls="second">Mains</a></li>
                    <li role="presentation"><a href="#third" role="tab" id="third-tab" data-toggle="tab" aria-controls="second">Deserts</a></li>
                </ul>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="first" aria-labelledBy="first-tab">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Grilled Vegetables<i class="fa fa-leaf"></i></h4>
                                    <p>Tomato sauce and lemons - simple.<br />
                                        $14 </p>
                                    <span class="bg"><i>190kcal</i></span> </div>
                                <div class="menu-item-wrapper clearfix">
                                    <h4> Croque Madame</h4>
                                    <p>Fried Vital Farm’s eggs, gruyere, Prosciutto Cotto &amp; mornay.
                                        Served with a side salad.<br />
                                        $19 </p>
                                    <span class="bg"><i>230kcal</i></span> </div>
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Soufflé Pancakes</h4>
                                    <p>Seasonal fruit, rum caramel topped off with whipped cream and candied walnuts.<br />
                                        $21 </p>
                                    <span class="bg"><i>280kcal</i></span> </div>
                            </div>
                            <div class="col-md-6">
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Best of Breakfast</h4>
                                    <p>Heritage Farm’s eggs, mashed potatoes and pork sausage or house bacon.<br />
                                        $22 </p>
                                    <span class="bg"><i>710kcal</i></span> </div>
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Primavera Salad </h4>
                                    <p>Cherry tomatos, shaved almonds &amp; spicy vinaigrette.<br />
                                        $25 </p>
                                    <span class="bg"><i>440kcal</i></span> </div>
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Salmon Filet on Linguini<i class="fa fa-fire-extinguisher"></i></h4>
                                    <p>With asparagus, beans and spring vegetables. <br />
                                        $30 </p>
                                    <span class="bg"><i>560kcal</i></span> </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="second" aria-labelledBy="second-tab">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Salmon Filet on Linguini </h4>
                                    <p>With asparagus, beans and spring vegetables. <br />
                                        14$ </p>
                                    <span class="bg"><i>230kcal</i></span> </div>
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Spaghetti Carbonara<i class="fa fa-heart"></i></h4>
                                    <p>With black pepper and coddled egg yolk.<br />
                                        14$ </p>
                                    <span class="bg"><i>160kcal</i> </span> </div>
                            </div>
                            <div class="col-md-6">
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Birkshire Veal </h4>
                                    <p>Veal with potato gnocchi and rosemary spices. <br />
                                        26$</p>
                                    <span class="bg"><i>230kcal</i></span> </div>
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Birkshire Pork<i class="fa fa-balance-scale"></i></h4>
                                    <p>Pork chop with rice, herb butter and crispy shallots. <br />
                                        31$ </p>
                                    <span class="bg"><i>330kcal</i></span> </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="third" aria-labelledBy="third-tab">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Blackberry Peach Cobbler</h4>
                                    <p>Served with a dollop of whipped or ice cream. <br />
                                        10$ </p>
                                    <span class="bg"><i>440kcal</i></span> </div>
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Bourbon Strawberry Cake<i class="fa fa-heart"></i></h4>
                                    <p>Butterscotch pudding with a hint of vanilla, strawberries, sweet corn ice cream and almond croquant.<br />
                                        12$ </p>
                                    <span class="bg"><i>760kcal</i> </span> </div>
                            </div>
                            <div class="col-md-6">
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Blueberry Pie</h4>
                                    <p>Light sweetness of ripe blueberries for a refreshing experience.<br />
                                        17$ </p>
                                    <span class="bg"><i>800kcal</i></span> </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bordered clearfix centered"><span class="watercolor watercolor29"></span>
                    <div class="rounded-icon-wrapper">
                        <div class="rounded-icon"><i class="fa fa-leaf"></i></div>
                        <p>Vegatarien</p>
                    </div>
                    <div class="rounded-icon-wrapper">
                        <div class="rounded-icon"><i class="fa fa-balance-scale"></i></div>
                        <p>Low Carbs</p>
                    </div>
                    <div class="rounded-icon-wrapper">
                        <div class="rounded-icon"><i class="fa fa-heart"></i></div>
                        <p>Chef's Favorite</p>
                    </div>
                    <div class="rounded-icon-wrapper">
                        <div class="rounded-icon"><i class="fa fa-fire-extinguisher"></i></div>
                        <p>Very Spicy</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="grey">
        <div class="container clearfix">
            <div class="col-md-10 col-md-offset-1">
                <div class="row">
                    <div class="col-md-6">
                        <h3 class="lone-header">We offer <span class="watercolor watercolor62 version2">catering!</span></h3>
                    </div>
                    <div class="col-md-6"> <a href="#section7" title="" class="button scroller alignright">Request a Quote</a> </div>
                </div>
            </div>
            <div class="col-md-10 col-md-offset-1">
                <div class="row">
                    <div class="col-md-4">
                        <p>1.</p>
                        <h5>You Explore the Menu</h5>
                        <p>Choose from our full range of entreés, main courses, deserts. Mix and match the meal you are looking for.</p>
                    </div>
                    <div class="col-md-4">
                        <p>2.</p>
                        <h5>We Make your Meal</h5>
                        <p>For offices, families, parties, meetings,
                            weddings and more. We only use high-quality ingredients and fresh produce.</p>
                    </div>
                    <div class="col-md-4">
                        <p>3.</p>
                        <h5>We Deliver</h5>
                        <p>Afterwards, we'll hand your meals off to one of our trusted team members to deliver right to your doorstep. Enjoy!</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container clearfix">
            <div id="section4" class="ancor"></div>
            <div class="col-md-10 col-md-offset-1">
                <div class="centered">
                    <h2>Up for <span class="watercolor watercolor72">Happy Hour</span>?</h2>
                </div>
                <div class="images"> <img src="images/food-5.jpg" alt="" /></div>
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#first2" id="first2-tab" role="tab" data-toggle="tab" aria-controls="first" aria-expanded="true">Spirits</a></li>
                    <li role="presentation"><a href="#second2" role="tab" id="second2-tab" data-toggle="tab" aria-controls="second">Wines</a></li>
                    <li role="presentation"><a href="#third2" role="tab" id="third2-tab" data-toggle="tab" aria-controls="second">Hot &amp; Cold</a></li>
                </ul>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="first2" aria-labelledBy="first2-tab">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Old Fashioned</h4>
                                    <p>Ginger infused Old Forester bourbon, muddled grapefruit zest and Angostura bitters. <br />
                                        6$ </p>
                                    <span class="bg"><i>8.5% alc.</i></span> </div>
                                <div class="menu-item-wrapper clearfix">
                                    <h4>1984</h4>
                                    <p>Ford’s Gin, Cointreau, Angostura bitters, Fresh squozen lemon and lime. <br />
                                        6$ </p>
                                    <span class="bg"><i>5.3% alc.</i></span> </div>
                            </div>
                            <div class="col-md-6">
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Nutty Professor </h4>
                                    <p>Bombay gin, Lillet, macadamia nut liquor, lemon juice and a splash of soda.<br />
                                        7$ </p>
                                    <span class="bg"><i>19.5% alc.</i></span> </div>
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Kentucky Mule</h4>
                                    <p>Old Forester, lime juice & ginger beer.<br />
                                        9$ </p>
                                    <span class="bg"><i>7.0% alc.</i></span> </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="second2" aria-labelledBy="second2-tab">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Mosel Rießling</h4>
                                    <p>8$ / glas</p>
                                </div>
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Sauvignon Blanc</h4>
                                    <p>10$ / glas</p>
                                </div>
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Pinot Grigio</h4>
                                    <p>14$ / glas</p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Mosel Rießling</h4>
                                    <p>8$ / glas</p>
                                </div>
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Sauvignon Blanc</h4>
                                    <p>10$ / glas</p>
                                </div>
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Pinot Grigio</h4>
                                    <p>14$ / glas</p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Mosel Rießling</h4>
                                    <p>8$ / glas</p>
                                </div>
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Sauvignon Blanc</h4>
                                    <p>10$ / glas</p>
                                </div>
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Pinot Grigio</h4>
                                    <p>14$ / glas</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="third2" aria-labelledBy="third2-tab">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Orange Juice</h4>
                                    <p>Freshly pressed every day. Not available on Mondays.<br />
                                        7$</p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Fresh Coffee</h4>
                                    <p>Brewed with fairtrade beans.<br />
                                        9$</p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="menu-item-wrapper clearfix">
                                    <h4>Softdrinks</h4>
                                    <p>Coca-Cola, Sprite, Ginger Ale, Fanta, Coke Zero.<br />
                                        3$</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="grey">
        <div class="container clearfix">
            <div class="col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="col-md-4 col-sm-6 extra-padding-right extra-padding-top">
                        <h3 class="above-button">Local Wines</h3>
                        <p>Please consult our Sommelier
                            about wine pairings.</p>
                        <ul class="unordered-list">
                            <li>William Chris Vineyards</li>
                            <li>Duchman Family Winery</li>
                            <li>Fall Creek Estates</li>
                            <li>Pedernales Cellars</li>
                        </ul>
                        <a href="#" title="" class="button"><i class="fa fa-file-pdf-o"></i> Download List</a> </div>
                    <div class="clearfix col-md-8 col-sm-6 containing-image-wrapper">
                        <div class="full-height-wrapper">
                            <figure class="images background-image3"></figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container clearfix">
            <div id="section5" class="ancor"></div>
            <div class="col-md-10 col-md-offset-1">
                <div class="centered">
                    <h2>Chef's <span class="watercolor watercolor25">Notes</span></h2>
                </div>
                <div class="borderline"></div>
                <div class="row">
                    <div class="clearfix col-md-6 col-sm-6"> <a href="post.html" title="">
                        <div class="images teaser image-with-overlay white-text"><img src="images/food-3.jpg" alt="" />
                            <div class="info-box covering-image">
                                <div class="info-box-content">
                                    <div class="parent">
                                        <div class="top">
                                            <p class="details">October 2<span class="superscript">nd</span>, 2018</p>
                                            <h3 class="header">Renowned Seafood Chef
                                                in Upper New York</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="overlay"></div>
                        </div>
                    </a> </div>
                    <div class="clearfix col-md-6 col-sm-6"> <a href="post.html" title="">
                        <div class="images teaser image-with-overlay white-text"><img src="images/food-2.jpg" alt="" />
                            <div class="info-box covering-image">
                                <div class="info-box-content">
                                    <div class="parent">
                                        <div class="top">
                                            <p class="details">August 18<span class="superscript">th</span>, 2018</p>
                                            <h3 class="header">13 Restaurants that Take Wines Seriously</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="overlay"></div>
                        </div>
                    </a> </div>
                    <div class="clearfix col-md-6 col-sm-6"> <a href="post.html" title="">
                        <div class="images teaser image-with-overlay white-text"><img src="images/food-4.jpg" alt="" />
                            <div class="info-box covering-image">
                                <div class="info-box-content">
                                    <div class="parent">
                                        <div class="top">
                                            <p class="details">May 21<span class="superscript">st</span>, 2018</p>
                                            <h3 class="header">Renowned Pastries Chef in Upper New York</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="overlay"></div>
                        </div>
                    </a> </div>
                    <div class="clearfix col-md-6 col-sm-6"> <a href="post.html" title="">
                        <div class="images teaser image-with-overlay white-text"><img src="images/food-6.jpg" alt="" />
                            <div class="info-box covering-image">
                                <div class="info-box-content">
                                    <div class="parent">
                                        <div class="top">
                                            <p class="details">January 9<span class="superscript">th</span>, 2018</p>
                                            <h3 class="header">Recipe for a Delicious Quickie</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="overlay"></div>
                        </div>
                    </a> </div>
                </div>
                <div class="borderline"></div>
            </div>
            <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <blockquote> No matter if you're just starting to learn coding, you'll be creating extraordinary HTML sites as if you were a seasoned developer.
                    <footer>Jim McCarthy, the Chef</footer>
                </blockquote>
            </div>
        </div>
    </section>
    <section class="turn-grey">
        <div class="container clearfix">
            <div id="section6" class="ancor"></div>
            <div class="col-md-10 col-md-offset-1">
                <div class="centered">
                    <h2><span class="watercolor watercolor9">Impressions</span></h2>
                </div>
            </div>
        </div>
        <div class="container clearfix">
            <div class="col-md-10 col-md-offset-1">
                <div class="flexslider slideshow">
                    <ul class="slides">
                        <li> <img src="images/food-9.jpg" alt="" /> </li>
                        <li> <img src="images/food-9.jpg" alt="" /> </li>
                        <li> <img src="images/food-9.jpg" alt="" /> </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container clearfix">
            <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 centered">
                <h3>Follow us on Instagram for more!</h3>
                <p><i class="fa fa-instagram"></i> 10,5k Followers @<a href="https://instagram.com/" title="" target="_blank">berghoef</a></p>
            </div>
        </div>
    </section>
    <section>
        <div class="container clearfix">
            <div id="section7" class="ancor"></div>
            <div class="col-md-10 col-md-offset-1">
                <div class="centered">
                    <h2><span class="watercolor watercolor62">Contact</span> Us</h2>
                </div>
            </div>
        </div>
        <div class="container clearfix">
            <div class="col-md-10 col-md-offset-1 centered">
                <form class="form-part" method="post" action="contact.php" name="contactform" id="contactform" autocomplete="off">
                    <div class="row">
                        <div class="col-md-6">
                            <input name="name" type="text" id="name" size="30" title="Name" />
                            <input name="email" type="text" id="email" size="30" title="Email" />
                            <input name="phone" type="text" id="phone" size="30" title="Phone" />
                        </div>
                        <div class="col-md-6">
                            <textarea name="comments" id="comments" title="Your Message"></textarea>
                        </div>
                    </div>
                    <div class="input-wrapper clearfix"> <span id="message"></span>
                        <div class="clear"></div>
                        <input type="submit" class="button" value="Submit" id="submit" name="Submit" />
                    </div>
                </form>
            </div>
        </div>
        <div class="container clearfix">
            <div class="col-md-10 col-md-offset-1 centered">
                <div class="borderline"></div>
                <div class="row">
                    <div class="col-md-6">
                        <h3 class="header">Reservations by Phone</h3>
                        <p><span class="padding"><i class="fa fa-phone"></i></span> (845) 123 4586</p>
                    </div>
                    <div class="col-md-6 extra-padding-top-xs">
                        <h3 class="header extra-padding-top-xs">Need Directions?</h3>
                        <p><span class="padding"><i class="fa fa-map-marker"></i></span> <a href="https://maps.google.com/" title="" target="_blank">Google Maps</a></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- end content -->

<footer id="footer">
    <div class="padding-wrapper upper-part white-text">
        <div class="container clearfix">
            <div class="col-lg-12 centered">
                <h3>berghoef.com</h3>
                <p><strong>Restaurant Berghoef</strong><br />
                    114 Prospect Park West, 6<span class="superscript">th</span> Street<br />
                    Brooklyn, N.Y.</p>
                <a href="https://www.facebook.com/" title="Facebook Fanpage" class="button"><i class="fa fa-social-fb"></i> Facebook</a> </div>
        </div>
    </div>
    <div class="padding-wrapper lower-part">
        <div class="container clearfix">
            <div class="col-lg-12 centered">
                <p>© 2018, Restaurant Berghoef <span class="lighter">&#183;</span> <a href="#">Legal</a> <span class="lighter">&#183;</span> <a href="#">Privacy</a> </p>
                <p>Made with <i class="fa fa-heart"></i> by <a href="http://www.bootstrapmb.com/" data-title="Premium HTML5 Website Templates">weibergmedia</a>.</p>
            </div>
        </div>
    </div>
</footer>
<script src="<%=path%>js/jquery-1.12.4.min.js" type="text/javascript"></script>
<script src="<%=path%>js/jquery-easing-1.3.js" type="text/javascript"></script>
<script src="<%=path%>js/jquery.touchSwipe.min.js" type="text/javascript"></script>
<script src="<%=path%>js/main.js" type="text/javascript"></script>
<script src="<%=path%>js/jquery.form.js" type="text/javascript"></script>
<script src="<%=path%>js/input.fields.js" type="text/javascript"></script>
<script src="<%=path%>js/preloader.js" type="text/javascript"></script>
<script src="http://cdn.bootstrapmb.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=path%>js/jquery.fancybox.pack.js" type="text/javascript"></script>
<script src="<%=path%>js/jquery.flexslider-min.js" type="text/javascript"></script>
<script src="<%=path%>js/jquery.nav.js" type="text/javascript"></script>
<script src="<%=path%>js/slideshow.js" type="text/javascript"></script>
</body>
</html>
