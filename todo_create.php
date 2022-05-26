<?php
// var_dump($_POST);
// exit();
// POSTデータ確認

if (
  !isset($_POST['timezone']) || $_POST['timezone']=='' ||
  !isset($_POST['category']) || $_POST['category']=='' ||
  !isset($_POST['classify']) || $_POST['classify']=='' ||
  !isset($_POST['process']) || $_POST['process']==''
  ) {
  exit('データが足りません');
}

$timezone = $_POST['timezone'];
$category = $_POST['category'];
$classify = $_POST['classify'];
$process = $_POST['process'];

// 各種項目設定
$dbn ='mysql:dbname=php_sql_assignment;charset=utf8mb4;port=3306;host=localhost';
$user = 'root';
$pwd = '';

// DB接続。try~catchでセット。この塊で毎回使う。
try {
  $pdo = new PDO($dbn, $user, $pwd);//DBへ接続。new PDOでPHPデータオブジェクトを使えるようにする。
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}

// 「dbError:...」が表示されたらdb接続でエラーが発生していることがわかる．

// SQL作成&実行（誰かがフォームから入力したものを変数で受け取って、DBに突っ込んでいる。変数は$ではなくて:に変更する）
$sql = 'INSERT INTO household_jobs (id, timezone, category, classify, process, created_at, updated_at) VALUES (NULL, :timezone, :category, :classify, :process, now(), now())';

$stmt = $pdo->prepare($sql);

// バインド変数を設定
$stmt->bindValue(':timezone', $timezone, PDO::PARAM_STR);//:todoに$todoの内容を代入する（数字の場合はPDO::PARAM_INT）
$stmt->bindValue(':category', $category, PDO::PARAM_STR);
$stmt->bindValue(':classify', $classify, PDO::PARAM_STR);
$stmt->bindValue(':process', $process, PDO::PARAM_STR);

// SQL実行（実行に失敗すると `sql error ...` が出力される）
try {
  $status = $stmt->execute();
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}

header("Location:todo_read.php");
?>