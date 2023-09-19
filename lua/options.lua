-- 検索時
vim.opt.ignorecase = true -- 大文字小文字を無視する
vim.opt.smartcase = true -- 大文字が含まれる場合は大文字小文字を区別する
vim.opt.showmatch = true -- 対応する括弧を表示する
vim.opt.hlsearch = true -- 検索した単語をハイライトする
vim.opt.wrapscan = true -- 検索がファイル末尾まで進んだら、ファイル先頭から再び検索する
-- 表示関連
vim.opt.number = true -- 行番号を表示する
vim.opt.cursorline = true -- カーソル行をハイライトする
vim.opt.cursorcolumn = true -- カーソル列をハイライトする
vim.opt.lazyredraw = true -- スクロール時に再描画しない
vim.opt.cmdheight = 2 -- コマンドラインの高さを2にする
vim.opt.showtabline = 2 -- タブラインを常に表示する
vim.opt.laststatus = 2 -- ステータスラインを常に表示する
vim.opt.showcmd = true -- 入力中のコマンドを表示する
vim.opt.ruler = true -- カーソルの位置情報を最下行のウィンドウに表示してくれる
-- 補完関連
vim.opt.wildmenu = true -- 補完候補をメニューで表示する
vim.opt.wildmode = {"longest", "full"} -- 補完モードを設定する
-- インデント関連
vim.opt.tabstop = 4 -- タブ幅を4にする
vim.opt.shiftwidth = 4 -- シフト幅を4にする
vim.opt.expandtab = true -- タブ文字をスペースに変換する
vim.opt.autoindent = true -- 自動インデントを有効にする
vim.opt.smartindent = true -- 新しい行を作ったときに、高度な自動インデントを行う
vim.opt.breakindent = true -- 折り返された行のインデントを揃える
vim.opt.breakindent = true -- 折り返された行のインデントを揃える
-- バックアップファイル
vim.opt.backup = false
vim.opt.swapfile = false
-- ウィンドウ関連
vim.opt.splitbelow = true -- ウィンドウを横分割すると、新しいウィンドウがカレントウィンドウの下に開かれる
vim.opt.splitright = true -- ウィンドウを縦分割すると、新しいウィンドウがカレントウィンドウの右に開かれる
-- エンコーディング関連
vim.o.encofing = 'utf-8'
vim.scriptencoding = 'utf-8'
vim.opt.fileencodings = "utf-8" -- ファイルのエンコーディング
vim.opt.fileformats = "unix,dos,mac" -- 改行コードの解釈

-- 外部での変更を自動で読み込みなおす
vim.opt.autoread = true
-- ファイルを保存していなくても、別のファイルを開けるようにする
vim.opt.hidden = true
-- クリップボード連携
vim.opt.clipboard:append{unnamedplus}
-- 行末の一文字先までカーソルを移動できるようにする
vim.opt.virtualedit = "onemore"
-- ビープ音に、音ではなくビジュアルベルを使う
vim.opt.visualbell = true
-- ファイル変更時の破棄に確認を出す
vim.opt.confirm = true
-- 日本語の表記幅
vim.opt.ambiwidth = "single"
