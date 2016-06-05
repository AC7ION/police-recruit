<?php

namespace Frontend\Controller;

use Engine\Exception;
use Forms\NewVacancyForm;
use Models\Vacancy;
use Phalcon\Mvc\Controller;
use Models\Candidate;
use Forms\NewCandidateForm;
use Phalcon\Paginator\Adapter\Model as Paginator;


class VacanciesController extends Controller
{
    public function indexAction()
    {


    }


    public function newAction()
    {

        $form = new NewVacancyForm(null, array('edit' => true));

        if ($this->request->isPost()) {

            $data = $this->request->getPost();
            $newVacancy = new Vacancy();
            $this->view->isCreating = false;

            if (!$form->isValid($data, $newVacancy)) {
                foreach ($form->getMessages() as $message) {
                    echo (
                        "<div class=\"alert alert-warning\">
                      <strong>Увага!</strong> " . $message->getMessage() . "
                    </div>" .
                        "<br>");
                }

                $this->view->status = false;

            } else {
                $success = $newVacancy->save($data);

                if ($success) {
                    $this->flash->success("Кандидат створений!");

                } else {
                    foreach ($newVacancy->getMessages() as $message)
                    echo ($message->getMessage());
                }

                $this->view->status = true;

                return true;
            }



        } else {

            $this->view->form = $form;
            $this->view->isCreating = true;

        }

    }


    public function listAction()
    {
//        $candidates = Candidate::find();
//        $numberPage = (!empty($this->request->get('page'))) ? $this->request->get('page') : 1;
//
//        $this->view->candidates = $candidates;
//
//        if ($candidates) {
//            $paginator = new Paginator(array(
//                'data' => $candidates,
//                'limit'=> 5,
//                'page' => $numberPage
//            ));
//            $this->view->page = $paginator->getPaginate();
//        }
    }

}
