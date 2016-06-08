<?php

namespace Frontend\Controller;

use Engine\Exception;
use Phalcon\Mvc\Controller;
use Models\Candidate;
use Forms\NewCandidateForm;
use Phalcon\Paginator\Adapter\Model as Paginator;


class CandidatesController extends Controller
{
    public function indexAction()
    {

        $newCandidate = new Candidate();
        $data = $this->request->getPost();

        $form = new NewCandidateForm();

        if (!$form->isValid($data, $newCandidate)) {
            foreach ($form->getMessages() as $message) {
                echo (
                    "<div class=\"alert alert-warning\">
                      <strong>Увага!</strong> " . $message->getMessage() . "
                    </div>" .
                "<br>");
            }

            $this->view->status = false;

        } else {
            $success = $newCandidate->save($data);

            if ($success) {
                $this->flash->success("Кандидат створений!");

            } else {
                foreach ($newCandidate->getMessages() as $message)
                    echo ($message->getMessage());
            }

            $this->view->status = true;

            return true;
        }

    }


    public function listAction()
    {
        $candidates = Candidate::find();
        $numberPage = (!empty($this->request->get('page'))) ? $this->request->get('page') : 1;

        $this->view->candidates = $candidates;

        if ($candidates) {
            $paginator = new Paginator(array(
                'data' => $candidates,
                'limit'=> 5,
                'page' => $numberPage
            ));
            $this->view->page = $paginator->getPaginate();
        }
    }


    public function viewAction($id)
    {
        if (!empty($id)) {
            $candidate = Candidate::findFirst($id);
            $this->view->candidate = $candidate;
        }


    }


    public function gettingStartedAction()
    {

    }
}
