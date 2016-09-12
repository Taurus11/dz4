<?php

interface I_Main
{
    public function find();

    public function findOne($id);

    public function findBy($arr);

    public function delete($id);

}

abstract class A_Main implements I_Main
{
    protected $dbh;
    protected $table;

    public function __construct()
    {
        include('_config.php');
        try {
            $this->dbh = new PDO("mysql:host=" . $host . ";dbname=" . $db_name, $mysqllogin, $mysqlpassword);
            $this->dbh->query('set names utf8');
        } catch (PDOException $e) {
            echo $e;
        }
    }

    public function find()
    {
        return $this->dbh->query('select * from ' . $this->table)->fetchAll(PDO::FETCH_ASSOC);
    }

    public function findOne($id)
    {
        $sql = 'select * from ' . $this->table . ' where id=' . $id;
        return $this->dbh->query($sql)->fetchAll(PDO::FETCH_ASSOC);
    }

    public function findBy($arr)
    {
        function getSql($arr, $table)
        {
            $sql = '';
            foreach ($arr as $key => $value) {
                $sql .= 'select * from ' . $table . ' where ' . $key . ' = "' . $value . '"';
            }
            return $sql;
        }

        $sql = getSql($arr, $this->table);
        return $this->dbh->query($sql)->fetchAll(PDO::FETCH_ASSOC);
    }

    public function delete($id)
    {
        $sql = 'delete from ' . $this->table . ' where id=' . $id ;
        $this->dbh->query($sql);
        return $this->dbh->errorInfo();
    }

}

class Category extends A_Main
{
    protected $table = 'category';
    private $id;
    private $title;
    private $status;

    public function __set($name, $value)
    {
        $this->$name = $value;
    }

    public function __get($name)
    {
        return $this->$name;
    }

}

class Products extends A_Main
{
    protected $table = 'products';
    private $id;
    private $id_catalog;
    private $title;
    private $mark;
    private $count;
    private $price;
    private $description;
    private $status;
    private $img;

    public function __set($name, $value)
    {
        $this->$name = $value;
    }

    public function __get($name)
    {
        return $this->$name;
    }

}

class Users extends A_Main
{
    protected $table = 'users';
    private $id;
    private $name;
    private $lastname;
    private $birthday;
    private $email;
    private $password;
    private $is_active;
    private $reg_date;
    private $last_update;
    private $status;

    public function __set($name, $value)
    {
        $this->$name = $value;
    }

    public function __get($name)
    {
        return $this->$name;
    }

}

class Orders extends A_Main
{
    protected $table = 'orders';
    private $id;
    private $id_user;
    private $date_order;
    private $status;

    public function __set($name, $value)
    {
        $this->$name = $value;
    }

    public function __get($name)
    {
        return $this->$name;
    }

}

class Order_items extends A_Main
{
    protected $table = 'order_items';
    private $id;
    private $id_order;
    private $id_product;
    private $price;
    private $count;

    public function __set($name, $value)
    {
        $this->$name = $value;
    }

    public function __get($name)
    {
        return $this->$name;
    }

}
