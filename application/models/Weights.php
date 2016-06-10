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

    /**
     * @Column(name="operation", type="string")
     * @var string
     */
    public $operation;


    public function initialize()
    {
        $this->belongsTo('inputId', '\Models\Inputs', 'id', array('alias' => 'input'));
        $this->belongsTo('vacancyId', '\Models\Vacancy', 'id', array('alias' => 'vacancy'));

    }

    public function getSource()
    {
        return "weights";
    }


    /**
     * Check is candidate fits to vacancy by weights
     *
     * @param Candidate $candidate
     * @return bool
     */
    public function isCandidateFits(Candidate $candidate)
    {
        if ($this->checkByFieldType($candidate)) {
            return true;
        } else {
            return false;
        }
    }


    /**
     * Checks is field satisfies condition
     *
     * @param Candidate $candidate
     * @return bool
     */
    private function checkByFieldType(Candidate $candidate)
    {
        $candidateValue = $candidate->{$this->input->column};

        switch ($this->operation) {
            case 'like':
                echo "1 ";
                return stripos($candidateValue, $this->value);
                break;

            case 'notnull':
                echo "2 ";
                return (!is_null($candidateValue));
                break;

            case 'null':
                return (is_null($candidateValue));
                break;

            case 'equal':
                return $candidateValue == $this->value;
                break;

            case 'notequal':
                return $candidateValue != $this->value;
                break;

            default:
                return false;
                break;
        }
    }

}
