<?php


namespace Forms;

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\Select;
use Phalcon\Forms\Element\TextArea;
use Phalcon\Forms\Element\Submit;
use Phalcon\Validation\Validator\Email;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Numericality;

class NewVacancyForm extends Form
{

    public function initialize($entity = null, $option = array())
    {
        if (isset($options['edit'])) {
            $this->add(new Hidden("id"));
        }

        $departmentId = new Select('departmentId',
            array(
                0  => 'КЕРІВНИЦТВО ДЕПАРТАМЕНТУ ПАТРУЛЬНОЇ ПОЛІЦІЇ',
                1  => 'Управління моніторингу та аналітичного забезпечення',
                2  => 'Відділ моніторингу',
                3  => 'Відділ адміністративної практики',
                4  => 'Відділ аналітичного забезпечення',
                5  => 'Управління правового забезпечення та міжнародного співробітництва',
                6  => 'Відділ претензійно - позовної роботи',
                7  => 'Відділ договірної роботи та міжнародного співробітництва ',
                8  => 'Управління забезпечення діяльності',
                9  => 'Відділ планування та матеріально- технічного забезпечення',
                10 => 'Відділ закупівель',
                11 => 'Відділ зберігання та постачання',
                12 => 'Відділ інформаційних технологій та зв\'язку',
                13 => 'Господарський відділ',
                14 => 'Відділ транспортного забезпечення ',
                15 => 'Управління фінансового забезпечення та бухгалтерського обліку',
                16 => 'Планово - фінансовий відділ',
                17 => 'Відділ бухгалтерського обліку та звітності',
                18 => 'Відділ оплати праці',
                19 => 'Управління кадрового забезпечення',
                20 => 'Відділ комплектування',
                21 => 'Відділ професійної підготовки',
                22 => 'Відділ рекрутингу',
                23 => 'Відділ психологічного забезпечення',
                24 => 'Управління документального забезпечення',
                25 => 'Відділ реєстрації документів',
                26 => 'Відділ опрацювання звернень громадян',
                27 => 'Управління чергової служби',
                28 => 'Відділ оперативного керування',
                29 => 'Відділ озброєння та спеціальних засобів',
                30 => 'Режимно-секретний сектор',
            ),
            array(
                'using'            => array(
                    'id',
                    'name'
                ),
                'id'               => 'departmentId',
                'data-placeholder' => '',
                'class'            => 'chosen-select form-control input-sm',
                'style'            => ''
            ));
        $departmentId->setLabel('Департамент');
        $departmentId->addValidators(array(
            new PresenceOf(array(
                'message' => 'Виберіть департамент, будь ласка'
            )),
        ));
        $this->add($departmentId);


        $name_array = array(
            'id'             => 'title',
            'class'          => 'form-control',
            'data-toggle'    => "popover",
            'data-trigger'   => "manual",
            'data-html'      => "true",
            'data-placement' => "right",
        );
        $name = new Text("title", $name_array);
        $name->setLabel("Назва вакансії");
        $name->setFilters(array('striptags', 'string'));
        $name->addValidators(array(
            new PresenceOf(array(
                'message' => 'Введіть назву вакансії, будь ласка'
            )),
        ));
        $this->add($name);


        $categoryId = new Select('categoryId',
            array(
                0 => 'Державний службовець',
                1 => 'Цивільний персонал',
                2 => 'Середній склад поліції'
            ),
            array(
                'using'            => array(
                    'id',
                    'name'
                ),
                'id'               => 'categoryId',
                'data-placeholder' => '',
                'class'            => 'chosen-select form-control input-sm',
                'style'            => ''
            ));
        $categoryId->setLabel('Категорія посади');
        $categoryId->addValidators(array(
            new PresenceOf(array(
                'message' => 'Виберіть категорію посади, будь ласка'
            )),
        ));
        $this->add($categoryId);


        $submit = new Submit("submit", array(
            'class' => 'form-control btn-success',
            'value' => 'Зберегти'
        ));
        $submit->setLabel(" ");
        $this->add($submit);



    }

}