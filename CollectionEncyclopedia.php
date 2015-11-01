<?php
/**
 * 二〇一五年十月三十一日 17:37:17
 * 吴文付
 * 目标：采集糗事百科的段子，只采集文字
 *
 *目标地址：http://www.qiushibaike.com/textnew
 *
 * 采集每一个段子内容，保存到了数据库。
 *
 * 
 * 
 *
 * 
 */

require('lib/phpQuery/phpQuery.php');

require('mysql.php');


$url = 'http://www.qiushibaike.com/textnew/page/35?s=4821005';



$curl = curl_init(); //开启curl

$header[] = "Host:www.qiushibaike.com";
$header[] = "User-Agent:Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0";
$header[] = "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";
$header[] = "Accept-Language: zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3";
//$header[] = "Accept-Encoding: gzip, deflate";
$header[] = "Cookie:_qqq_uuid_=ZTgyMGRjYWY4Mzc0MzNhY2QyNzMwZTZlMzhiODEwNTYwZDYzMTBhNg==|1446285620|252f0fb776fe7e6b89d7f74e45fe83ff1f277107; bdfmapping=1446285648; Hm_lvt_2670efbdd59c7e3ed3749b458cafaa37=1446285671";
$header[] = "Connection: keep-alive";
curl_setopt($curl, CURLOPT_HTTPHEADER, $header);

curl_setopt($curl, CURLOPT_URL, $url); //设置请求地址
curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);  //是否输出 1 or true 是不输出 0  or false输出


$html = curl_exec($curl); //执行curl操作
curl_close($curl);



//echo $html;

#w将获取的结果，通过phpquery ,生成一个对象。
phpquery::newDocumentHTML($html,'utf-8');

//echo pq("title")->html();

#获取段子内容
#这需要改进。


#获取段子列表。最外面那个。
$articles = pq(".article");

#id位于id属性中，

#存储数据.二维数组。每一个数组代表一个段子。

$datas = array();

$sql = "INSERT INTO `qsbk`(`id`, `content`, `addtime`, `code`) VALUES ";

foreach($articles as $article){

    $data = array();
    #获取段子的唯一code
    $data['code'] = pq($article)->attr("id");
    #获取段子的内容
    $data['content'] = pq($article)->find(".content")->text();
    #添加到数组中去
    $datas[] = $data;
    $time = time();
    $sql .= "(null,'".$data['content']."',$time,'".$data['code']."')";
    $sql .= ",";

}
#截取最后一个,
$sql = trim($sql,',');

// echo $sql;
#存入数据库。
$db =  new Connectionmysqli();

$db->query($sql);



?>