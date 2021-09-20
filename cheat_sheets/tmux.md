# How to use tmux
Tmuxもconfのカスタマイズが可能
Nvimとの共存をどのように設定しよう？


## 注意点
- Terminal Multiplexerの略
- Linux 系のターミナル画面を複数のセッション、ウィンドウ、ペインに分割して利用することができる
- ひとつのターミナルは複数のセッションを持つことができる
- ひとつのセッションは複数のウィンドウを持つことができる
- ひとつのウィンドウは複数のペインを持つことができる
- ターミナルを終了してもセッションは維持される


## 操作一覧

### セッション操作
- tmux | セッションを起動
- tmux new -s 名前 | 名前付きセッションを起動
- exit | セッションを終了
- Ctrl-b d | セッションを一時的に中断してメインに戻る (Detach)
- tmux a | 中断していたセッションに戻る (Attach)
- tmux a -t 名前 | 中断していた名前付きセッションに戻る
- Ctrl-b s | セッションの一覧を表示
- tmux list-sessions | セッションの一覧を表示
- tmux kill-session -t 名前 | 指定したセッションを終了

### ウィンドウ操作一覧
- Ctrl-b c | 新規ウィンドウを作成 (Create)
- Ctrl-b 数字 | 数字で指定したウィンドウに移動
- Ctrl-b n | 次のウィンドウに移動 (Next)
- Ctrl-b p | 前のウィンドウに移動 (Prev)
- Ctrl-b l | 以前のウィンドウに移動 (Last)
- Ctrl-b w | ウィンドウの一覧を表示 (Window)
- Ctrl-b , | ウィンドウ名を変更
- Ctrl-b ' | ウィンドウ番号を指定して移動
- Ctrl-b . | ウィンドウ番号を変更
- Ctrl-b & | ウィンドウ名を終了 (確認付き)
- exit | ウィンドウを終了

### ペイン操作一覧
- Ctrl-b " | 上下にペインを分割
- Ctrl-b % | 左右にペインを分割
- Ctrl-b 矢印 | ペインを移動
- Ctrl-b o | 次のペインに移動
- Ctrl-b ; | 以前のペインに移動
- Ctrl-b q | ペイン番号を表示
- Ctrl-b { | ペイン順序を前方向に入れ替え
- Ctrl-b } | ペイン順序を後方向に入れ替え
- Ctrl-b z | ペインを最大化・復帰
- Ctrl-b SPACE | ペインのレイアウトを変更
- Ctrl-b t | ペインに時計を表示 (q で終了)
- Ctrl-b ! | ペインをウィンドウ化
- Ctrl-b x | ペインを終了(確認有り)
- exit | ペインを終了

### コピー操作一覧
- Ctrl-b [ | コピーモードを開始する
- h | カーソルを左に移動する
- j | カーソルを下に移動する
- k | カーソルを上に移動する
- l | カーソルを右に移動する
- SPACE | コピー選択を開始する
- ENTER | コピー選択を終了してコピーバッファに格納し、コピーモードを終了する
- Ctrl-b ] | コピーした内容を貼り付ける
- v | 矩形モードを切り替える
- q | コピーモードを途中で終了する
- Ctrl-u | スクロールアップ
- Ctrl-d | スクロールダウン
- Ctrl-b | ページアップ
- Ctrl-f | ページダウン

### その他の操作
- Ctrl-b ? | キーバインドの一覧を表示 (q で戻る)
- Ctrl-b : | コマンド入力モード (list-windowsなど)