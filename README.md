## 1. CtrlP (File Search)

Very awesome plugin for Vim. That helps us to search for files very quickly. 

## 2. Syntastic (Syntax Checker)

Another very useful plugin for all programming languages. This plugin will 
help you to keep the syntax of your code correct -- like auto correct in other 
IDE's. This package is a general one so we can expand it very easily by support 
for new languages. By default it supports lot of programming languages. So this 
plugin is a must one for Vim.

## 3. NerdTree (File Browser)

This will display your project directory structure in tree format. It provides 
lot of shortcuts to navigate through the source tree easily. It is an another 
common Plugin required for an IDE. 

Shortcuts - I mapped the following keys in .vimrc file to show and hide the 
Nerdtree when ever required. You can re-map this to your own choice.

To open and close the Nerdtree press CTRL + n. Also you can see other available 
commands for this plugin by typing, ESC + :NERD <tab>

## 4. Tagbar (Class Browser)

This plugin is similar to the NerdTree, but instead of listing project 
directory structure it list the objects and functions names inside a file. Like 
Class browser in other IDE's.

I mapped [leader] l to open tagbar and same combination to close it also.

## 5. Auto Pairs.

This is a simple plugin to auto complete single quote, double quote, 
parentheses. This is a very handy to save few key press.

## Others

This section is to discuss already existing features build in to 
Vim. You can consider me a beginner in this area :). If you are looking
to learn more advanced information about Vim, you don't need to google, you can find
it under its documentation.

To see all documentation type ESC + :help. The documentation is huge, so 
Vim provides search options across all its documentation. To see documentation
about a topic, type ESC + :help 

### Setup Vim from Scratch

All required packages are in this repository. I put all those
settings and plugins in the standard way. So you can extend or remove them whenever
you like..

Before doing this, please take a backup of your current Vim settings from your 
home directory.

We can start the installation by picking my Git Repository,

    $git clone git://github.com/evanfreeman/Dotfiles.git
    $cd Dotfiles

I kept all the required plugins as git submodules. So we will get the new changes 
from the plugin projects by updating the submodule project. While cloning my main
repo, it won't retrieve the submodules or external plugin git projects. But we
have all the settings and paths in my git project itself. So we can easily fetch
the current stable code from all the external projects. To do that, type the
following commands inside your Dotfiles folder.

    $pwd
    /Dotfiles

    $git submodule init
    $git submodule update

Now you have all the files required to get started with Vim, Next thing is to 
link my git files as your vim files. To do that just create soft link of the 
Vim system files and then point it to my git repository files. Here are the steps.

    $cd
    $ln -s Dotfiles/vim-files/vim .vim
    $ln -s Dotfiles/vim-files/vim/vimrc .vimrc

Thats it, now open vim, you can see all the plugins described above are available.

### Some Vim shortcuts

    In normal mode
    ==============

    :23,30m200  -- Move a section of code to another line.

    df, (reverse dF,)   -- Delete all characters till , on the current line.

    I  -- Go to beginning of the line as insert mode.

    $   -- In command mode, go to end of the line.

    gg  -- Go to beginning of the file

    G  -- Go to end of the file.

    CTRL + o, CTRL + i  -- Jumps back and forward, very useful.

    CTRL + h/j/k/l  -- Move the selection to different split windows and
    MinibuferExplorer.

    CTRL + F    -- Page down scroll.

    CTRL + B    -- Page back scroll.

### Summary

All this hard work to setup Vim will be useful to you only when you 
realize the fact that Vim's basic editing features will save you a lot of 
time and increase your productivity. For that you don't require the above 
plugins.

