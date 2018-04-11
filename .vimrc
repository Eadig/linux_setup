"displays line number, column number, virtual column number, and relative
"position of the cursor.
set ruler

"tabstop inserts the number of spaces when tab is pressed.
"shiftwidth set the number of spaces when indenting with tab.
"expandtab inserts space characters when the tab key is pressed.
set tabstop=2 shiftwidth=2 expandtab

"filetype on, is used to help to see what type of file it is and set options.
"plugin is added incase there is a certain plugin for that filetype.
"indent loads the indent.vim file if it is there for that fyletype.
filetype plugin indent on

"adds color to programming syntax so it is more legible. Enable uses users
"color settings instead of 'on' which uses vim's color settings.
syntax enable

"adds number lines when you open vim.
set number
"sets viminfo to 1000 so that you can copy and paste more lines then the
"default 150 lines.
set viminfo='20,<1000

"sets laststatus to 2 so that it will always display the status line.
set laststatus=2
"custom format for the status line.
set statusline=%y\ [%4f]%=[row:%4l/%4L\ \|\ col:%3v]
"sets the color of the status line when you first open vim to green.
highlight statusLine cterm=bold ctermfg=black ctermbg=green
"sets the color to green when you leave insert mode.
au InsertLeave * highlight StatusLine cterm=bold ctermfg=black ctermbg=green
"sets the color to red when you enter insert mode.
au InsertEnter * highlight StatusLine cterm=bold ctermfg=black ctermbg=red

"highlight spaces at the end of lines in blue.
highlight ExtraWhitespace ctermbg=blue
match ExtraWhitespace /\s\+$/
