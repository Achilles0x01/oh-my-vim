" VIM Setup {{{

" turn on the spell checking and set the English language
nmap <Leader>se :setlocal spell spelllang=en<CR>
" turn off the spell checking
nmap <Leader>so :setlocal nospell <CR>
" jump to the next bad spell word
nmap <Leader>sn ]s
" suggest words
nmap <Leader>sp z=
" jump to the next bad spell word and suggests a correct one
nmap <Leader>sc ]sz=
" add word to the dictionary
nmap <Leader>sa zg

" END VIM SETUP }}}

" Plugins {{{

" translate text with google translator
NeoBundle 'maksimr/vim-translator'

" END Plugins }}}

" Plugin Setup {{{

" Google Translator {{{
  
" Translate to zh (Chinese). Using language code iso 639-1
" Selected words and press 'T' to translate
let g:goog_user_conf = {'langpair': 'en|zh', 'v_key': 'T'}
  
" }}}

" END Plugin Setup }}}

" Unite Menu {{{
let g:unite_source_menu_menus.spelling = {
    \ 'description' : '       spell checking
        \                                        ⌘ [space]s',
    \}
let g:unite_source_menu_menus.spelling.command_candidates = [
    \['▷ spell checking in English                                  ⌘ ,se',
        \'setlocal spell spelllang=en'],
    \['▷ turn off spell checking                                    ⌘ ,so',
        \'setlocal nospell'],
    \['▷ jumps to next bad spell word and show suggestions          ⌘ ,sc',
        \'normal ,sc'],
    \['▷ jumps to next bad spell word                               ⌘ ,sn',
        \'normal ,sn'],
    \['▷ suggestions                                                ⌘ ,sp',
        \'normal ,sp'],
    \['▷ add word to dictionary                                     ⌘ ,sa',
        \'normal ,sa'],
    \]
nnoremap <silent>[menu]s :Unite -silent menu:spelling<CR>

" END Unite Menu }}}
