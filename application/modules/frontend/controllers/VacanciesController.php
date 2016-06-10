<?php

namespace Frontend\Controller;

use Engine\Exception;
use Forms\NewVacancyForm;
use Models\Inputs;
use Models\Vacancy;
use Models\Weights;
use Phalcon\Mvc\Controller;
use Models\Candidate;
use Forms\NewCandidateForm;
use Phalcon\Mvc\View;
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
            $data['created'] = date('Y-m-d H:i:s');
            $data['changed'] = date('Y-m-d H:i:s');

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
        $vacancies = Vacancy::find();
        $numberPage = (!empty($this->request->get('page'))) ? $this->request->get('page') : 1;

        $this->view->vacancies = $vacancies;

        if ($vacancies) {
            $paginator = new Paginator(array(
                'data' => $vacancies,
                'limit'=> 25,
                'page' => $numberPage
            ));
            $this->view->page = $paginator->getPaginate();
        }
    }


    public function viewAction($id)
    {
        echo $id;
        if (!empty($id)) {
            $vacancy = Vacancy::findFirst($id);
            $this->view->vacancy = $vacancy;

            $inputs = Inputs::find();
            $this->view->inputs = $inputs;

        } else {
            echo 5;
            $this->dispatcher->forward(array('module' => 'frontend', 'controller' => 'vacancies', 'view' => 'list'));
        }

    }


    /**
     * Sets weights to a vacancy
     *
     * @param $id
     */
    public function setWeightsAction($id)
    {
        $this->view->setRenderLevel(View::LEVEL_NO_RENDER);

        if (isset($id)) {
            foreach (Weights::find('vacancyId=' . $id) as $weight) {
                $weight->delete();
            }

            // get ajax data
            $data = $this->request->getPost('data');

            foreach ($data as $newWeightData) {
                $newWeight = new Weights();
                $newWeight->save(array(
                    'type' => 1,
                    'vacancyId' => $id,
                    'inputId'   => $newWeightData['columnValue'],
                    'value'     => $newWeightData['inputValue'],
                    'operation' => $newWeightData['operationValue']
                ));
            }
        }

        echo json_encode($_POST);
    }


    /**
     * Returns json on vacancy's weights
     *
     * @param $id
     */
    public function getWeightsByIdAction($id)
    {
        $this->view->setRenderLevel(View::LEVEL_NO_RENDER);

        if (isset($id)) {
            $weights = Weights::find('vacancyId=' . $id)->toArray();
            $data = array();
            foreach ($weights as $weight) {
                $weight['column'] = $weight['inputId'];
                $data[] = $weight;
            }

            echo json_encode($data);
        }
    }

}
