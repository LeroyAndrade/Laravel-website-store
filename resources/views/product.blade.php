<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords" content="123 Lens, 123, lens, bril, brillen, lens, lenzen, zien, opticien, hans anders, pearl, sterkte">
        <meta name="author" content="Leroy Andrade">
        <title>123 Lens opdracht</title>

        @vite(['resources/css/app.css', 'resources/js/app.js'])

    </head>


    <body>


{{--<img src="{{ Vite::asset('resources/images/colaVanille-small.jpg') }}">--}}

<section class="allProductItems">
    <?php
        foreach($companies as $keyCompany => $val) : ?>
        <div class="item">
            <div class="titelContainer">
                <h2>  <?php echo $companies[$keyCompany]->{'title'}  . '<br/>'; ?></h2><br>
            </div>

            <div class="containerSmallImage"> <!-- and price -->
                <img class="imageSmall" src="{{ Vite::asset('resources/images/'.$companies[$keyCompany]->{"image"}) }}" alt="<?php echo $companies[$keyCompany]->{'title'} ?> ">

                <?php //prijs terugkrijgen en afbreken op decimalen voor de view effect van de decimalen
                    $comb = $companies[$keyCompany]->{'price'};
                    $folderNaam = explode('.', $comb);
                ?>
                <div class="prijsContainer">
                    <span class="SinglePrijs"><?php echo $folderNaam[0]?>&#46;<span class="doublePrijs"><?php echo $folderNaam[1]?></span> </span>
                </div>


            </div>
            <div class="buttonContainer">

                <a href="productpagina/<?php echo $companies[$keyCompany]->{'id'} ?>" class="cart-button">Naar product pagina.</a>
            </div>
            {{--<img src="resources/images/<?php echo $companies[$keyCompany]->{'image'}?> " alt="<?php echo $companies[$keyCompany]->{'title'} ?> ">--}}
        </div>

    <?php
        endforeach; ?>


</section>

      </body>


</html>
