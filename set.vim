" setの設定

" ファイルのエンコーディング
set fileencodings=UTF-8

" 改行コードの解釈
set fileformats=dos,unix,mac

" バックアップファイルを作らない
set nobackup

" スワップファイルを作らない
set noswapfile

" 外部での変更を自動で読み込みなおす
set autoread

" ファイルを保存していなくても、別のファイルを開けるようにする
set hidden

" コマンドを画面の最下行に表示する
set showcmd

" クリップボード連携
set clipboard+=unnamedplus

" 行数表示
set number

" カーソルがある行を強調表示
" アンダーバーが見えにくくなる
" set cursorline

" カーソルがある列を強調表示
" 邪魔
" set cursorcolumn

" 行末の一文字先までカーソルを移動できるようにする
set virtualedit=onemore

" 新しい行を作ったときに、高度な自動インデントを行う
set smartindent

" ビープ音に、音ではなくビジュアルベルを使う
set visualbell

" 閉じ括弧が入力されたときに、対応する開き括弧にわずかの間ジャンプする
set showmatch

" 最下ウィンドウに、常にステータスバーを表示する
set laststatus=2

" コマンドラインに使われる画面上の行数
set cmdheight=2

" 複数のマッチがあるときは、すべてのマッチを網羅し、共通する最長の文字列までが補完される
set wildmode=list:longest

" ウィンドウを横分割すると、新しいウィンドウがカレントウィンドウの下に開かれる
set splitbelow

" ウィンドウを縦分割すると、新しいウィンドウがカレントウィンドウの右に開かれる
set splitright

" tabを半角スペースで挿入する
set expandtab

" tabの幅をスペース4個分にする
set tabstop=4

" vimが自動で生成するtab幅をスペース4個分にする
set shiftwidth=4

" 検索パターンにおいて、大文字と小文字を区別しない
set ignorecase

" 検索のパターンが大文字を含んでいたら、オプション'ignorecase'を上書きする
set smartcase

" 検索コマンドを打ち込んでいる間にも、打ち込んだところまでのパターンがマッチするテキストを、すぐに表示する
set incsearch

" 検索がファイル末尾まで進んだら、ファイル先頭から再び検索する
set wrapscan

" 前回の検索パターンが存在する時、それにマッチするテキストをすべて強調表示する
set hlsearch

" 改行時のインデントを揃える
set autoindent

" 折り返された行のインデントを揃える
set breakindent

" ファイル変更時の破棄に確認を出す
set confirm

" <C-A>と<C-X>で増減できる対象を、10進数のみにする
set nrformats=

" カーソルの位置情報を最下行のウィンドウに表示してくれる
set ruler

" コマンドラインでの補完が拡張モードで行われる
set wildmenu
