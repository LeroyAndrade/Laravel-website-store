<?php $conf = new globalConfigs(); ?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="todo">
    <meta name="author" content="Leroy Andrade">
    <title>De titel..</title>

    @vite(['resources/css/productPaginaShow.css', 'resources/js/app.js'])

</head>


    <body>
        Pagina bereikt
        {{$productId}}

        <section class="productPaginaContainer">

            <article class="productShow">
                <?php
                    foreach ($productMetId as $productKey=>$val) : ?>
                        <img class="imageBig" src="{{ Vite::asset($conf->uploadImg.$val->imageBig) }}" alt="<?php echo $val->{'title'} ?> ">
                        <?php
                //            echo $val->title;
                        echo $val->description;
                        dd($val);
                    endforeach; ?>
            </article>

        </section>
    </body>
</html>
