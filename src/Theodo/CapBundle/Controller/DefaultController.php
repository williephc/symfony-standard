<?php

namespace Theodo\CapBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction($name)
    {
        theodo(); //erreur pour verifier new Relic
        return $this->render('CapBundle:Default:index.html.twig', array('name' => $name));
    }
}
