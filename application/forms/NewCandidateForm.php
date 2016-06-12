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

class NewCandidateForm extends Form
{

    public function initialize($entity = null, $option = array())
    {
        if (isset($options['edit'])) {
            $this->add(new Hidden("id"));
        }

//        if ($this->auth->getUser()->profile->id == Profiles::USERS_ID) {
//            $name_array['readonly'] = 'readonly';
//        }

        $type = new Select('type',
            array(
                0 => 'Вільнонаймана'
            ),
            array(
                'using'            => array(
                    'id',
                    'name'
                ),
//                'useEmpty'         => true,
//                'emptyText'        => '...',
//                'emptyValue'       => '',
                'id'               => 'cat',
                'data-placeholder' => 'Категория',
                'class'            => 'chosen-select form-control input-sm',
                'style'            => 'max-width:100%;'
            ));
        $type->setLabel('Категорія посади');
        $this->add($type);


        $name_array = array(
            'id'             => 'pib',
            'class'          => 'form-control',
            'data-toggle'    => "popover",
            'data-trigger'   => "manual",
            'data-html'      => "true",
            'data-placement' => "right",
//            'required'       => "required",
            'placeholder'    => "Введіть, будь ласка, ПІБ повністю"
        );
        $name = new Text("pib", $name_array);
        $name->setLabel("ПІБ");
        $name->setFilters(array('striptags', 'string'));
        $name->addValidators(array(
            new PresenceOf(array(
                'message' => 'Введіть ПІБ, будь ласка'
            )),
        ));
        $this->add($name);



        $marital = new Select('maritalStatus',
            array(
                0 => 'Неодружений(а)',
                1 => 'Одружений(а)'
            ),
            array(
                'using'            => array(
                    'id',
                    'name'
                ),
                'id'               => 'marital',
                'data-placeholder' => '',
                'class'            => 'chosen-select form-control input-sm',
                'style'            => ''
            ));
        $marital->setLabel('Сімейний стан');
        $this->add($marital);


        $address = new Text("address", array(
            'class' => 'form-control'
        ));
        $address->setLabel("Адреса проживання");
        $address->setFilters(array('striptags', 'string'));
        $address->addValidators(array(
            new PresenceOf(array(
                'message' => 'Введіть адресу проживання, будь ласка'
            )),
        ));
        $this->add($address);


        $phoneMobile = new Text("phoneMobile", array(
            'class' => 'form-control phone',
            'pattern' => '^[0-9-\(\) \+]{10,13}$',
            'placeholder' => '+38(099)012-3123'
        ));
        $phoneMobile->setLabel("Мобільний телефон");
        $phoneMobile->setFilters(array('striptags', 'string'));
        $phoneMobile->addValidators(array(
            new PresenceOf(array(
                'message' => 'Введіть свій мобільний телефон'
            )),
        ));
        $this->add($phoneMobile);


        $phoneHome = new Text("phoneHome", array(
            'class' => 'form-control phone',
            'placeholder' => '+38(035)492-1575'

        ));
        $phoneHome->setLabel("Домашній телефон");
        $phoneHome->setFilters(array('striptags', 'string'));
        $this->add($phoneHome);



        $education = new Select('education',
            array(
                0 => 'Вища',
                1 => 'Незакінчена вища',
                2 => 'Середня',
                3 => 'Без освіти'
            ),
            array(
                'using'            => array(
                    'id',
                    'name'
                ),
                'id'               => 'education',
                'data-placeholder' => '',
                'class'            => 'chosen-select form-control input-sm',
                'style'            => ''
            ));
        $education->setLabel('Освіта');
        $this->add($education);


        $educationProfile = new Select('educationProfile',
            array(
                0 => 'Право',
                1 => 'ІТ',
                2 => 'Педагогічна',
                3 => '...'
            ),
            array(
                'using'            => array(
                    'id',
                    'name'
                ),
                'id'               => 'educationProfile',
                'data-placeholder' => '',
                'class'            => 'chosen-select form-control input-sm',
                'style'            => ''
            ));
        $educationProfile->setLabel('Профіль освіти');
        $this->add($educationProfile);


        $educationText = new Text("educationText", array(
            'class' => 'form-control'
        ));
        $educationText->setLabel("Місце навчання");
        $educationText->setFilters(array('striptags', 'string'));
        $this->add($educationText);

        $driving = new Text("drivingExp", array(
            'class' => 'form-control'
        ));
        $driving->setLabel("Власний транспорт");
        $driving->setFilters(array('striptags', 'string'));
        $driving->addValidators(array(
            new PresenceOf(array(
                'message' => 'Введіть інформацію про власний транспорт, будь ласка'
            )),
        ));
        $this->add($driving);


        $drivingNumber = new Text("drivingNumber", array(
            'class' => 'form-control'
        ));
        $drivingNumber->setLabel("Посвідчення водія (номер)");
        $drivingNumber->setFilters(array('striptags', 'string'));
        $drivingNumber->addValidators(array(
            new PresenceOf(array(
                'message' => 'Введіть інформацію про власний транспорт, будь ласка'
            )),
        ));
        $this->add($drivingNumber);








        $pcWorking = new Text("pcWorking", array(
            'class' => 'form-control'
        ));
        $pcWorking->setLabel("Робота на ПК");
        $pcWorking->setFilters(array('striptags', 'string'));
        $pcWorking->addValidators(array(
            new PresenceOf(array(
                'message' => 'Робота на ПК'
            )),
        ));
        $this->add($pcWorking);


        $recommendations = new TextArea("recommendations", array(
            'class' => 'form-control'
        ));
        $recommendations->setLabel("Рекомендації");
        $recommendations->setFilters(array('striptags', 'string'));
        $this->add($recommendations);


        $submit = new Submit("submit", array(
            'class' => 'form-control btn-success',
            'value' => 'Зберегти'
        ));
        $submit->setLabel(" ");
        $this->add($submit);



//        $categories_array = array();
//        foreach (Categories::find('type IN (1)') as $category) {
//            $relations = CategoriesRelations::find('cat_from='.$category->id);
//            $level2 = array();
//            foreach ($relations as $relation) {
//                $level2[$relation->to_cat->id] = $relation->to_cat->name;
//            }
//            $categories_array[$category->name] = $level2;
//        }
//




        //        $message = new TextArea('msg', array(
        //            'placeholder' => 'Суть заявки',
        //            'rows'        => 6,
        //            'name'        => 'msg',
        //            'class' => 'form-control input-sm',
        //            'style' => 'max-width:100%;'
        //        ));
        //        $message->setLabel('Текст');
        //        $message->addValidators(array(
        //        ));
        //        $this->add($message);


        $this->add(new Hidden('cat_to_id', array('value' => 1)));
        $this->add(new Hidden('ok_date', array('value' => 1)));
        $this->add(new Hidden('prio', array('value' => 1)));
        $this->add(new Hidden('file_array', array('value' => '')));
        $this->add(new Hidden('hashname', array('value' => md5(time()))));
        $this->add(new Hidden('status_action', array('value' => '')));
        $this->add(new Hidden('msg', array('value' => '')));

//        //TODO: сделать настройкой
//        $this->add(new Hidden('file_types', array('value' => '(gif|jpe?g|png|doc|xls|rtf|pdf|zip|rar|bmp|docx|xlsx)')));
//        $this->add(new Hidden('file_size', array('value' => '5242880')));
    }

}