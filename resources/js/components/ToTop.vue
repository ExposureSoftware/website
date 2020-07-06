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
        }
    }
</script>

<style scoped>

</style>
