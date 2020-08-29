<?php
/**
 * Created by PhpStorm.
 * User: oduru
 * Date: 6/24/2019
 * Time: 3:35 PM
 */

class Tests extends  Controller
{

     public function key(){

         echo Apikey::randomString();
     }

     public  function fakerproduct(){

         $testdata =  Dummytable::listAll();

         foreach($testdata  as $get){

             $name = $get->name;
             $code = $get->code;
             $quantity = $get->quantity;
             $type = $get->type;
             $userid = 74;
             $catid = 28;
             $vid = 13;
             $unitcost = 0;
             $cid  = 54;

             $pro = new Product();
             $prodata =& $pro->recordObject;
             $prodata->productname = $name;
             $prodata->vid = $vid;
             $prodata->catid = $catid;
             $prodata->quantity = $quantity;
             $prodata->description = '';
             $prodata->costprice = 0;
             $prodata->size = '' ;
             $prodata->productcode = $code;
             $prodata->datesupplied = date('Y-m-d');
             $prodata->threshold = 0;
             $prodata->userid = $userid;
             $prodata->type = $type;
             if($pro->store()){
                 $productid = $pro->recordObject->productid;
                 Product::insertCompanyProducts($cid, $productid);
             }

         }

     }

}