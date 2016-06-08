<?php

namespace Frontend\Controller;

use Engine\Exception;
use Phalcon\Mvc\Controller;
use Models\Candidate;
use Forms\NewCandidateForm;

class IndexController extends Controller
{
    public function indexAction()
    {
        //empty
        $form = new NewCandidateForm(null, array('edit' => false));
        $this->view->form = $form;
    }

    public function gettingStartedAction()
    {

    }

    public function aboutAction()
    {

    }
}
