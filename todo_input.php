<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>カジサボ</title>
</head>

<body>
  <form action="todo_create.php" method="POST">
    <fieldset>
      <legend>名もなき家事リスト（入力画面）</legend>
      <a href="todo_read.php">一覧画面</a>
      <div>
        時間帯 <input type="text" name="timezone">
      </div>
      <div>
        カテゴリー <input type="text" name="category">
      </div>
      <div>
        作業区分 <input type="text" name="classify">
      </div>
      <div>
        作業工程 <input type="text" name="process">
      </div>
      <div>
        <button>submit</button>
      </div>
    </fieldset>
  </form>

</body>

</html>