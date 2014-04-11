<?php

namespace Theodo\CapBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{

    public function indexAction($name)
    {

        $one = 1;
        $two = $one+1;

        return $this->render('CapBundle:Default:index.html.twig', array('name' => $name));
    }
}
