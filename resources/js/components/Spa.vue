<template>
    <div>
        <preloader v-if="showLoader"></preloader>
        <navigation-header></navigation-header>
        <intro></intro>
        <about></about>
        <services></services>
        <gallery></gallery>
        <pricing></pricing>
        <references></references>
        <blog></blog>
        <contact></contact>
        <footer-info></footer-info>
        <to-top></to-top>
    </div>
</template>

<script>
    import Preloader from "./Preloader";
    import Header from "./Header";
    import Intro from "./Intro";
    import About from "./About";
    import Services from "./Services";
    import Gallery from "./Gallery";
    import Pricing from "./Pricing";
    import References from "./References";
    import Blog from "./Blog";
    import Contact from "./Contact";
    import Footer from "./Footer";
    import ToTop from "./ToTop";

    export default {
        name: "Spa",
        data() {
            return {
                showLoader: true
            }
        },
        mounted() {
            setTimeout(() => {
                this.showLoader = false;
            }, 750)
        },
        components: {
            'preloader': Preloader,
            'navigation-header': Header,
            'intro': Intro,
            'about': About,
            'services': Services,
            'gallery': Gallery,
            'pricing': Pricing,
            'references': References,
            'blog': Blog,
            'contact': Contact,
            'footer-info': Footer,
            'to-top': ToTop
        }
    }
</script>

<style scoped>

</style>
