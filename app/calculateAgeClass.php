<?php

namespace app;

class calculateAgeClass

{
//    property
    public $age;

//    methods
    public function provide_birth_year($yearOfBirth)
    {
        $this->age = 2022 - $yearOfBirth;
    }
    public function get_age()
    {
        return $this->age;
    }


}

// bind the class to the service container

app()->bind('ageCalulator', calculateAgeClass::class);



// getting the service back from the container

$myclass = app()->resolve('ageCalulator');


$myclass->provide_birth_year(30);
echo $myclass->get_age();
