# How to use 'Fern'
https://github.com/lambdalisue/fern.vim

## Refference
### Normal
:Fern {url} [-opener={opener}] [-reveal={reveal}] [-stay] [-wait]

- opener | ファイルの開き方を指定する
    - split | 横にウィンドウを分割
    - vsplit | 縦にウィンドウを分割
    - tabedit | 別タブでファイルツリーを表示
    - edit | 現在のタブに上書きでファイルツリーを表示
- reveal | 放棄
- stay | 放棄
- wait | 放棄

### Drawer
:Fern {url} -drawer [-opener={opener}] [-reveal={reveal}] [-stay] [-wait] [-width=30] [-keep] [-toggle]
openerはないっぽい

- width | drawerの幅
- keep | ファイルを選択したときに、drawerを消さないようにする
- toggle | drawerをトグルで操作する



## コマンド一覧
- :Fern . | 大本のディレクトリを開く
- :Fern %:h | 現在作業しているファイルの親ディレクトリを開く
- :Fern . -reveal=% | 現在作業しているファイルを展開した上で、ファイルツリーを表示
- :Fern . -drawer | 左側に別タブでファイルツリーを表示


## 操作一覧
- j,k | 上下移動
- l | フォルダの展開・ファイルを開く
- h | フォルダを閉じる
- e | ファイルを開く
- E | 垂直分割してファイルを開く
- t | 新規タブでファイルを開く
- <c-m> | フォルダを開く
- <c-h> | 親ディレクトリに移動する
- N | ファイルを新規作成する
- K | ディレクトリを新規作成する
- D | ファイルを削除する
- m | ファイルを移動する
- C | ファイルをコピーする
- P | ペーストする
- M | ファイルの切り取り
- y | ファイルパスをコピーする
- z | ファイル名に併せてウィンドウ幅を広げる
- ! | 隠しファイルの表示をトグルする

(- R | ファイルツリーをリロード)
- R | ファイル名を変更する

## 欲しい機能
- ファイル名検索
- ファイルの内容検索
- ファイル・ディレクトリ削除
