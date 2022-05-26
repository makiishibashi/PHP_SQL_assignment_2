<?php
// var_dump($_POST);
// exit();
// POSTデータ確認
session_start();
$lid = $_POST["lid"];
$lpw = $_POST["lpw"];

// 各種項目設定
$dbn ='mysql:dbname=php_sql_assignment2;charset=utf8mb4;port=3306;host=localhost';
$user = 'root';
$pwd = '';

//1.接続します
try{
    $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  // echo json_encode(["db error" => "{$e->getMessage()}"]);
  // exit();
  exit ('DbConnectError:'.$e->getMessage());
}

//2.データ登録SQL作成
$sql = "SELECT * FROM login_user_table WHERE u_id=:lid AND u_pw=:lpw";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':lid', $lid);
$stmt->bindValue(':lpw', $lpw);
$res = $stmt->execute();

//SQL実行時にエラーがある場合
if($res==false){
    $error = $stmt->errorInfo();
    exit("QueryError:".$error[2]);
}

//3.抽出データ数を取得
//$count = $stmt->fetchColumn();//SELECT COUNT(*)で使用可能
$val = $stmt->fetch();//1レコードだけ取得する方法

//4.該当レコードがあればSESSIONに値を代入
if( $val["id"] !=""){
  $_SESSION["chk_ssid"] = session_id();
  $_SESSION["u_name"] = $val['u_name'];
  //Login処理OKの場合select.phpへ遷移
  header ("Location: todo_input.php");
}else{
  //login処理NGの場合login.phpへ遷移
  header("Location: login.php");
}
//処理終了
exit();

?>