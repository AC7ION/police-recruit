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


    public function getSource()
    {
        return "weights";
    }
}
