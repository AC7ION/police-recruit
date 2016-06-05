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
        $this->view->form = new NewCandidateForm(null, array('edit' => false));
    }

    public function gettingStartedAction()
    {

    }

    public function aboutAction()
    {

    }
}
