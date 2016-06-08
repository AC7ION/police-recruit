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
class Inputs extends Model
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
     * @Column(column="column", type="string")
     * @var string
     */
    public $column;

    /**
     * @Column(column="title", type="string")
     * @var string
     */
    public $title;

    /**
     * @Column(name="type", type="string")
     * @var string
     */
    public $type;


    public function getSource()
    {
        return "inputs";
    }
}
