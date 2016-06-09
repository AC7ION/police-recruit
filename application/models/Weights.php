<?php


namespace Models;

use Phalcon\Mvc\Model;

/**
 * Class Vacancy
 * @package Models
 *
 * @Source("vacancies")
 *
 */
class Weights extends Model
{
    /**
     * @Id
     * @Identity
     * @GeneratedValue
     * @Primary
     * @Column(type="integer")
     * @var integer
     */
    public $id;

    /**
     * @Column(column="type", type="integer")
     * @var integer
     */
    public $type;

    /**
     * @Column(column="vacancyId", type="integer")
     * @var integer
     */
    public $vacancyId;

    /**
     * @Column(name="inputId", type="integer")
     * @var integer
     */
    public $inputId;

    /**
     * @Column(name="value", type="string")
     * @var string
     */
    public $value;

    public function initialize()
    {
        $this->belongsTo('inputId', '\Models\Inputs', 'id', array('alias' => 'input'));
        $this->belongsTo('vacancyId', '\Models\Vacancy', 'id', array('alias' => 'vacancy'));

    }

    public function getSource()
    {
        return "weights";
    }


    public function isCandidateFits(Candidate $candidate)
    {
//        echo $candidate->{$this->input->column};
//        if ($candidate->{$this->input->column} )
        if ($this->checkByFieldType($candidate)) {
            return true;
        } else {
            return false;
        }
    }


    private function checkByFieldType(Candidate $candidate)
    {
        $candidateValue = $candidate->{$this->input->column};

        switch ($this->input->type) {
            case 'Text':
                if (stripos($candidateValue, $this->value)) {
                    echo "1 ";
                    return true;
                } else {
                    return false;
                }
                break;

            case 'Integer':
                if (!is_null($candidateValue)) {
                    echo "2 ";
                    return true;
                } else {
                    return false;
                }
                break;

            case 'Select':
                if ($candidateValue == $this->value) {
                    echo "3 ";
                    return true;
                } else {
                    return false;
                }
                break;

            default:
                return false;
                break;
        }
    }

}
