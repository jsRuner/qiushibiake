<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 15-11-1
 * Time: 上午10:05
 * To change this template use File | Settings | File Templates.
 *
 * 连接数据库。
 * 吴文付
 * 2015年11月1日
 *
 *
 */
class Connectionmysqli{
    //主机
    private $host="127.0.0.1";
    //数据库的username
    private $name="root";
    //数据库的password
    private $pass="123456";
    //数据库名称
    private $table="test";
    //编码形式
    private $ut="utf-8";

    private $link;


    //构造函数
    function __construct($ut="utf-8"){
        $this->ut=$ut;
        $this->connect();

    }

    //数据库的链接
    function connect(){
        $this->link = mysqli_connect($this->host,$this->name,$this->pass,$this->table) or die($this->error());
//        $link=mysqli_connect($this->host,$this->name,$this->pass) or die ($this->error());
//        mysqli_select_db($this->table,$link) or die("没该数据库：".$this->table);
        mysqli_query($this->link,"SET NAMES '$this->ut'");
    }

    function query($sql, $type = '') {
        if(!($query = mysqli_query($this->link,$sql))) $this->show('Say:', $sql);
        return $query;
    }

    function show($message = '', $sql = '') {
        if(!$sql) echo $message;
        else echo $message.'<br>'.$sql;
    }

    function affected_rows() {
        return mysqli_affected_rows();
    }

    function result($query, $row) {
        return mysqli_result($query, $row);
    }

    function num_rows($query) {
        return @mysqli_num_rows($query);
    }

    function num_fields($query) {
        return mysqli_num_fields($query);
    }

    function free_result($query) {
        return mysqli_free_result($query);
    }

    function insert_id() {
        return mysqli_insert_id();
    }

    function fetch_row($query) {
        return mysqli_fetch_row($query);
    }

    function version() {
        return mysqli_get_server_info();
    }

    function close() {
        return mysqli_close();
    }

    //向$table表中插入值
    function fn_insert($table,$name,$value){
        $this->query("insert into $table ($name) value ($value)");
    }
    //根据$id值删除表$table中的一条记录
    function fn_delete($table,$id,$value){
        $this->query("delete from $table where $id=$value");
        echo "id为". $id." 的记录被成功删除!";
    }
}



?>