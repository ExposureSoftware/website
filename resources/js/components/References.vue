<template>
    <div>
        <testimonials></testimonials>
        <partners></partners>
    </div>
</template>

<script>
    import Testimonials from "./Testimonials";
    import Partners from "./Partners";

    export default {
        name: "References",
        components: {
            'testimonials': Testimonials,
            'partners': Partners
        }
    }
</script>

<style scoped>

</style>
