<template>
    <a href="#" class="back-to-top" @click="scroll"><i class="lni-chevron-up"></i></a>
</template>

<script>
    export default {
        name: "ToTop",
        methods: {
            scroll(event) {
                event.preventDefault();

                $('html, body').animate({
                    scrollTop: 0,
                }, 1500);
            }
        },
        mounted() {
            $(window).on('scroll', function() {
                if($(this).scrollTop() > 600){
                    $('.back-to-top').fadeIn(200)
                } else{
                    $('.back-to-top').fadeOut(200)
                }
            });
        }
    }
</script>

<style scoped>

</style>
