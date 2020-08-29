<?php
/**
 * Created by PhpStorm.
 * User: oduru
 * Date: 9/9/2019
 * Time: 6:23 PM
 */

class Pages extends Controller
{
   public function index(){
       $this->view('pages/index', ['test'=> 'Getting Started']);
   }
}