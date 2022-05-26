<?php

// DB接続
$dbn ='mysql:dbname=php_sql_assignment;charset=utf8mb4;port=3306;host=localhost';
$user = 'root';
$pwd = '';

try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}

// SQL作成&実行
$sql = 'SELECT timezone, category, classify, process FROM household_jobs';

$stmt = $pdo->prepare($sql);

try {
  $status = $stmt->execute();
  $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
  // echo '<pre>';
  // var_dump($result);
  // echo '</pre>';
  // exit();
  $output = "";
  foreach ($result as $record) {
    $output .= "<tr><td>{$record['timezone']}</td><td>{$record['category']}</td>
    <td>{$record['classify']}</td><td>{$record['process']}</td></tr>";
  }
} catch (PODException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);  
  exit();
}

?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>カジサボ</title>
</head>

<body>
  <fieldset>
    <legend>名もなき家事リスト（一覧画面）</legend>
    <a href="todo_input.php">入力画面</a>
    <table>
      <thead>
        <tr>
          <th>時間帯</th>
          <th>カテゴリー</th>
          <th>作業区分</th>
          <th>作業工程</th>
        </tr>
      </thead>
      <tbody>
        <!-- ここに<tr><td>deadline</td><td>todo</td><tr>の形でデータが入る -->
        <?= $output ?>
      </tbody>
    </table>
  </fieldset>
</body>

</html>