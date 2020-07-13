<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name') }}</title>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--====== Favicon Icon ======-->
    <link rel="shortcut icon" href="https://exposuresoftware.s3.amazonaws.com/images/logo.svg" type="image/svg">

    <link rel="stylesheet" href="/css/all.css">

    <script src="{{ asset('js/prereqs.js') }}" defer></script>
    <script src="{{ asset('js/app.js') }}" defer></script>
</head>

<body>
<!--[if IE]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<div id="app">
    <spa></spa>
</div>
</body>
</html>
