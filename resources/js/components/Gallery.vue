<template>
    <section id="portfolio" class="project-masonry-area pt-115">
        <div class="container">
            <div class="row align-items-end">
                <div class="col-lg-4">
                    <div class="section-title pb-20  wow fadeIn" data-wow-duration="1s" data-wow-delay="0.4s">
                        <h6 class="sub-title">Portfolio</h6>
                        <h4 class="title">Portfolio <span>Gallery.</span></h4>
                    </div> <!-- section title -->
                </div>
                <div class="col-lg-8">
                    <div class="project-menu text-center text-sm-left text-lg-right pb-20">
                        <ul>
                            <li class="active" data-filter="*">See All</li>
                            <li data-filter=".apps">Apps</li>
                            <li data-filter=".branding">Branding</li>
                            <li data-filter=".creative">Creative</li>
                            <li data-filter=".laptop">Laptop</li>
                            <li data-filter=".product">Product</li>
                        </ul>
                    </div> <!-- project menu -->
                </div>
            </div> <!-- row -->
            <div class="row grid">
                <div class="col-lg-4 col-sm-6 grid-item apps creative laptop">
                    <div class="single-gallery gallery-masonry mt-30">
                        <div class="gallery-image">
                            <img src="assets/images/protfolio-1.jpg" alt="protfolio">
                        </div>
                        <div class="gallery-icon">
                            <a class="image-popup" href="assets/images/protfolio-1.jpg">
                                <span></span>
                            </a>
                        </div>
                    </div> <!-- single gallery -->
                </div>
                <div class="col-lg-4 col-sm-6 grid-item branding creative">
                    <div class="single-gallery gallery-masonry mt-30">
                        <div class="gallery-image">
                            <img src="assets/images/protfolio-2.jpg" alt="protfolio">
                        </div>
                        <div class="gallery-icon">
                            <a class="image-popup" href="assets/images/protfolio-2.jpg">
                                <span></span>
                            </a>
                        </div>
                    </div> <!-- single gallery -->
                </div>
                <div class="col-lg-4 col-sm-6 grid-item apps branding product">
                    <div class="single-gallery gallery-masonry mt-30">
                        <div class="gallery-image">
                            <img src="assets/images/protfolio-3.jpg" alt="protfolio">
                        </div>
                        <div class="gallery-icon">
                            <a class="image-popup" href="assets/images/protfolio-3.jpg">
                                <span></span>
                            </a>
                        </div>
                    </div> <!-- single gallery -->
                </div>
                <div class="col-lg-4 col-sm-6 grid-item laptop product">
                    <div class="single-gallery gallery-masonry mt-30">
                        <div class="gallery-image">
                            <img src="assets/images/protfolio-5.jpg" alt="protfolio">
                        </div>
                        <div class="gallery-icon">
                            <a class="image-popup" href="assets/images/protfolio-5.jpg">
                                <span></span>
                            </a>
                        </div>
                    </div> <!-- single gallery -->
                </div>
                <div class="col-lg-4 col-sm-6 grid-item branding creative">
                    <div class="single-gallery gallery-masonry mt-30">
                        <div class="gallery-image">
                            <img src="assets/images/protfolio-4.jpg" alt="protfolio">
                        </div>
                        <div class="gallery-icon">
                            <a class="image-popup" href="assets/images/protfolio-4.jpg">
                                <span></span>
                            </a>
                        </div>
                    </div> <!-- single gallery -->
                </div>
                <div class="col-lg-4 col-sm-6 grid-item apps laptop product">
                    <div class="single-gallery gallery-masonry mt-30">
                        <div class="gallery-image">
                            <img src="assets/images/protfolio-6.jpg" alt="protfolio">
                        </div>
                        <div class="gallery-icon">
                            <a class="image-popup" href="assets/images/protfolio-6.jpg">
                                <span></span>
                            </a>
                        </div>
                    </div> <!-- single gallery -->
                </div>
            </div> <!-- row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="gallery-btn mt-60 text-center">
                        <a class="main-btn" href="#">Load More</a>
                    </div>
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </section>
</template>

<script>
    require('../magnific.min');
    require('isotope-layout/dist/isotope.pkgd.min')

    export default {
        name: "Gallery",
        mounted() {
            const imagesLoaded = require('imagesloaded');

            imagesLoaded('.container', function () {
                let $grid = $('.grid').isotope({
                    // options
                    transitionDuration: '1s',
                    itemSelector: '.grid-item',
                    percentPosition: true,
                    masonry: {},

                });

                // filter items on button click
                $('.project-menu ul').on('click', 'li', function () {
                    var filterValue = $(this).attr('data-filter');
                    $grid.isotope({filter: filterValue});
                });

                //for menu active class
                $('.project-menu ul li').on('click', function (event) {
                    $(this).siblings('.active').removeClass('active');
                    $(this).addClass('active');
                    event.preventDefault();
                });
            });

            $('.image-popup').magnificPopup({
                type: 'image',
                gallery: {
                    enabled: true,
                },
            });
        },
    }
</script>

<style scoped>

</style>
