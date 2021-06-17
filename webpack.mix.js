const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('resources/js/app.js', 'public/js').vue()
    .scripts(
        [
            'resources/js/wow.min.js',
        ],
        'public/js/prereqs.js',
    ).less('resources/less/app.less', 'public/css/app.css')
    .sass('resources/scss/style.scss', 'public/css/style.css')
    .styles([
        'resources/css/slick.css',
        'resources/css/font-awesome.css',
        'resources/css/LineIcons.css',
        'resources/css/animate.css',
        'resources/css/magnific-popup.css',
        'resources/css/bootstrap.min.css',
        'resources/css/default.css',
        'public/css/style.css',
        'public/css/app.css',
    ], 'public/css/all.css');
