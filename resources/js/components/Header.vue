<template>
    <header class="header-area">
        <div class="navbar-area headroom">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg">
                            <a class="navbar-brand" href="index.html">
                                <img src="assets/images/logo.png" alt="Logo">
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                    aria-expanded="false" aria-label="Toggle navigation">
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                                <ul id="nav" class="navbar-nav m-auto">
                                    <li class="nav-item active">
                                        <a href="#home">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#about">About </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#services">Services</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#portfolio">Portfolio</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#blog">Blog</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#contact">Contact</a>
                                    </li>
                                </ul>
                            </div> <!-- navbar collapse -->
                        </nav> <!-- navbar -->
                    </div>
                </div> <!-- row -->
            </div> <!-- container -->
        </div> <!-- navbar area -->
    </header>
</template>

<script>
    import Headroom from 'headroom.js'
    require('../jquery.nav')

    export default {
        name: "Header",
        mounted() {
            const myElement = document.querySelector(".headroom");
            // construct an instance of Headroom, passing the element
            const headroom  = new Headroom(myElement);
            // initialise
            headroom.init();

            $(".navbar-nav a").on('click', function () {
                $(".navbar-collapse").removeClass("show");
            });


            //===== Mobile Menu

            $(".navbar-toggler").on('click', function () {
                $(this).toggleClass("active");
            });

            $(".navbar-nav a").on('click', function () {
                $(".navbar-toggler").removeClass('active');
            });

            var subMenu = $(".sub-menu-bar .navbar-nav .sub-menu");

            if (subMenu.length) {
                subMenu.parent('li').children('a').append(function () {
                    return '<button class="sub-nav-toggler"> <span></span> </button>';
                });

                var subMenuToggler = $(".sub-menu-bar .navbar-nav .sub-nav-toggler");

                subMenuToggler.on('click', function () {
                    $(this).parent().parent().children(".sub-menu").slideToggle();
                    return false
                });

            }

            $('#nav').onePageNav({
                currentClass: 'active',
                changeHash: true,
                scrollSpeed: 800,
                scrollThreshold: 0.5,
                filter: '',
                easing: 'swing',
                begin: function() {
                    //I get fired when the animation is starting
                },
                end: function() {
                    //I get fired when the animation is ending
                },
                scrollChange: function($currentListItem) {
                    //I get fired when you enter a section and I pass the list item of the section
                }
            });
        },
    }
</script>

<style scoped>

</style>
