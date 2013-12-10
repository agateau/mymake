# What is it

A wrapper for make which logs to /tmp/mymake.err and a Vim macro to load the
log output as if compilation was started from Vim, making it possible to use
Vim functions to jump through errors.

It can also make use of `notify-send` if it is installed to notify you at the
end of the build.

# Installation

1. Copy mymake in your PATH.

2. Install the Vim plugin:

    mkdir -p ~/.vim/plugin

    cp mymake.vim ~/.vim/plugin

mymake uses make by default but you can overload it with the MAKEPRG
environment variable.

# Usage

Build with mymake instead of make. If an error occurs, start Vim and use
:MymakeErr to load the errors. You can then navigate with the standard Vim
commands :cprev and :cnext.

## Tip
If you are not familiar with Vim, you may want to add this to your .vimrc:

    map <S-F4> :cprev<RETURN>
    imap <S-F4> <ESC>:cprev<RETURN>i
    map <F4> :cnext<RETURN>
    imap <F4> <ESC>:cnext<RETURN>i

With those you can use F4 to go to the next error and Shift+F4 to go to the
previous error.

# Author

Aurélien Gâteau <agateau@kde.org>
