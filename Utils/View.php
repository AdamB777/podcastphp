<?php

class View{
public function render(string $page, array $params){
    
        require_once("./templates/pages/$page.php");
       
    // if($page==='show'){
    //     include_once('./templates/pages/authors.php');
    // }
}
}