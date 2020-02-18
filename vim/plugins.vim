call plug#begin(g:configPath . '/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mbbill/undotree'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'lambdalisue/vim-gista'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'vim-vdebug/vdebug', { 'for': 'php' }
Plug 'janko-m/vim-test'
Plug 'phpactor/phpactor', { 'for': 'php', 'do': 'composer install', 'branch': 'develop' }
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'markonm/traces.vim'
Plug 'sheerun/vim-polyglot'
Plug 'machakann/vim-sandwich'
Plug 'SirVer/ultisnips'
Plug 'w0rp/ale'
Plug 'jesseleite/vim-agriculture'
Plug 'noahfrederick/vim-laravel'
Plug 'tpope/vim-projectionist'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'metakirby5/codi.vim'
Plug 'kamykn/spelunker.vim'

if !has('nvim')
    Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-html-subscope'
Plug 'ncm2/ncm2-markdown-subscope', {'for': 'markdown'}
Plug 'phpactor/ncm2-phpactor', {'for': 'php'}
Plug 'ncm2/ncm2-ultisnips'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-cssomni'
Plug 'fgrsnau/ncm2-otherbuf', {'branch': 'master'}

call plug#end()

runtime! macros/matchit.vim

set rtp+=/usr/bin/fzf

let g:ale_fixers = {
\   'php': [ 'php_cs_fixer' ],
\}

let g:ale_linters = {
\ 'php': ['php', 'phpcs', 'phpmd'],
\ 'bash': ['shellcheck'],
\ }

let g:ale_fix_on_save = 1
let g:ale_php_phpcs_standard = 'phpcs_ruleset.xml'
let g:php_cs_fixer_config_file = '.php_cs'

let g:ale_haskell_ghc_options = '-fno-code -v0 -dynamic'

let g:NERDCreateDefaultMappings = 0

let g:vdebug_options = {"break_on_open": 0}
let g:vdebug_features = {'max_children': 1024}
let g:phpactorPhpBin = '/usr/bin/php'
let g:phpactorBranch = 'develop'
let g:phpactorOmniAutoClassImport = 1
let g:gista#command#post#default_public = 0
let test#strategy = "shtuff"

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:mkdp_auto_close = 0

" NCM2: {
    autocmd BufEnter * call ncm2#enable_for_buffer()

    set completeopt=noinsert,menuone,noselect
    inoremap <silent> <expr> <CR> (pumvisible() ? ncm2_ultisnips#expand_or("\<c-y>", 'n') : "\<CR>")
" }
