<?php


namespace Models;

/**
 * Class Vacancy
 * @package Models
 *
 * @Source("vacancies")
 *
 */
class Vacancy extends \Phalcon\Mvc\Model
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
     * @Column(column="title", type="string")
     * @var string
     */
    public $title;

    /**
     * @Column(column="dateEnd", type="timestamp")
     * @var string
     */
    public $dateEnd;

    /**
     * @Column(name="categoryId", type="integer")
     * @var string
     */
    public $categoryId;

    /**
     * @Column(name="departmentId", type="integer")
     * @var string
     */
    public $departmentId;

    /**
     * @Column(column="changed", type="timestamp")
     * @var string
     */
    public $changed;

    /**
     * @Column(column="created", type="timestamp")
     * @var string
     */
    public $created;


    public function initialize()
    {
        $this->hasMany('id', '\Models\Weights', 'vacancyId', array('alias' => 'weights'));

    }


    public function getSource()
    {
        return "vacancies";
    }
}
